
# A tiny text editor

use Qt::QtWidgets;
use Qt::QtWidgets::QAction;
use Qt::QtWidgets::QApplication;
use Qt::QtWidgets::QCloseEvent;
use Qt::QtWidgets::QFileDialog;
use Qt::QtWidgets::QHBoxLayout;
use Qt::QtWidgets::QMainWindow;
use Qt::QtWidgets::QMenu;
use Qt::QtWidgets::QMessageBox;
use Qt::QtWidgets::QPushButton;
use Qt::QtWidgets::QTextEdit;
use Qt::QtWidgets::QVBoxLayout;
use Qt::QtWidgets::QWidget;



# The main window is a QMainWindow showing a text editor widget
# as its central widgets and a "File" menu in its menu bar.
# This QMainWindow is subclassed to add it an event handler which
# hooks the closing of the window.
class MainWindow is QMainWindow
{
    has Str $.fileName is rw = "";
    has QMenu $.fileMenu;
    has Bool $.textModified is rw = False;

    submethod TWEAK { 
        # Initialize parent
        self.QMainWindow::subClass;

        # Create the menus
        my QAction $action;
        $!fileMenu = self.menuBar.addMenu("&File");
        $action = $!fileMenu.addAction("Load");
        connect $action, "triggered", self, "load";
        $action = $!fileMenu.addAction("Save");
        connect $action, "triggered", self, "save";
        $action = $!fileMenu.addAction("Quit");
        connect $action, "triggered", self, "askForQuit";
    }

    method load is QtSignal { ... }

    method save is QtSignal { ... }

    method textHasBeenModified is QtSlot
    {
        $!textModified = True;
    }

    method askForQuit is QtSlot
    {
        my Bool $okToQuit = !$!textModified 
                    || askForConfirmation(self, "OK to quit ?");
        self.quit if $okToQuit;
    }
    
    method quit is QtSignal { ... }

    method closeEvent(QCloseEvent $event)
    {
        my Bool $okToQuit = !$!textModified 
                    || askForConfirmation(self, "OK to quit ?");
        $event.ignore unless $okToQuit;
    }
}


# The text editor widget is a subclass of QTextEdit
class TextEdit is QTextEdit {

    has MainWindow $.main;

    submethod TWEAK { 
        # Initialize parent
        self.QTextEdit::subClass;
        
        # Connection for updating $!main.textModified flag
        connect self, "textChanged", $!main, "textHasBeenModified";
    }

    # Load a new file in the text editor
    method load is QtSlot
    {
        # If the text has been changed, ask for confirmation
        # and return if confirmation is refused
        return if self.main.textModified 
                    && !askForConfirmation(self,
                                  "They will be lostif a" 
                                ~ " new file is loaded");
        
        # Ask the user for a file
        my Str $fileName = QFileDialog.getOpenFileName(self);
        
        # Read the file
        if $fileName {
            my Str $text = slurp $fileName;
            self.setPlainText($text);
            
            # and set up the editor accordingly
            self.main.fileName = $fileName;
            self.main.setWindowTitle($fileName);
            self.main.textModified = False;
        }
    }

    # Save the edited text in a file
    method save is QtSlot
    {
        # Ask the user for a file using the current fileName
        # as a default value
        my Str $fileName =
                QFileDialog.getSaveFileName(self, "",
                                                self.main.fileName);
        
        # Write the file
        if $fileName {
            my $text = self.toPlainText;
            spurt $fileName, $text if $text;

            # and set up the editor accordingly
            self.main.fileName = $fileName;
            self.main.setWindowTitle($fileName);
            self.main.textModified = False;
        }
    }
}


# Display a message box centered over the parent widget
# Return True if user's answer is OK
sub askForConfirmation(QWidget $parent, Str $msg --> Bool)
{
    my $mb = QMessageBox.new($parent);
    $mb.setText("Modifications are not saved.");
    $mb.setInformativeText($msg);
    $mb.setStandardButtons(QMessageBox::Ok +| QMessageBox::Cancel);
    
    my $retVal = $mb.exec;
    return $retVal == QMessageBox::Ok;
}


# Objects creation
my $qApp = QApplication.new;
my $window = MainWindow.new;    # main window
my $textEdit = TextEdit.new(main => $window);

# Layout
$window.setCentralWidget: $textEdit;

# Connect menus
connect $window, "load", $textEdit, "load";
connect $window, "save", $textEdit, "save";
connect $window, "quit", $qApp, "quit";

# Set up a first title and show the main window
$window.setWindowTitle("A tiny text editor");
$window.show;

# Run the graphical application
my $status = $qApp.exec;
say "Returned status = $status";




