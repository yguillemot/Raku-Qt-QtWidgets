
# A QGraphics objects example

use Qt::QtWidgets;
use Qt::QtWidgets::QApplication;
use Qt::QtWidgets::QBrush;
use Qt::QtWidgets::QColor;
use Qt::QtWidgets::QFont;
use Qt::QtWidgets::QGraphicsEllipseItem;
use Qt::QtWidgets::QGraphicsItem;
use Qt::QtWidgets::QGraphicsRectItem;
use Qt::QtWidgets::QGraphicsScene;
use Qt::QtWidgets::QGraphicsSimpleTextItem;
use Qt::QtWidgets::QGraphicsView;
use Qt::QtWidgets::QPen;
use Qt::QtWidgets::QRectF;
use Qt::QtWidgets::QTimer;
use Qt::QtWidgets::Qt;


# Size of the scene
constant W = 800;
constant H = 400;

# Margin (Don't start too close to the edges)
constant M = 150;

# Size of the objects
constant D = 20;

# Horizontal and vertical speed range (px/ms)
constant Vmin = 0.02;
constant Vmax = 0.20;

# Timer period (ms)
constant T = 10;


# Give a value with a random sign and a random module in the given range
sub randomSpeed { (-1,+1).pick * (Vmin + rand * (Vmax - Vmin)) }

# Give a random position inside margins
sub randomX { M + rand * (W - 2 * M) }
sub randomY { M + rand * (H - 2 * M) }

class Scene { ... }

# A graphical moving object
class MovingObject is QtObject
{
    has Scene $.scene is rw;    # The scene where the item is displayed
    has QGraphicsItem $.gitem;  # The graphical item itself
    has Real ($.w, $.h);        # The size of the Item

    has Real $.vx is rw;        # Item vertical speed
    has Real $.vy is rw;        # Item vertical speed

    # Adjunct graphical texts showing speed and coords of the main object
    has QGraphicsSimpleTextItem $.speed;
    has QGraphicsSimpleTextItem $.coords;

    has QPen $.pen;             # Used to draw the main object if defined
    has QBrush $.brush;         # Used to draw the main object if defined
    has QFont $.font is rw;     # Used to draw the main object text if defined
    has Int $.pointSize;        # Used to draw the main object text if defined

    submethod TWEAK
    {
        # Set up pen and brush if needed
        self.gitem.setPen: $!pen with $!pen;
        self.gitem.setBrush: $!brush with $!brush;

        # Set up font if needed
        with $!pointSize {
            $!font = self.gitem.font without $!font;
            $!font.setPointSize: $!pointSize ;
            self.gitem.setFont: $!font;
        }

        # Get object size
        $!w = $!gitem.boundingRect.width;
        $!h = $!gitem.boundingRect.height;

        # Initialize speed at a random value
        $!vx = randomSpeed;
        $!vy = randomSpeed;

        # Create a child text showing the object speed
        $!speed = QGraphicsSimpleTextItem.new:
                            "{(1000 * sqrt($!vx**2 + $!vy**2)).Int} px/s";
        my $sh = $!speed.boundingRect.height;
        $!speed.setParentItem: $!gitem;
        $!speed.setPos: $!gitem.x, $!gitem.y + $!h;

        # Create a child text object showing the object coordinates
        $!coords = QGraphicsSimpleTextItem.new;
        $!coords.setParentItem: $!gitem;
        $!coords.setPos: $!gitem.x, $!gitem.y + $!h + $sh;

        # Add the object to the scene
        $!scene.addItem: $!gitem;

        # Move the object to a random position on the scene
        $!gitem.setPos: randomX, randomY;
    }

    method move is QtSlot        # Move current object after a timer period
    {
        # Compute and set new position
        my $x = $.gitem.x + T * $.vx;
        my $y = $.gitem.y + T * $.vy;
        $!gitem.setPos: $x, $y;

        # Show the current coordinates of the object
        $.coords.setText: "(" ~ $x.Int ~ ", " ~ $y.Int ~ ")";

        # If borders of the scene have been reached, simulate a bounce
        # by modifying the speed vector
        $!vx = -$.vx unless $.scene.x1 < $x < $.scene.x2 - $.w;
        $!vy = -$.vy unless $.scene.y1 < $y < $.scene.y2 - $.h;
    }
}


# A QGraphicsScene with a red rectangle showing its useful area
class Scene is QGraphicsScene
{
    has Int ($.x1, $.x2, $.y1, $.y2);   # Limits of the useful part of the scene

    submethod TWEAK
    {
        self.QGraphicsScene::subClass: $!x1, $!y1, $!x2, $!y2;

        # Draw a red line around the useful part of the scene
        my QColor $fgc = QColor.new: Qt::red;
        my QPen $pen = QPen.new: $fgc;
        $pen.setWidth: 2;
        my QRectF $r = self.sceneRect;
        self.addLine: $r.left, $r.top, $r.right, $r.top, $pen;
        self.addLine: $r.left, $r.bottom, $r.right, $r.bottom, $pen;
        self.addLine: $r.left, $r.top, $r.left, $r.bottom, $pen;
        self.addLine: $r.right, $r.top, $r.right, $r.bottom, $pen;
    }
}



# Create QApplication before creating any other Qt object
my $qApp = QApplication.new("Moving objects example", @*ARGS);

# Create the scene (a QGraphicsScene)
my $scene = Scene.new: x1 => 0, y1 => 0, x2 => W, y2 => H;

# Create the pen and brush needed to draw the graphical objects
my QColor $fgc = QColor.new: Qt::blue;
my QPen $pen = QPen.new: $fgc;
$pen.setWidth: 1;
my QColor $bgc = QColor.new: Qt::yellow;
my QBrush $brush = QBrush.new: $bgc, Qt::SolidPattern;


# Create some objects moving on the scene
my @mobjs;    # Moving objects list

@mobjs.push: MovingObject.new:
                scene => $scene,
                gitem => QGraphicsEllipseItem.new(0, 0, D, D),
                pen => $pen,
                brush => $brush;

@mobjs.push: MovingObject.new:
                scene => $scene,
                gitem => QGraphicsRectItem.new(0, 0, D, D),
                pen => $pen,
                brush => $brush;

@mobjs.push: MovingObject.new:
                scene => $scene,
                gitem => QGraphicsSimpleTextItem.new("Hello !"),
                pen => $pen,
                brush => $brush,
                pointSize => 20;


# Show the scene (needs a QGraphicsView)
my QGraphicsView $view = QGraphicsView.new: $scene;
$view.setMinimumSize: W + 30, H + 30;   # Used scene always visible
$view.show;

# Create a timer, set its period and connect it to each moving object
my $timer = QTimer.new;
$timer.setInterval: T;
for @mobjs { connect $timer, "timeout", $_, "move" }

# Start the timer
$timer.start;

# Run the graphical application
$qApp.exec;

