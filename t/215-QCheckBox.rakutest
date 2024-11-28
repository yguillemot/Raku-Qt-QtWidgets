
use Test;
use Qt::QtWidgets::QApplication;
use Qt::QtWidgets::QCheckBox;
use Qt::QtWidgets::Qt;

my $app = QApplication.new;

my $a = QCheckBox.new;



$a.setTristate(False);
ok !$a.isTristate, "isTristate set to False";

$a.setTristate(True);
ok $a.isTristate, "isTristate set to True";

$a.setTristate(False);
ok !$a.isTristate, "isTristate set to False again";


$a.setCheckState(Qt::Unchecked);
ok $a.checkState == Qt::Unchecked, "Set checkState Unchecked";

$a.setCheckState(Qt::PartiallyChecked);
ok $a.checkState == Qt::PartiallyChecked, "Set checkState PartiallyChecked";

$a.setCheckState(Qt::Checked);
ok $a.checkState == Qt::Checked, "Set checkState Checked";


done-testing;

