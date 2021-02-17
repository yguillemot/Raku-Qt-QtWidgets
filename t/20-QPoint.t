
use Test;

plan 6;


use Qt::QtWidgets;


my $a = QPoint.new(100, 200);
my $b = QPoint.new($a.x, $a.y);    # clone
my $c = QPoint.new($a.address);
my ($x, $y) = ($a.x, $a.y);

ok ($x, $y) ~~ (100, 200), "QPoint CTOR and xy method";

$a.setX(34);
$a.setY(33);
($x, $y) = ($a.x, $a.y);

ok ($x, $y) ~~ (34, 33), "QPoint setX and setY methods";

($x, $y) = ($b.x, $b.y);
ok ($x, $y) ~~ (100, 200), "QPoint clone method";

($x, $y) = ($c.x, $c.y);
ok ($x, $y) ~~ (34, 33), "QPoint get access CTOR method";

my $l1 = $a.manhattanLength;
my $l2 = $b.manhattanLength;

ok $l1 == 67 && $l2 == 300, "QPoint manhattanLength method";

my $z1 = $b.isNull;
$b.setX(0);
$b.setY(0);
my $z2 = $b.isNull;

ok $z1 == False && $z2 == True, "QPoint isNull method";

