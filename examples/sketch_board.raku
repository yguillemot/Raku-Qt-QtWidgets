
# A tiny graphic editor

use Qt::QtWidgets;



# Objects creation

# Create the application object first
my $qApp = QApplication.new(args => @*ARGS);

# Create buttons
my $quitButton = QPushButton.new('&Quit');
my $clearButton = QPushButton.new('Clear');
my $widthButton = QPushButton.new('Size');
my $colorButton = QPushButton.new('Color');

# Setup some tooltips
$clearButton.setToolTip("Use this button\nto completely\nclear the screen");
$widthButton.setToolTip("Use this button to select the size of the pen");
$colorButton.setToolTip("Use this button to select the color of the pen");


# Pop menus

my QMenu $penSizeMenu = QMenu.new("Pen size", (QMenu));
my QAction $thin = $penSizeMenu.addAction("thin");
my QAction $middle = $penSizeMenu.addAction("middle");
my QAction $thick = $penSizeMenu.addAction("thick");

my QMenu $penColorMenu = QMenu.new("Pen color", (QMenu));
my QAction $red = $penColorMenu.addAction("red");
my QAction $blue = $penColorMenu.addAction("blue");
my QAction $green = $penColorMenu.addAction("green");

$widthButton.setMenu($penSizeMenu);
$colorButton.setMenu($penColorMenu);


# Subclass a QWidget to create the drawing board

class DrawPlace is QWidget {

    my $redColor = QColor.new(Qt::red);
    my $blueColor = QColor.new(Qt::blue);
    my $greenColor = QColor.new(Qt::green);

    my Bool $penDown;
    my $lastX = 0;
    my $lastY = 0;
    my $curX = 0;
    my $curY = 0;
    my @lines;      # List of all lists of linked points
    my @lastLine;    # List of last linked points
    my Bool $firstTime;
    my $width = 2;
    my $color = $redColor;      # Current pen color

    submethod BUILD {
        self.QWidget::subClass((QWidget), Qt::WindowFlags(Qt::Widget));
        $penDown = False;
        @lines = ();
        @lastLine = ();
        $firstTime = True;
    }

    method mouseMoveEvent(QMouseEvent $ev)
    {
        if $penDown {
            @lastLine.push([$ev.x, $ev.y]);
            self.update;
        }
    }

    method mousePressEvent(QMouseEvent $ev)
    {
        $penDown = True;
        @lastLine = ();
        @lastLine.push([$ev.x, $ev.y]);
        self.update;
    }

    method mouseReleaseEvent(QMouseEvent $ev)
    {
        $penDown = False;
        @lastLine.push([$ev.x, $ev.y]);
        my @l = @lastLine;
        @lines.push([$color, $width, @l]);
        self.update;
    }

    method paintEvent(QPaintEvent $ev)
    {
        my $rect = $ev.rect;
        my $x = $rect.x;
        my $y = $rect.y;
        my $w = $rect.width;
        my $h = $rect.height;

        my $painter = QPainter.new();
        $painter.begin(self);

        my $fgc = QColor.new(Qt::blue);
        my $pen = QPen.new($fgc);
        $pen.setWidth(2);

        my $bgc = QColor.new(Qt::yellow);
        my $brush = QBrush.new($bgc, Qt::SolidPattern);

        $painter.setPen($pen);
        $painter.drawLine(1, 1, $w - 2, 1);
        $painter.drawLine($w - 2, 1, $w - 2, $h - 2);
        $painter.drawLine($w - 2, $h - 2, 1, $h - 2);
        $painter.drawLine(1, $h - 2, 1, 1);

        $painter.setBrush($brush);
        $painter.drawRect(20, 20, $w - 40, $h - 40);

        $brush.setStyle(Qt::NoBrush);
        $painter.setBrush($brush);
        $painter.drawRect(10, 10, $w - 20, $h - 20);

        $pen.setColor($color);
        $pen.setWidth($width);
        $painter.setPen($pen);

        my Bool $start = True;
        my ($x1, $y1, $x2, $y2);
        for @lastLine -> @p {
            if $start {
                ($x1, $y1) = @p;
                $start = False;
            } else {
                ($x2, $y2) = @p;
                $painter.drawLine($x1, $y1, $x2, $y2);
                ($x1, $y1) = ($x2, $y2);
            }
        }


        for @lines -> ($c, $w, @line) {
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

        $painter.end();
    }

    method clear is QtSlot
    {
        @lastLine = ();
        @lines = ();
        self.update;
    }

    method thinPen is QtSlot
    {
        $width = 2;
    }

    method middlePen is QtSlot
    {
        $width = 4;
    }

    method thickPen is QtSlot
    {
        $width = 8;
    }


    method redPen is QtSlot
    {
        $color = $redColor;
    }

    method bluePen is QtSlot
    {
        $color = $blueColor;
    }

    method greenPen is QtSlot
    {
        $color = $greenColor;
    }


}




my $drawPlace = DrawPlace.new;
$drawPlace.setMinimumSize(600, 400);



# Connections
connect $quitButton, "clicked", $qApp, "quit";
connect $clearButton, "pressed", $drawPlace, "clear";
connect $thin, "triggered", $drawPlace, "thinPen";
connect $middle, "triggered", $drawPlace, "middlePen";
connect $thick, "triggered", $drawPlace, "thickPen";
connect $red, "triggered", $drawPlace, "redPen";
connect $blue, "triggered", $drawPlace, "bluePen";
connect $green, "triggered", $drawPlace, "greenPen";

# Layout
my $buttonLayout = QHBoxLayout.new;
$buttonLayout.addWidget($clearButton);
$buttonLayout.addWidget($widthButton);
$buttonLayout.addWidget($colorButton);
$buttonLayout.addWidget($quitButton);

my $layout = QVBoxLayout.new;
$layout.addWidget($drawPlace);
$layout.addLayout($buttonLayout);

# main window
my $window = QWidget.new;
$window.setLayout($layout);
$window.setWindowTitle("A drawing board");
$window.show;



# Run the graphical application
my $status = $qApp.exec;
say "Execution status = $status";




