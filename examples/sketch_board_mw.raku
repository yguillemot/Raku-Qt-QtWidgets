
# A tiny graphic editor inside a QMainWindow widget


use Qt::QtWidgets;
use Qt::QtWidgets::QAction;
use Qt::QtWidgets::QActionGroup;
use Qt::QtWidgets::QApplication;
use Qt::QtWidgets::QBrush;
use Qt::QtWidgets::QColor;
use Qt::QtWidgets::QFileDialog;
use Qt::QtWidgets::QLabel;
use Qt::QtWidgets::QMainWindow;
use Qt::QtWidgets::QMenu;
use Qt::QtWidgets::QMouseEvent;
use Qt::QtWidgets::QPaintEvent;
use Qt::QtWidgets::QPainter;
use Qt::QtWidgets::QPen;
use Qt::QtWidgets::QPushButton;
use Qt::QtWidgets::QWidget;
use Qt::QtWidgets::Qt;





# Forward declarations
class MainWindow { ... }
class DrawPlace { ... }


# Create the application object first
my $qApp = QApplication.new;

# Create the draw board and set its initial size
my $drawPlace = DrawPlace.new;
$drawPlace.setMinimumSize(600, 400);

# Create the main window
my $window = MainWindow.new;
$window.setWindowTitle: "A drawing board in q QMainWindow";    # Add a title
$window.setCentralWidget: $drawPlace;            # Add the main widget
$window.show;                                    # Make the window visible

# Set the connections
connect $window, "quit", $qApp, "quit";
connect $window, "load", $drawPlace, "load";
connect $window, "save", $drawPlace, "save";
connect $window, "clear", $drawPlace, "clear";
connect $window, "thin", $drawPlace, "thinPen";
connect $window, "middle", $drawPlace, "middlePen";
connect $window, "thick", $drawPlace, "thickPen";
connect $window, "red", $drawPlace, "redPen";
connect $window, "blue", $drawPlace, "bluePen";
connect $window, "green", $drawPlace, "greenPen";
connect $drawPlace, "outPenPos", $window, "showStatusBarText";

# Set pen initial values
$drawPlace.redPen;
$drawPlace.thinPen;

# Set menu choices accordingly
$window.redAction.setChecked(True);
$window.thinAction.setChecked(True);

# Run the graphical application
my $status = $qApp.exec;
say "Execution status = $status";

### End of the main program
################################################################################


# The main window is a QMainWindow showing a DrawPlace
# as its central widgets and menus in its menu bar.
# This QMainWindow is subclassed to add it an event handler which
# hooks the closing of the window.

# The main window is a QMainWindow showing a text editor widget
# as its central widgets and a "File" menu in its menu bar.
class MainWindow is QMainWindow
{
    has Str $.fileName is rw = "";

    # Menus related properties
    has QMenu $.fileMenu;
        has QAction $.loadAction;
        has QAction $.saveAction;
        has QAction $.quitAction;
    has QMenu $.penMenu;
        has QActionGroup $.sizeGroup;
            has QAction $.thinAction;
            has QAction $.middleAction;
            has QAction $.thickAction;
        has QActionGroup $.colorGroup;
            has QAction $.redAction;
            has QAction $.greenAction;
            has QAction $.blueAction;
    has QAction $.clearAction;

    # Widget displaying a message inside the status bar
    has QLabel $.message;

    submethod TWEAK {
        # Initialize parent
        self.QMainWindow::subClass;

        # Create the "File" menu with three entries
        $!fileMenu = self.menuBar.addMenu("&File");
        $!loadAction = $!fileMenu.addAction("Load");
        $!saveAction = $!fileMenu.addAction("Save");
        $!quitAction = $!fileMenu.addAction("Quit");

        # Connect menu entries to output signals
        connect $!quitAction, "triggered", self, "quit";
        connect $!loadAction, "triggered", self, "load";
        connect $!saveAction, "triggered", self, "save";


        # Create the "Pen" menu with two sections of three entries
        $!penMenu = self.menuBar.addMenu("Pen");
        $!penMenu.addSection("Pen size");
        $!thinAction = $!penMenu.addAction("Thin");
        $!middleAction = $!penMenu.addAction("Middle");
        $!thickAction = $!penMenu.addAction("Thick");
        $!penMenu.addSeparator;
        $!penMenu.addSection("Pen color");
        $!redAction = $!penMenu.addAction("Red");
        $!greenAction = $!penMenu.addAction("Green");
        $!blueAction = $!penMenu.addAction("Blue");

        # Group the three "Pen size" menu entries
        $!sizeGroup = QActionGroup.new($!penMenu);
        $!sizeGroup.addAction($!thinAction);
        $!sizeGroup.addAction($!middleAction);
        $!sizeGroup.addAction($!thickAction);

        # Group the three "Pen color" menu entries
        $!colorGroup = QActionGroup.new($!penMenu);
        $!colorGroup.addAction($!redAction);
        $!colorGroup.addAction($!greenAction);
        $!colorGroup.addAction($!blueAction);

        # Grouped actions are checkable
        $!thinAction.setCheckable(True);
        $!middleAction.setCheckable(True);
        $!thickAction.setCheckable(True);
        $!redAction.setCheckable(True);
        $!greenAction.setCheckable(True);
        $!blueAction.setCheckable(True);

        # Connect menu entries to output signals
        connect $!thinAction, "triggered", self, "thin";
        connect $!middleAction, "triggered", self, "middle";
        connect $!thickAction, "triggered", self, "thick";
        connect $!redAction, "triggered", self, "red";
        connect $!greenAction, "triggered", self, "green";
        connect $!blueAction, "triggered", self, "blue";


        # Create a "Clear" entry directly on the menu bar
        $!clearAction = self.menuBar.addAction("Clear");

        # And connect it
        connect $!clearAction, "triggered", self, "clear";


        # Create a label displaying text on the status bar
        $!message = QLabel.new;
        self.statusBar.addPermanentWidget: $!message;
    }

    # Signals relaying menu actions towards other classes
    method load is QtSignal { ... }
    method save is QtSignal { ... }
    method quit is QtSignal { ... }
    method thin is QtSignal { ... }
    method middle is QtSignal { ... }
    method thick is QtSignal { ... }
    method red is QtSignal { ... }
    method green is QtSignal { ... }
    method blue is QtSignal { ... }
    method clear is QtSignal { ... }


    method showStatusBarText(Str $txt) is QtSlot {
        $!message.setText: $txt;
    }

}


# Subclass a QWidget to create the drawing board
class DrawPlace is QWidget {

    has $!redColor = QColor.new(Qt::red);
    has $!blueColor = QColor.new(Qt::blue);
    has $!greenColor = QColor.new(Qt::green);

    has Bool $!penDown;
    has @!lines;      # List of all lists of linked points
    has @!lastLine;    # List of last linked points
    has $!width = 2;
    has $!color = $!redColor;      # Current pen color

    submethod BUILD {
        # Pass arguments to the constructor of the parent Qt object
        self.QWidget::subClass((QWidget), Qt::WindowFlags(Qt::Widget));

        # Init
        $!penDown = False;
        @!lines = ();
        @!lastLine = ();

        # Get mouseMoveEvent whatever the mouse buttons positions are
        self.setMouseTracking: True;
    }

    # In the following methods, ($ev.x, $ev.y) are the
    # coordinates of the mouse pointer

    method mouseMoveEvent(QMouseEvent $ev)
    {
        my Int $x = $ev.x;
        my Int $y = $ev.y;

        my Str $penCoords = "X = $x, Y = $y";
        my Str $penPos;

        if $!penDown {
            # Note the last mouse move (if the pen is down)
            @!lastLine.push([$x, $y]);

            # Ask to paint (will call paintEvent)
            self.update;

            $penPos = "down";
        } else {
            $penPos = "up";
        }

        self.outPenPos: "$penCoords      Pen $penPos";
    }

    method mousePressEvent(QMouseEvent $ev)
    {
        # Begin to record a new line
        $!penDown = True;
        @!lastLine = ();
        @!lastLine.push([$ev.x, $ev.y]);

        # Ask to paint (will call paintEvent)
        self.update;
    }

    method mouseReleaseEvent(QMouseEvent $ev)
    {
        # Finish the last line and save it with the others
        $!penDown = False;
        @!lastLine.push([$ev.x, $ev.y]);
        my @l = @!lastLine;
        @!lines.push([$!color, $!width, @l]);

        # Ask to paint (will call paintEvent)
        self.update;
    }

    method paintEvent(QPaintEvent $ev)
    {
        # Position and size of the rectangle were drawing is possible
        my $rect = $ev.rect;
        my $x = $rect.x;
        my $y = $rect.y;
        my $w = $rect.width;
        my $h = $rect.height;

        # Create a painter and begin to draw
        my $painter = QPainter.new();
        $painter.begin(self);

        # Create a pen with a color and a size
        my $fgc = QColor.new(Qt::blue);
        my $pen = QPen.new($fgc);
        $pen.setWidth(2);

        # Create a brush with a color and a pattern
        my $bgc = QColor.new(Qt::yellow);
        my $brush = QBrush.new($bgc, Qt::SolidPattern);

        # Draw a border with the pen and a background with the brush
        $painter.setPen($pen);
        $painter.setBrush($brush);
        $painter.drawRect($x + 2, $y + 2, $w - 4, $h - 4);

        # Remove the brush
        $brush.setStyle(Qt::NoBrush);
        $painter.setBrush($brush);

        # Select pen with current color and size
        $pen.setColor($!color);
        $pen.setWidth($!width);
        $painter.setPen($pen);

        # Draw the current line
        my Bool $start = True;
        my ($x1, $y1, $x2, $y2);
        for @!lastLine -> @p {
            if $start {
                ($x1, $y1) = @p;
                $start = False;
            } else {
                ($x2, $y2) = @p;
                $painter.drawLine($x1, $y1, $x2, $y2);
                ($x1, $y1) = ($x2, $y2);
            }
        }

        # Draw the others lines with the recorded colors and sizes
        for @!lines -> ($c, $w, @line) {
            $pen.setColor($c);
            $pen.setWidth($w);
            $painter.setPen($pen);  # Needed !
            my Bool $start = True;
            my ($x1, $y1, $x2, $y2);
            for @line -> @p {
                if $start {
                    ($x1, $y1) = @p;
                    $start = False;
                } else {
                    ($x2, $y2) = @p;
                    $painter.drawLine($x1, $y1, $x2, $y2);
                    ($x1, $y1) = ($x2, $y2);
                }
            }
        }

        # Stop the painter
        $painter.end();
    }

    method outPenPos(Str $penPos) is QtSignal { ... }

    method clear is QtSlot
    {
        # Remove all data
        @!lastLine = ();
        @!lines = ();

        # Ask to paint (will call paintEvent)
        self.update;
    }

    method load is QtSlot
    {
        # Look for a file
        my $fileName = QFileDialog.getOpenFileName(
                self, "Load a file", "", "sketch_board files ( *.skbo )");

        # Then read the file and use its content as the current graphics
        if ?$fileName && $fileName !~~ "" {
            self.unserialize(slurp $fileName);
        }
    }

    method save is QtSlot
    {
        # Look for a file
        my $fileName = QFileDialog.getSaveFileName(
                self, "Save in a file",
                "", "sketch_board files ( *.skbo )");

        # Then serialize the current graphics and copy it into this file
        if ?$fileName && $fileName !~~ "" {
            spurt $fileName, self.serialize;
        }
    }

    # Save the current graphics in a string
    method serialize( --> Str )
    {
        # Replace the QColor object with an integer triplet
        my @slines;
        for @!lines -> ($color, $size, $line) {
            my @col = $color.red, $color.green, $color.blue;
            @slines.push([@col, $size, $line]);
        }

        # Then serialize into a string
        return @slines.raku;
    }

    # Restore the current graphics from a string
    method unserialize(Str $input)
    {
        # Unserialize
        my @slines = $input.EVAL;

        # Recreate QColor objects
        my @newLines;
        for @slines -> ($col, $size, $line) {
            my $color = QColor.new(|$col);
            @newLines.push([$color, $size, $line]);
        }

        # Replace current drawing with restored data
        @!lastLine = ();
        @!lines = @newLines;

        # Repaint with the new data
        self.update;
    }


    # Set current pen size

    method thinPen is QtSlot
    {
        $!width = 2;
    }

    method middlePen is QtSlot
    {
        $!width = 4;
    }

    method thickPen is QtSlot
    {
        $!width = 8;
    }


    # Set current pen color

    method redPen is QtSlot
    {
        $!color = $!redColor;
    }

    method greenPen is QtSlot
    {
        $!color = $!greenColor;
    }

    method bluePen is QtSlot
    {
        $!color = $!blueColor;
    }

}      # End of the DrawPlace class








