
use Test;

plan 4;

use Qt::QtWidgets;

my ($x1, $y1) = (100.22, 200.87);
my $a = QPointF.new($x1, $y1);

# my $b = $a.clone;
my $b = QPointF.new($a.x, $a.y);

my $c = QPointF.new($a.address);
my ($x, $y) = ($a.x, $a.y);

ok areVeryNear(($x1, $y1), ($x, $y)), "QPointF CTOR, x and y methods";

my ($x2, $y2) = (34.72, 33.25);
$a.setX($x2);
$a.setY($y2);
($x, $y) = ($a.x, $a.y);

ok areVeryNear(($x2, $y2), ($x, $y)), "QPointF setXand setY methods";

# ($x, $y) = $b.xy;
# ok areVeryNear(($x1, $y1), ($x, $y)), "QPointF clone method";

# ($x, $y) = $c.xy;
# ok areVeryNear(($x2, $y2), ($x, $y)), "QPointF get access CTOR method";

my $l1 = $b.manhattanLength;
my $l2 = $a.manhattanLength;
ok areVeryNear(($l1, $l2), ($x1+$y1, $x2+$y2)), "QPointF manhattanLength method";

my $z1 = $b.isNull;
$b.setX(0e0);
$b.setY(0e0);
my $z2 = $b.isNull;

ok !$z1 && $z2, "QPointF isNull method";



# Return True if (@a[$i]-@b[$i<])**2 < 1e-10 for any $i
sub areVeryNear(@a, @b --> Bool) {
    # Just for the fun :-)
    [&&](((@a <<->> @b) <<**>> 2) <<<>> 1e-10);
}
