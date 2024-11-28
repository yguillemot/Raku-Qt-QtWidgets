
use Test;
use Qt::QtWidgets::QApplication;
use Qt::QtWidgets::QGroupBox;

my $app = QApplication.new;

my $a = QGroupBox.new;



$a.setCheckable(False);
ok !$a.isCheckable, "isCheckable set to False";

$a.setCheckable(True);
ok $a.isCheckable, "isCheckable set to True";

$a.setCheckable(False);
ok !$a.isCheckable, "isCheckable set to False again";


$a.setCheckable(True);  # Can't set checked to True if not checkable
$a.setChecked(False);
ok !$a.isChecked, "isChecked set to False";

$a.setChecked(True);
ok $a.isChecked, "isChecked set to True";

$a.setChecked(False);
ok !$a.isChecked, "isChecked set to False again";


$a.setFlat(False);
ok !$a.isFlat, "isFlat set to False";

$a.setFlat(True);
ok $a.isFlat, "isFlat set to True";

$a.setFlat(False);
ok !$a.isFlat, "isFlat set to False again";


$a.setTitle("Foo");
ok $a.title ~~ "Foo", "Title set to Foo";

$a.setTitle("Bar");
ok $a.title ~~ "Bar", "Title set to Bar";


done-testing;

