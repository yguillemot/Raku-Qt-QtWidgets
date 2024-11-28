
use Qt::QtWidgets;
use Qt::QtWidgets::QApplication;
use Qt::QtWidgets::QBrush;
use Qt::QtWidgets::QColor;
use Qt::QtWidgets::QEvent;
use Qt::QtWidgets::QLabel;
use Qt::QtWidgets::QMouseEvent;
use Qt::QtWidgets::QPaintEvent;
use Qt::QtWidgets::QPainter;
use Qt::QtWidgets::QPen;
use Qt::QtWidgets::QTextEdit;
use Qt::QtWidgets::QVBoxLayout;
use Qt::QtWidgets::QWidget;
use Qt::QtWidgets::Qt;



# The main window is a QWidget gathering a QLabel used as a test field and
# a QTextEdit use to display the found events.
# This QLabel is subclassed to add it an event handler.


# The test field widget is a subclass of QLabel
class TestField is QLabel {

    has QTextEdit $.output is rw;

    submethod TWEAK { 
        # Initialize parent
        self.QLabel::subClass;
        self.setFixedSize: 200, 200;
        self.setMouseTracking: True;
    }

    method paintEvent(QPaintEvent $ev)
    {
        my $painter = QPainter.new();
        $painter.begin(self);
            $painter.setBrush: QBrush.new: QColor.new(Qt::yellow), Qt::SolidPattern;
            my $pen = QPen.new: QColor.new(Qt::black);
            $pen.setWidth(3);
            $painter.setPen: $pen;
            $painter.drawRect: 0, 0, $ev.rect.width, $ev.rect.height;
            $painter.drawText: $ev.rect, Qt::AlignCenter,
                               "Move the mouse\nand press its buttons\nhere";
        $painter.end();
    }

    method enterEvent(QEvent $ev)
    {
        $.output.append: $ev.type.Str if $.output;
    }

    method leaveEvent(QEvent $ev)
    {
        $.output.append: $ev.type.Str if $.output;
    }

    method mouseMoveEvent(QMouseEvent $ev)
    {
        $.output.append: "{$ev.type} ({$ev.x}, {$ev.y})"  if $.output;
    }

    method mousePressEvent(QMouseEvent $ev)
    {
        $.output.append: "{$ev.type} {$ev.button} ({$ev.x}, {$ev.y})"  if $.output;
    }

    method mouseReleaseEvent(QMouseEvent $ev)
    {
        $.output.append: "{$ev.type} {$ev.button} ({$ev.x}, {$ev.y})"  if $.output;
    }
}


# Objects creation
my $qApp = QApplication.new;
my $window = QWidget.new;          # main window
my $textEdit = QTextEdit.new;
my $testField = TestField.new;

# Connect $testField to $textEdit
$testField.output = $textEdit;

# Layout

my $testLayout = QVBoxLayout.new;
$testLayout.setContentsMargins(55, 55, 55, 55);
$testLayout.addWidget($testField);
$testLayout.setAlignment($testField, Qt::AlignCenter);


my $layout = QVBoxLayout.new;
$layout.addLayout($testLayout);
$layout.addWidget($textEdit);

$window.setLayout($layout);

# Set up a title and show the main window
$window.setWindowTitle("Show mouse events");
$window.show;

# Run the graphical application
my $status = $qApp.exec;
say "Returned status = $status";




