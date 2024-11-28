
use Test;
use Qt::QtWidgets::QApplication;
use Qt::QtWidgets::QDial;

my $app = QApplication.new;

my $a = QDial.new;


$a.setWrapping(False);
ok !$a.wrapping, "wrapping set to False";

$a.setWrapping(True);
ok $a.wrapping, "wrapping set to True";

$a.setWrapping(False);
ok !$a.wrapping, "wrapping set to False again";


$a.setNotchesVisible(False);
ok !$a.notchesVisible, "notchesVisible set to False";

$a.setNotchesVisible(True);
ok $a.notchesVisible, "notchesVisible set to True";

$a.setNotchesVisible(False);
ok !$a.notchesVisible, "notchesVisible set to False again";


$a.setNotchTarget(2.5);
ok 2.4999 < $a.notchTarget < 2.5001, "notchTarget set to 2.5";

$a.setNotchTarget(4.3);
ok 4.2999 < $a.notchTarget < 4.3001, "notchTarget set to 4.3";


done-testing;

