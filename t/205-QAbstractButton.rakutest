
use Test;
use Qt::QtWidgets::QApplication;
use Qt::QtWidgets::QPushButton;

my $app = QApplication.new;

my $a = QPushButton.new("");    # No constructor for QAbstractButton


$a.setText("Foo");
ok $a.text ~~ "Foo", "Text set to a first value";

$a.setText("Bar");
ok $a.text ~~ "Bar", "Text set to another value";


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


$a.setDown(False);
ok !$a.isDown, "isDown set to False";

$a.setDown(True);
ok $a.isDown, "isDown set to True";

$a.setDown(False);
ok !$a.isDown, "isDown set to False again";

done-testing;

