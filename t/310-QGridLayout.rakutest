 
# Test QGridLayout using QLabel

use Test;

use Qt::QtWidgets;
use Qt::QtWidgets::QApplication;
use Qt::QtWidgets::QBrush;
use Qt::QtWidgets::QColor;
use Qt::QtWidgets::QGridLayout;
use Qt::QtWidgets::QHBoxLayout;
use Qt::QtWidgets::QImage;
use Qt::QtWidgets::QLabel;
use Qt::QtWidgets::QPaintEvent;
use Qt::QtWidgets::QPainter;
use Qt::QtWidgets::QVBoxLayout;
use Qt::QtWidgets::QWidget;
use Qt::QtWidgets::Qt;




my $count = 0;

class Tempo is QtObject {
    method finish is QtSignal { ... }
}

# Colored block
class TLabel is QLabel {
    has Str $.text;
    has QColor $.color;
    
    submethod TWEAK {
        self.QLabel::subClass($!text);
        self.setMinimumWidth(40);
        self.setMinimumHeight(30);
    }
    
    method paintEvent(QPaintEvent $ev)
    {
        my $painter = QPainter.new();
        $painter.begin(self);
            my $brush = QBrush.new(self.color, Qt::SolidPattern);
            $painter.setBrush($brush);
            $painter.drawRect(0, 0, $ev.rect.width, $ev.rect.height);
            $painter.drawText($ev.rect, Qt::AlignLeft +| Qt::AlignTop, self.text);
        $painter.end();
    }
}


my $qApp = QApplication.new;


# Trying to have labels positionned as here:
#
#          X=0  X=1  X=2  X=3
#
#         ---- ----      ----
# Y=0    | l0 | l1 |    |    |
#         ---------     |    |
# Y=1    |   l2    |    | l3 |
#         --------------|    |
# Y=2         |         |    |
#         ----|   l4    |----
# Y=3    | l5 |         |
#         ---- ---------


# Create 6 colored labels
my @l = ();
@l.push(TLabel.new(text => "l0", color => QColor.new(0, 0, 255)));
@l.push(TLabel.new(text => "l1", color => QColor.new(0, 255, 0)));
@l.push(TLabel.new(text => "l2", color => QColor.new(255, 0, 0)));
@l.push(TLabel.new(text => "l3", color => QColor.new(0, 255, 255)));
@l.push(TLabel.new(text => "l4", color => QColor.new(255, 0, 255)));
@l.push(TLabel.new(text => "l5", color => QColor.new(255, 255, 0)));


# Create a grid layout
my $gl = QGridLayout.new;


# Do some basic tests first

$gl.setHorizontalSpacing(5);
$gl.setVerticalSpacing(12);

ok $gl.horizontalSpacing == 5, "Set a first horizontalSpacing";
ok $gl.verticalSpacing == 12, "Set a first verticalSpacing";
ok $gl.spacing == -1, "Vertical and horizontal spacing differ";

$gl.setSpacing(10);
ok $gl.horizontalSpacing == 10,
                            "Set a first horizontalSpacing";
ok $gl.verticalSpacing == 10, "Set a first verticalSpacing";
ok $gl.spacing == 10, "Same vertical and horizontal spacing";


# Do the functional test now

# with a minimal size for colums and lines (otherwhise some lines or columns
# may shrink) (in this example it would be line Y=2 and colum X=2)
for (0..3) { $gl.setColumnMinimumWidth($_, 40); }
for (0..3) { $gl.setRowMinimumHeight($_, 30); }

# Place the labels where planned
$gl.addWidget(@l[0], 0, 0);
$gl.addWidget(@l[1], 0, 1);
$gl.addWidget(@l[2], 1, 0, 1, 2);
$gl.addWidget(@l[3], 0, 3, 3, 1);
$gl.addWidget(@l[4], 2, 1, 2, 2);
$gl.addWidget(@l[5], 3, 0);

# Insert the grid in a widget, then show it
my $w = QWidget.new;
$w.setLayout($gl);
$w.show;


# Render the widget on an image to grab pixels colors
my $image = QImage.new($w.width, $w.height, QImage::Format_ARGB32);
$w.render($image);

# Compute grid boxes half size from main widget size 
my $dx = $w.width / 8;
my $dy = $w.height / 8;


# Compare the color at given coordinates ($l, $c)with the color of the
# label @l[$iLabel].
sub colorTest(Int $l, Int $c, Int $iLabel) {
    my $x = $dx + 2 * $l * $dx;
    my $y = $dy + 2 * $c * $dy;

    my QColor $wc = @l[$iLabel].color;                       # Wanted color
    my QColor $rc = $image.pixelColor($x.Int, $y.Int);       # Read color
    
    # Should be 0 when same color
    my $deltaColor =   ($wc.red - $rc.red)**2
                     + ($wc.green - $rc.green)**2
                     + ($wc.blue - $rc.blue)**2;
                     
     ok $deltaColor == 0, "Label $iLabel is in \($x, $y)";
}

#        column line label
#        ------ ---- -----
colorTest  0,     0,   0;
colorTest  1,     0,   1;
colorTest  0,     1,   2;
colorTest  1,     1,   2;
colorTest  3,     0,   3;
colorTest  3,     1,   3;
colorTest  3,     2,   3;
colorTest  1,     2,   4;
colorTest  2,     2,   4;
colorTest  1,     3,   4;
colorTest  2,     3,   4;
colorTest  0,     3,   5;


# The color at given coordinates ($l, $c) should be the background color.
# Only labels use value of 0 and 255 for color components.
sub backgroundTest(Int $l, Int $c) {
    my $x = $dx + 2 * $l * $dx;
    my $y = $dy + 2 * $c * $dy;

    my QColor $rc = $image.pixelColor($x.Int, $y.Int);    # Read color
    
    ok    $rc.red != 0 && $rc.red != 255
       && $rc.green != 0 && $rc.green != 255
       && $rc.blue != 0 && $rc.blue != 255,   "There is no label in \($x, $y)";
}

#             column line
#             ------ ----
backgroundTest  2,     0;
backgroundTest  2,     1;
backgroundTest  0,     2;
backgroundTest  3,     3;

# Uncomment the following line to see what the test does
# my $status = $qApp.exec;

done-testing;
