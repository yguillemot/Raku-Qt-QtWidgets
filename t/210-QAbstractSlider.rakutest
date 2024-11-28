
use Test;
use Qt::QtWidgets::QApplication;
use Qt::QtWidgets::QSlider;
use Qt::QtWidgets::Qt;

my $app = QApplication.new;

my $a = QSlider.new;    # No constructor for QAbstractSlider


$a.setTracking(False);
ok !$a.hasTracking, "hasTracking set to False";

$a.setTracking(True);
ok $a.hasTracking, "hasTracking set to True";

$a.setTracking(False);
ok !$a.hasTracking, "hasTracking set to False again";


$a.setInvertedAppearance(False);
ok !$a.invertedAppearance, "invertedAppearance set to False";

$a.setInvertedAppearance(True);
ok $a.invertedAppearance, "invertedAppearance set to True";

$a.setInvertedAppearance(False);
ok !$a.invertedAppearance, "invertedAppearance set to False again";


$a.setInvertedControls(False);
ok !$a.invertedControls, "invertedControls set to False";

$a.setInvertedControls(True);
ok $a.invertedControls, "invertedControls set to True";

$a.setInvertedControls(False);
ok !$a.invertedControls, "invertedControls set to False again";


$a.setMaximum(97);
ok $a.maximum == 97, "Set a first maximum";

$a.setMaximum(120);
ok $a.maximum == 120, "Set another maximum";

$a.setMinimum(12);
ok $a.minimum == 12, "Set a first minimum";

$a.setMinimum(-20);
ok $a.minimum == -20, "Set another minimum";


$a.setValue(97);
ok $a.value == 97, "Set a first value";

$a.setValue(-12);
ok $a.value == -12, "Set another value";

$a.setValue(-54);
ok $a.value == -20, "Set an out of bound small value";

$a.setValue(142);
ok $a.value == 120, "Set an out of bound large value";


$a.setPageStep(20);
ok $a.pageStep == 20, "Set a first page step";

$a.setPageStep(12);
ok $a.pageStep == 12, "Set another page step";


$a.setSingleStep(8);
ok $a.singleStep == 8, "Set a first single step";

$a.setSingleStep(3);
ok $a.singleStep == 3, "Set another single step";


$a.setOrientation(Qt::Horizontal);
ok $a.orientation == Qt::Horizontal, "Set a first orientation";

$a.setOrientation(Qt::Vertical);
ok $a.orientation == Qt::Vertical, "Set another orientation";



done-testing;

