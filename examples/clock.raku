
# A digital clock

use Qt::QtWidgets;

# Objects creation

# Create the application object first
my $qApp = QApplication.new(args => @*ARGS);

# Create the label used as the output window and give it a large font size
my $label = QLabel.new("00-00-00");
my $font = $label.font;
$font.setPointSize(50);
$label.setFont($font);
$label.setMargin(10);

$label.show;

# Thread which refreshes the displayed time
start {
    loop {
        sleep 0.2;
        $label.setText(DateTime.new(now).local.hh-mm-ss);
    }
}

# Run the graphical application
$qApp.exec;





