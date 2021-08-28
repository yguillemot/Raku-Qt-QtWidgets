
# A demonstration of various widgets :
#           QSlider, QDial, QCheckBox and QRadioButton

use Qt::QtWidgets;
use Qt::QtWidgets::QApplication;
use Qt::QtWidgets::QCheckBox;
use Qt::QtWidgets::QDial;
use Qt::QtWidgets::QHBoxLayout;
use Qt::QtWidgets::QLabel;
use Qt::QtWidgets::QRadioButton;
use Qt::QtWidgets::QSlider;
use Qt::QtWidgets::QVBoxLayout;
use Qt::QtWidgets::QWidget;
use Qt::QtWidgets::Qt;




# Define a QLabel with a slot "setValue" accepting an Int 
class DisplayInt is QLabel
{
    submethod TWEAK {
        self.QLabel::subClass: "----";
    }
    
    method setValue(Int $i) is QtSlot {
        self.setText: ~$i;
    }
}


# Use a check box for conditionaly connecting a dial or slider to a DisplayInt
class CondConnect is QtObject
{
    has $.input;        # A QAbstracSliders
    has $.command;      # A QCheckBox
    has $.output;       # A DisplayInt
    
    method update(Int $state) is QtSlot {
        if $state != Qt::Unchecked {
            connect $!input, "valueChanged", $!output, "setValue";
            $!output.setValue: $!input.value;   # Show current value
        } else {
            disconnect $!input, "valueChanged", $!output, "setValue";
        }
    }
    
    method TWEAK {
        connect $!command, "stateChanged", self, "update";
        if $!command.isChecked {
            self.update: Qt::Checked;
        }
    }
} 


# Switch: connect only one from N input to one output
# Selection is done with radio button commands
# Related command and input have the same key in %.inputs and %.commands
class Switch is QtObject {
    has %.inputs;       # N QAbstracSliders
    has %.commands;     # N radio buttons (one for each input)
    has $.output;       # One DisplayInt output
    
    has $!connected;    # Key of the currently connected input
    
    method update is QtSlot {
        if $!connected {
            disconnect %!inputs{$!connected}, "valueChanged", $!output, "setValue";
        }
        for %!commands.kv -> $k, $v {
            if $v.isChecked {
                connect %!inputs{$k}, "valueChanged", $!output, "setValue";
                $.output.setValue: %!inputs{$k}.value;
                $!connected = $k;
            }
        }
    }
    
    method start {
        for %!commands.values -> $c {
            connect $c, "clicked", self, "update";
        }
        
        self.update;
    }
}






# Create the application object first
my $qApp = QApplication.new;


###############################################################################
# Part 1 : One slider and two dials
#          Slider and dials are interconnected
#          Three displays show their values 
#          A check box may freeze each display


# Create slider S0 and its associated display and check box
my $s0 = QSlider.new;
my $di0 = DisplayInt.new;
my $cb0 = QCheckBox.new: "S0";

# Connect them
my $cc0 = CondConnect.new: input => $s0, output => $di0, command => $cb0;

# Display : set a font larger than the default one
my $font = $di0.font;
$font.setPointSize: 20;
$di0.setFont: $font;

# Slider S0 : set orientation
$s0.setOrientation: Qt::Vertical;

# Create layout
my $hl0 = QHBoxLayout.new;
$hl0.addWidget: $cb0;
$hl0.addWidget: $di0;
$hl0.setAlignment: $cb0, Qt::AlignRight;
my $vl0 = QVBoxLayout.new;
$vl0.addLayout: $hl0;
$vl0.addWidget: $s0;
$vl0.setAlignment: $s0, Qt::AlignCenter;




# Create dial D1 and its associated display and check box
my $d1 = QDial.new;
my $di1 = DisplayInt.new;
my $cb1 = QCheckBox.new: "D1";

# Connect them
my $cc1 = CondConnect.new: input => $d1, output => $di1, command => $cb1;

# Display : set a font larger than the default one
$di1.setFont: $font;

# Dial D1 : Try to add visible notches 
$d1.setNotchesVisible(True); # This may have no effect depending of the desktop

# Create layout
my $hl1 = QHBoxLayout.new;
$hl1.addWidget: $cb1;
$hl1.addWidget: $di1;
$hl1.setAlignment: $cb1, Qt::AlignRight;
my $vl1 = QVBoxLayout.new;
$vl1.addLayout: $hl1;
$vl1.addWidget: $d1;




# Create dial D2 and its associated display and check box
my $d2 = QDial.new;
my $di2 = DisplayInt.new;
my $cb2 = QCheckBox.new: "D2";

# Check box CB2 is prechecked
$cb2.setChecked(True);

# Connect them
my $cc2 = CondConnect.new: input => $d2, output => $di2, command => $cb2;

# Display : set a font larger than the default one
$di2.setFont: $font;

# Dial D2 : Try to add visible notches 
$d2.setNotchesVisible(True); # This may have no effect depending of the desktop

# Dial D2 : Set wrapping (no space between the start and the end of the scale)
$d2.setWrapping(True);

# Create layout
my $hl2 = QHBoxLayout.new;
$hl2.addWidget: $cb2;
$hl2.addWidget: $di2;
$hl2.setAlignment: $cb2, Qt::AlignRight;
my $vl2 = QVBoxLayout.new;
$vl2.addLayout: $hl2;
$vl2.addWidget: $d2;


# Position horizontally the three groups
my $hlSliDial = QHBoxLayout.new;
$hlSliDial.addLayout: $vl0;
$hlSliDial.addLayout: $vl1;
$hlSliDial.addLayout: $vl2;



# Cross connect slider 0, dial 1 and dial 2
connect $s0, "valueChanged", $d1, "setValue";
connect $d1, "valueChanged", $s0, "setValue";
connect $d1, "valueChanged", $d2, "setValue";
connect $d2, "valueChanged", $d1, "setValue";




###############################################################################
# Part 2 : Three sliders and one display
#          Radio buttons select which slider the display shows


# Create three sliders with various ranges and associated labels

# Create slider 3 and associated labels
my $s3 = QSlider.new: Qt::Horizontal;
$s3.setTickPosition: QSlider::TicksAbove;
$s3.setRange(-100, 100);
my $lm3 = QLabel.new: ~$s3.minimum;
my $lM3 = QLabel.new: ~$s3.maximum;
$lm3.setAlignment: Qt::AlignRight;
$lM3.setAlignment: Qt::AlignLeft;

# Set widgets size
$s3.setMinimumWidth: 150;
$lm3.setMinimumWidth: 50;
$lM3.setMinimumWidth: 50;

# Create layout
my $hl3 = QHBoxLayout.new;
$hl3.addWidget: $lm3;
$hl3.addWidget: $s3;
$hl3.addWidget: $lM3;

# Create slider 4 and associated labels
my $s4 = QSlider.new: Qt::Horizontal;
$s4.setTickPosition: QSlider::TicksBothSides;
$s4.setMinimum(-20);
$s4.setMaximum(120);
my $lm4 = QLabel.new: ~$s4.minimum;
my $lM4 = QLabel.new: ~$s4.maximum;

# Set widgets size
$s4.setMinimumWidth: 150;
$lm4.setMinimumWidth: 50;
$lM4.setMinimumWidth: 50;
$lm4.setAlignment: Qt::AlignRight;
$lM4.setAlignment: Qt::AlignLeft;

# Create layout
my $hl4 = QHBoxLayout.new;
$hl4.addWidget: $lm4;
$hl4.addWidget: $s4;
$hl4.addWidget: $lM4;

# Create slider 5 and associated labels
my $s5 = QSlider.new: Qt::Horizontal;
$s5.setTickPosition: QSlider::TicksBelow;
$s5.setRange(0, 100);
$s5.setInvertedAppearance(True);
my $lm5 = QLabel.new: ~$s5.maximum;     # Appearance is inverted : min and
my $lM5 = QLabel.new: ~$s5.minimum;     # max positions are exchanged
$lm5.setAlignment: Qt::AlignRight;
$lM5.setAlignment: Qt::AlignLeft;

# Set widgets size
$s5.setMinimumWidth: 150;
$lm5.setMinimumWidth: 50;
$lM5.setMinimumWidth: 50;

# Create layout
my $hl5 = QHBoxLayout.new;
$hl5.addWidget: $lm5;
$hl5.addWidget: $s5;
$hl5.addWidget: $lM5;

# Create radio buttons (the command of the switch)
my $r3 = QRadioButton.new: "A";
my $r4 = QRadioButton.new: "B";
my $r5 = QRadioButton.new: "C";

# Add each radio button to the layout of it's related slider
$hl3.addWidget: $r3;
$hl4.addWidget: $r4;
$hl5.addWidget: $r5;

# Create a display (connected at the output of the switch)
my $di3 = DisplayInt.new;
my $font3 = $di3.font;
$font3.setPointSize: 40;
$di3.setFont: $font3; 
$di3.setMinimumWidth: 140;
$di3.setAlignment: Qt::AlignRight;

# Position vertically the three sliders
my $vlSliders = QVBoxLayout.new;
$vlSliders.addLayout: $hl3;
$vlSliders.addLayout: $hl4;
$vlSliders.addLayout: $hl5;

# Then place the display
my $hlSwitch = QHBoxLayout.new;
$hlSwitch.addLayout: $vlSliders;
$hlSwitch.addWidget: $di3;



# Set the inital position of radio buttons
$r3.click;

# Create a switch and use it to connect sliders to display
my $switch = Switch.new: output => $di3;
$switch.inputs<1> = $s3;
$switch.commands<1> = $r3;
$switch.inputs<2> = $s4;
$switch.commands<2> = $r4;
$switch.inputs<3> = $s5;
$switch.commands<3> = $r5;

# Initialize connections
$switch.start;



###############################################################################
# Create a main window gathering parts 1 and 2 
# then run the application

my $mainWindow = QWidget.new;
my $mainLayout = QVBoxLayout.new;
$mainWindow.setLayout: $mainLayout;
$mainLayout.addLayout: $hlSliDial;      # Part 1
$mainLayout.addLayout: $hlSwitch;       # Part 2

# Make visible all the widgets
$mainWindow.show;

# Run the graphical application
$qApp.exec;





