
use Test;
use Qt::QtWidgets::QApplication;
use Qt::QtWidgets::QSlider;
use Qt::QtWidgets::Qt;

my $app = QApplication.new;

my $a = QSlider.new;


$a.setTickInterval(10);
ok $a.tickInterval == 10, "Set a first tick interval";

$a.setTickInterval(5);
ok $a.tickInterval == 5, "Set another tick interval";



$a.setTickPosition(QSlider::NoTicks);
ok $a.tickPosition == QSlider::NoTicks, "Set no tick";

$a.setTickPosition(QSlider::TicksAbove);
ok $a.tickPosition == QSlider::TicksLeft, "Set ticks position above/left";

$a.setTickPosition(QSlider::TicksBelow);
ok $a.tickPosition == QSlider::TicksRight,
                                            "Set ticks position below/right";

$a.setTickPosition(QSlider::TicksBothSides);
ok $a.tickPosition == QSlider::TicksBothSides,
                                            "Set ticks position both sides";

done-testing;

