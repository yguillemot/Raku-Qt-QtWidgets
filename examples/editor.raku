
# A tiny text editor

use Qt::QtWidgets;
use Qt::QtWidgets::QApplication;
use Qt::QtWidgets::QFileDialog;
use Qt::QtWidgets::QHBoxLayout;
use Qt::QtWidgets::QPushButton;
use Qt::QtWidgets::QTextEdit;
use Qt::QtWidgets::QVBoxLayout;
use Qt::QtWidgets::QWidget;


# The text editor widget is a subclass of QTextEdit
class TextEdit is QTextEdit {

    has Str $!fileName = "";

    submethod TWEAK
    { 
        # Initialize parent
        self.QTextEdit::subClass;
    }

    method load is QtSlot
    {
        my Str $fileName = QFileDialog.getOpenFileName(self);
        if $fileName {
            my Str $text = slurp $fileName;
            $!fileName = $fileName;
            self.setPlainText($text);
            self.fileLoaded($fileName);     # Emit signal "fileLoaded" 
        }
    }

    method save is QtSlot
    {
        # If the text has been changes, ask for confirmation
          # QMessageBox is not already implemented : needs to return an enum...
        
        # Set current file name as default file name
        my Str $fileName = QFileDialog.getSaveFileName(self, "", $!fileName);
        if $fileName {
            my $text = self.toPlainText;
            spurt $fileName, $text if $text;
        }
    }
    
    method fileLoaded(Str) is QtSignal { ... }
}

# Objects creation
my $qApp = QApplication.new;
my $textEdit = TextEdit.new;
my $quitButton = QPushButton.new('Quit');
my $loadButton = QPushButton.new('Load');
my $saveButton = QPushButton.new('Save');

# Connections
connect $quitButton, "clicked", $qApp, "quit";
connect $loadButton, "pressed", $textEdit, "load";
connect $saveButton, "pressed", $textEdit, "save";

# Layout
my $buttonLayout = QHBoxLayout.new;
$buttonLayout.addWidget($loadButton);
$buttonLayout.addWidget($saveButton);
$buttonLayout.addWidget($quitButton);

my $layout = QVBoxLayout.new;
$layout.addWidget($textEdit);
$layout.addLayout($buttonLayout);

# main window
my $window = QWidget.new;
$window.setLayout($layout);
$window.setWindowTitle("A tiny text editor");
$window.show;

# Add a connection for writing the file name in the window title
connect $textEdit, "fileLoaded", $window, "setWindowTitle";

# Run the graphical application
my $status = $qApp.exec;
say "Resultat execution = $status";




