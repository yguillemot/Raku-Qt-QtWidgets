
use Qt::QtWidgets;
use Qt::QtWidgets::QApplication;
use Qt::QtWidgets::QDialog;
use Qt::QtWidgets::QDialogButtonBox;
use Qt::QtWidgets::QLabel;
use Qt::QtWidgets::QLineEdit;
use Qt::QtWidgets::QPushButton;
use Qt::QtWidgets::QTextEdit;
use Qt::QtWidgets::QVBoxLayout;
use Qt::QtWidgets::QWidget;


class GetWord is QDialog
{
    has QWidget $.parent;
    has $.message = "???";
    has $!label;
    has $.lineEdit;
    has $!buttonBox;
    has $!layout;

    submethod TWEAK {
        self.QDialog::subClass($!parent);

        $!label = QLabel.new($!message);
        $!lineEdit = QLineEdit.new;
#         say 'QDialogButtonBox::OK : ', QDialogButtonBox::Ok.value;
#         say 'QDialogButtonBox::Cancel : ', QDialogButtonBox::Cancel.value;
#         say 'Combinaison : ', QDialogButtonBox::Ok +| QDialogButtonBox::Cancel;
        $!buttonBox = QDialogButtonBox.new(    QDialogButtonBox::Ok
                                            +| QDialogButtonBox::Cancel);
        $!layout = QVBoxLayout.new;
        $!layout.addWidget($!label);
        $!layout.addWidget($!lineEdit);
        $!layout.addWidget($!buttonBox);
        self.setLayout: $!layout;

        connect $!buttonBox, "accepted", self, "accept";
        connect $!buttonBox, "rejected", self, "reject";
    }

    method result( --> Str) { $!lineEdit.text }
}


# The main window is a QWidget gathering a push button launching the QDialog
# and a QTextEdit use to display the results.


# A QtObject class only here to catch the button pressed signal
class MainWindow is QWidget
{

    has QPushButton $!button;
    has QTextEdit $!output;
    has QVBoxLayout $!layout;


    submethod TWEAK {

        # Initialize the QWidget
        self.QWidget::subClass;

        # Create the objects
        $!button .= new("Press to show a dialog");
        $!output .= new;

        # Set the layout
        $!layout .= new;
        $!layout.addWidget($!button);
        $!layout.addWidget($!output);
        self.setLayout($!layout);

        # Connect the button to the working method
        connect $!button, "pressed", self, "dialog";
    }

    method dialog is QtSlot
    {
        # Create the dialog
        my $dialog = GetWord.new(parent => self,
                                 message => "Enter some word(s) here");

        # Run the dialog
        my $status = $dialog.exec;

        # Display the result
        $!output.append: "\nDialog status = $status";
        $!output.append: "Read value = \"{$dialog.result}\"" if $status;
    }
}


# Create the application and the main window
my $qApp = QApplication.new;
my $window = MainWindow.new;
$window.show;


# Run the graphical application
my $status = $qApp.exec;
say "Returned status = $status";




