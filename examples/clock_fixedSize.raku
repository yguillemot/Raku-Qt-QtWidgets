
# A digital clock

use Qt::QtWidgets;
use Qt::QtWidgets::QApplication;
use Qt::QtWidgets::QLabel;

# Objects creation

# Create the application object first (the first argument will be
# the window title)
my $qApp = QApplication.new("What time is it ?", @*ARGS);

# Create the label used as the output window and give it a large font size
my $label = QLabel.new("00-00-00");
my $font = $label.font;
$font.setPointSize(50);
$label.setFont($font);
$label.setMargin(10);

$label.show;

# Make resizing the window impossible
$label.setFixedSize($label.width, $label.height);

# Thread which refreshes the displayed time
start {
    loop {
        sleep 0.2;
        $label.setText(DateTime.new(now).local.hh-mm-ss);
    }
}

# Run the graphical application
$qApp.exec;





