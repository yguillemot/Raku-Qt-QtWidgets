
use Test;
use Qt::QtWidgets;
use Qt::QtWidgets::QApplication;
use Qt::QtWidgets::QHBoxLayout;
use Qt::QtWidgets::QLabel;
use Qt::QtWidgets::QPoint;
use Qt::QtWidgets::QWidget;

my $app = QApplication.new;

my $a = QWidget.new; 

my $b = QLabel.new;
$b.setFixedWidth(100);
$b.setFixedHeight(100);

my $c = QLabel.new;
$c.setFixedWidth(100);
$c.setFixedHeight(100);

my $hb = QHBoxLayout.new;

$hb.addWidget($b);
$hb.addWidget($c);
$a.setLayout($hb);

$hb.setSpacing(0);
$hb.setContentsMargins(0,0,0,0);
$a.show;

my QPoint $p1 = $b.mapTo($a, QPoint.new(50, 50));
my QPoint $p2 = $c.mapTo($a, QPoint.new(50, 50));
ok $p1.x == 50 && $p1.y == 50 && $p2.x == 150 && $p2.y == 50,
    "mapTo, no spacing, no contents margin";
# say "mapTo : ", $p1.x, ", ", $p1.y;
# say "mapTo : ", $p2.x, ", ", $p2.y;

$p1 = $b.mapFrom($a, QPoint.new(50, 50));
$p2 = $c.mapFrom($a, QPoint.new(50, 50));

ok $p1.x == 50 && $p1.y == 50 && $p2.x == -50 && $p2.y == 50,
    "mapFrom, no spacing, no contents margin";
# say "mapFrom : ", $p1.x, ", ", $p1.y;
# say "mapFrom : ", $p2.x, ", ", $p2.y;

$a.hide;

$hb.setSpacing(50);
$hb.setContentsMargins(0,0,0,0);
$a.show;

$p1 = $b.mapTo($a, QPoint.new(50, 50));
$p2 = $c.mapTo($a, QPoint.new(50, 50));
ok $p1.x == 50 && $p1.y == 50 && $p2.x == 200 && $p2.y == 50,
    "mapTo, with spacing, no contents margin";
# say "mapTo : ", $p1.x, ", ", $p1.y;
# say "mapTo : ", $p2.x, ", ", $p2.y;

$p1 = $b.mapFrom($a, QPoint.new(50, 50));
$p2 = $c.mapFrom($a, QPoint.new(50, 50));
ok $p1.x == 50 && $p1.y == 50 && $p2.x == -100 && $p2.y == 50,
    "mapFrom, with spacing, no contents margin";
# say "mapFrom : ", $p1.x, ", ", $p1.y;
# say "mapFrom : ", $p2.x, ", ", $p2.y;

$a.hide;

$hb.setSpacing(0);
$hb.setContentsMargins(50,50,50,50);
$a.show;

$p1 = $b.mapTo($a, QPoint.new(50, 50));
$p2 = $c.mapTo($a, QPoint.new(50, 50));
ok $p1.x == 100 && $p1.y == 100 && $p2.x == 200 && $p2.y == 100,
    "mapTo, no spacing, with contents margins";
# say "mapTo : ", $p1.x, ", ", $p1.y;
# say "mapTo : ", $p2.x, ", ", $p2.y;

$p1 = $b.mapFrom($a, QPoint.new(50, 50));
$p2 = $c.mapFrom($a, QPoint.new(50, 50));
ok $p1.x == 0 && $p1.y == 0 && $p2.x == -100 && $p2.y == 0,
    "mapFrom, no spacing, with contents margins";
# say "mapFrom : ", $p1.x, ", ", $p1.y;
# say "mapFrom : ", $p2.x, ", ", $p2.y;

# $app.exec;

done-testing;

