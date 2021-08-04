
# A resizable digital clock

use Qt::QtWidgets;
use Qt::QtWidgets::QApplication;
# use Qt::QtWidgets::QFont;
use Qt::QtWidgets::QLabel;
use Qt::QtWidgets::QResizeEvent;


# Initial font size
my constant $PointSizeBase = 50;       # Initial point size
my constant $StretchBase = 100;        # Initial stretch value


# Create our resizable label by subclassing QLabel
class ClockLabel is QLabel {

    has $.text = "";
    
    has $!w0;       # Initial width
    has $!h0;       # Initial height
    
    submethod TWEAK {
        # The QLabel C++ constructor must be called here
        self.QLabel::subClass($!text); 
    }
    
    # This method is called when the widget is resized
    method resizeEvent(QResizeEvent $re) {
        
        if ($re.oldSize.width == -1) && ($re.oldSize.height == -1) {
            # First resize event (when the windows is opened):
            # Memorize the initial size of the label
            $!w0 = $re.size.width;
            $!h0 = $re.size.height;
        } else {
            # Next resize event: compute point size and stretch
            # to have the text fitting the window
            my $w1 = $re.size.width;
            my $h1 = $re.size.height;
            my $p = $PointSizeBase * $h1 / $!h0;
            my $s = $StretchBase * ($w1 / $h1) / ($!w0 / $!h0);
            
            # Then update the font size/stretch
            self.font.setPointSize($p.Int);
            self.font.setStretch($s.Int);
        }
   }
}



# Objects creation

# Create the application object first (the first argument will be
# the window title)
my $qApp = QApplication.new("What time is it ?", @*ARGS);

# Create the label used as the output window and give it the initial font size
my $label = ClockLabel.new(text => "00-00-00");
my $font = $label.font;
$font.setPointSize($PointSizeBase);
$font.setStretch($StretchBase);
$label.setFont($font);
$label.setMargin(10);

$label.show;


# Thread which refreshes the displayed time
start {
    loop {
        sleep 0.2;
        $label.setText(DateTime.new(now).local.hh-mm-ss);
    }
}

# Run the graphical application
$qApp.exec;





