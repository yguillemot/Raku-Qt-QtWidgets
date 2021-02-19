 
# Test QVBoxLayout and QHBoxLayout using QLabel

use Test;

plan 12;

use Qt::QtWidgets;

my $count = 0;

class Tempo is QtObject {
    method finish is QtSignal { ... }
}

class TLabel is QLabel {
    has Str $.text;
    has QColor $.color;
    has Int $.x;
    has Int $.y;
    
    submethod TWEAK {
        self.QLabel::subClass($!text);
        self.setFixedWidth(40);
        self.setFixedHeight(30);
    }
    
    method paintEvent(QPaintEvent $ev)
    {
        my $painter = QPainter.new();
        $painter.begin(self);
            my $brush = QBrush.new(self.color, Qt::SolidPattern);
            $painter.setBrush($brush);
            $painter.drawRect(0, 0, $ev.rect.width, $ev.rect.height);
        $painter.end();
    }
}


my $qApp = QApplication.new;


# Trying to have labels positionned as here:
#
#          X=0   X=1   X=2
#
# Y=0    [ l0 ]
# Y=1          [ l1 ]
# Y=2                [ l2 ]
# Y=3    [ l3 ][ l4 ][ l5 ]


# Create 6 colored labels
# x & y are the positions planned
my @l = ();
@l.push(TLabel.new(text => "A", x => 0, y => 0, color => QColor.new(0, 0, 255)));
@l.push(TLabel.new(text => "B", x => 1, y => 1, color => QColor.new(0, 255, 0)));
@l.push(TLabel.new(text => "C", x => 2, y => 2, color => QColor.new(255, 0, 0)));
@l.push(TLabel.new(text => "D", x => 0, y => 3, color => QColor.new(0, 255, 255)));
@l.push(TLabel.new(text => "E", x => 1, y => 3, color => QColor.new(255, 0, 255)));
@l.push(TLabel.new(text => "F", x => 2, y => 3, color => QColor.new(255, 255, 0)));

# Center text
# @l>>.setAlignment(Qt::AlignCenter);

my $hl = QHBoxLayout.new;
my $vl = QVBoxLayout.new;
my $w = QWidget.new;

# Three labels on the last line
$hl.addWidget(@l[3]);
$hl.addWidget(@l[4]);
$hl.addWidget(@l[5]);

# One label with alignment on each of the three first lines
$vl.addWidget(@l[0]);
$vl.setAlignment(@l[0], Qt::AlignLeft);
$vl.addWidget(@l[1]);
$vl.setAlignment(@l[1], Qt::AlignCenter);
$vl.addWidget(@l[2]);
$vl.setAlignment(@l[2], Qt::AlignRight);
$vl.addLayout($hl);

$w.setLayout($vl);
$w.show;


# Render the widget on an image to grab pixels colors
my $image = QImage.new($w.width, $w.height, QImage::Format_ARGB32);
$w.render($image);

# Look for main widget and labels sizes 
my $dx = $w.width / 6;
my $dy = $w.height / 8;

# say "W = {$w.width}   H = {$w.height}";
# say "dx = $dx   dy = $dy";

# Read color near the center of each label
for @l Z (0..*) -> ($l, $i) {
    my $x = $dx + 2 * $l.x * $dx;
    my $y = $dy + 2 * $l.y * $dy;
    
    my QColor $wc = $l.color;                             # Wanted color
    my QColor $rc = $image.pixelColor($x.Int, $y.Int);    # Read color
    
    # Should be 0 when same color
    my $deltaColor =   ($wc.red - $rc.red)**2
                     + ($wc.green - $rc.green)**2
                     + ($wc.blue - $rc.blue)**2;
    
     ok $deltaColor == 0, "Position label $i";
}

# Read color where no label should be
for ((1,0), (2,0), (0,1), (2,1), (0,2), (1,2)) -> ($i, $j) {
    my $x = $dx + 2 * $i * $dx;
    my $y = $dy + 2 * $j * $dy;
    my QColor $rc = $image.pixelColor($x.Int, $y.Int);
    
    # Read color should not be one used by a label
    ok    $rc.red != 0 && $rc.red != 255
       && $rc.green != 0 && $rc.green != 255
       && $rc.blue != 0 && $rc.blue != 255,      "No label in ($i, $j)";
}
    
# my $status = $qApp.exec;

# done-testing;  # optional with 'plan'
