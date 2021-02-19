
# A second degree equation solver

use Qt::QtWidgets;


# Objects creation

# Create the application object first
my $qApp = QApplication.new;


# Create labels end editable fields

my $descriptionLabel = QLabel.new(
    "Solve the equation  A * x**2 + B * x + C = 0");
$descriptionLabel.setMargin(20);

my $aLabel = QLabel.new(" A = ");
my $bLabel = QLabel.new(" B = ");
my $cLabel = QLabel.new(" C = ");

my $aValue = QLineEdit.new;
my $bValue = QLineEdit.new;
my $cValue = QLineEdit.new;

my $spacer1 = QLabel.new("");
my $spacer2 = QLabel.new("");

my $result = QLabel.new("");


# Create button

my $goButton = QPushButton.new("Compute");


# Add some tooltips
$aValue.setToolTip("Enter here the value of the A coefficient");
$bValue.setToolTip("Enter here the value of the B coefficient");
$cValue.setToolTip("Enter here the value of the C coefficient");
$goButton.setToolTip("Press this button to compute the roots");


# Define the layout

# A field layout
my $aLayout = QHBoxLayout.new;
$aLayout.addWidget($aLabel);
$aLayout.addWidget($aValue);

# B field layout
my $bLayout = QHBoxLayout.new;
$bLayout.addWidget($bLabel);
$bLayout.addWidget($bValue);

# C field layout
my $cLayout = QHBoxLayout.new;
$cLayout.addWidget($cLabel);
$cLayout.addWidget($cValue);

# Group of the three input fields
my $coeffsLayout = QVBoxLayout.new;
$coeffsLayout.addLayout($aLayout);
$coeffsLayout.addLayout($bLayout);
$coeffsLayout.addLayout($cLayout);

# The three input fields and the compute button
my $processLayout = QHBoxLayout.new;
$processLayout.addLayout($coeffsLayout);
$processLayout.addWidget($goButton);

# Global layout
my $layout = QVBoxLayout.new;
$layout.addWidget($descriptionLabel);
$layout.addWidget($spacer1);
$layout.addLayout($processLayout);
$layout.addWidget($spacer2);
$layout.addWidget($result);

# This class is only used to contain the QtSlot the GUI calls
class Solver is QtObject {

    method work is QtSlot {

        # Convert fields from Str to Num
        my $a = numValue $aValue.text;
        my $b = numValue $bValue.text;
        my $c = numValue $cValue.text;

        # Do fields contain valid numerical values ?
        my $letter = "";
        $letter = 'C' if $c ~~ NaN;
        $letter = 'B' if $b ~~ NaN;
        $letter = 'A' if $a ~~ NaN;
        if $letter !~~ '' {
            $result.setText("$letter is not a numeric value");
            return;
        }

        if $a ~~ 0 {
            if $b ~~ 0 {
                $result.setText(
                    "This is not an equation"
                );
                return;
            } else {
                $result.setText(
                    "First degree equation\n" ~
                    "One root : X = " ~ $c/$b);
                return;
            }
        }

        my Num $delta = $b * $b - 4 * $a * $c;
        if $delta < 0 {
            my $x1 = (-$b - i * sqrt(-$delta)) / 2 / $a;
            my $x2 = (-$b + i * sqrt(-$delta)) / 2 / $a;
            $result.setText(
                "Two complex roots :\n" ~
                "X1 = $x1\n" ~
                "X2 = $x2");
        } else {
            my $x1 = (-$b - sqrt($delta)) / 2 / $a;
            my $x2 = (-$b + sqrt($delta)) / 2 / $a;
            $result.setText(
                "Two real roots :\n" ~
                "X1 = $x1\n" ~
                "X2 = $x2");
        }
    }
}


my $solver = Solver.new;

# Set connections
connect $goButton, "pressed", $solver, "work";
connect $aValue, "returnPressed", $solver, "work";
connect $bValue, "returnPressed", $solver, "work";
connect $cValue, "returnPressed", $solver, "work";

# main window
my $window = QWidget.new;
$window.setLayout($layout);
$window.setWindowTitle("2nd degree equation solver");
$window.show;

# Run the graphical application
my $status = $qApp.exec;
say "App. execution status = $status";


# Conversion from Str to Num
#
# BUG : For some reason, this sub doesn't correctly work here :
#            numValue("2.421")   --> 2.421  OK
#            numValue("2e1")     --> 20     OK
#        but numValue("2.421e1") --> 2      Should be 24.21
#
#       Called from outside a RaQt callback it works fine.
#       I did not succeed to reproduce this problem in a simpler context.
#
sub numValue(Str $txt --> Num)
{
    # print "'$txt' -> ";
    if $txt.Numeric !~~ Failure {
        # say $txt.Num;
        return $txt.Num;
    } else {
        # say 'NaN';
        return NaN;
    }
}


