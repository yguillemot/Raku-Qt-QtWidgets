
use Test;
use Qt::QtWidgets::QApplication;
use Qt::QtWidgets::QLabel;

my $app = QApplication.new;

my $a = QLabel.new; 


$a.setText: "Foo";
my $w1 = $a.sizeHint.width;
my $h1 = $a.sizeHint.height;

ok $a.text ~~ "Foo", "Text set to a first value";

$a.setText: "Some longer text";
my $w2 = $a.sizeHint.width;
my $h2 = $a.sizeHint.height;

ok $a.text ~~ "Some longer text", "Text set to another value";
ok $w2 > $w1, "Label width depends on text length";
ok $h2 == $h1, "Label height doesn't depend on text length";

$a.setText: "A Two\nlines text";
my $w3 = $a.sizeHint.width;
my $h3 = $a.sizeHint.height;

ok $a.text ~~ "A Two\nlines text", "Text set to another value again";
ok $w3 != $w1 && $w3 != $w2, "Label width depends on horizontal text length";
ok $h3 > $h1, "Label height depends on number of lines";

done-testing;

