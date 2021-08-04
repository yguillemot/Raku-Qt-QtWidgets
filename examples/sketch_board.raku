
# A tiny graphic editor


use Qt::QtWidgets;
use Qt::QtWidgets::QAction;
use Qt::QtWidgets::QApplication;
use Qt::QtWidgets::QBrush;
use Qt::QtWidgets::QColor;
use Qt::QtWidgets::QFileDialog;
use Qt::QtWidgets::QHBoxLayout;
use Qt::QtWidgets::QMenu;
use Qt::QtWidgets::QMouseEvent;
use Qt::QtWidgets::QPaintEvent;
use Qt::QtWidgets::QPainter;
use Qt::QtWidgets::QPen;
use Qt::QtWidgets::QPushButton;
use Qt::QtWidgets::QVBoxLayout;
use Qt::QtWidgets::QWidget;
use Qt::QtWidgets::Qt;

# Forward declaration of the drawing widget
class DrawPlace { ... }


# Objects creation

# Create the application object first
my $qApp = QApplication.new;

# Create buttons
my $loadButton = QPushButton.new('Load');
my $saveButton = QPushButton.new('Save');
my $clearButton = QPushButton.new('Clear');
my $widthButton = QPushButton.new('Pen size');
my $colorButton = QPushButton.new('Pen color');
my $quitButton = QPushButton.new('Quit');

# Setup some tooltips
$loadButton.setToolTip("Use this button\nto load a graph\nfrom a file");
$saveButton.setToolTip("Use this button\nto save the graph\nto a file");
$clearButton.setToolTip("Use this button\nto completely\nclear the screen");
$widthButton.setToolTip("Use this button to select the size of the pen");
$colorButton.setToolTip("Use this button to select the color of the pen");


# Create popup menus

my QMenu $penSizeMenu = QMenu.new("Pen size", (QMenu));
my QAction $thin = $penSizeMenu.addAction("thin");
my QAction $middle = $penSizeMenu.addAction("middle");
my QAction $thick = $penSizeMenu.addAction("thick");

my QMenu $penColorMenu = QMenu.new("Pen color", (QMenu));
my QAction $red = $penColorMenu.addAction("red");
my QAction $blue = $penColorMenu.addAction("blue");
my QAction $green = $penColorMenu.addAction("green");

# Connect menus to buttons
$widthButton.setMenu($penSizeMenu);
$colorButton.setMenu($penColorMenu);


# Create the draw board and set its initial size
my $drawPlace = DrawPlace.new;
$drawPlace.setMinimumSize(600, 400);


# Connect the signals from buttons and menus to slots
connect $quitButton, "clicked", $qApp, "quit";
connect $loadButton, "pressed", $drawPlace, "load";
connect $saveButton, "pressed", $drawPlace, "save";
connect $clearButton, "pressed", $drawPlace, "clear";
connect $thin, "triggered", $drawPlace, "thinPen";
connect $middle, "triggered", $drawPlace, "middlePen";
connect $thick, "triggered", $drawPlace, "thickPen";
connect $red, "triggered", $drawPlace, "redPen";
connect $blue, "triggered", $drawPlace, "bluePen";
connect $green, "triggered", $drawPlace, "greenPen";

# Layout : Horizontal box for the buttons
my $buttonLayout = QHBoxLayout.new;
$buttonLayout.addWidget($loadButton);
$buttonLayout.addWidget($saveButton);
$buttonLayout.addWidget($clearButton);
$buttonLayout.addWidget($widthButton);
$buttonLayout.addWidget($colorButton);
$buttonLayout.addWidget($quitButton);

# Layout : Vertical box for the draw place and the buttons box
my $layout = QVBoxLayout.new;
$layout.addWidget($drawPlace);
$layout.addLayout($buttonLayout);

# main window (an other QWidget)
my $window = QWidget.new;
$window.setLayout($layout);    # Set the layout and its content to the window
$window.setWindowTitle("A drawing board");    # Add a title 
$window.show;                  # Make the window visible

# Run the graphical application
my $status = $qApp.exec;
say "Execution status = $status";

### End of the main program
################################################################################



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
    }

    # In the following methods, ($ev.x, $ev.y) are the
    # coordinates of the mouse pointer
    
    method mouseMoveEvent(QMouseEvent $ev)
    {
        if $!penDown {
            # Note the last mouse move (if the pen is down)
            @!lastLine.push([$ev.x, $ev.y]);
            
            # Ask to paint (will call paintEvent)
            self.update;
        }
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
        if $fileName !~~ "" {
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
        if $fileName !~~ "" {
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

    method bluePen is QtSlot
    {
        $!color = $!blueColor;
    }

    method greenPen is QtSlot
    {
        $!color = $!greenColor;
    }

}      # End of the DrawPlace class








