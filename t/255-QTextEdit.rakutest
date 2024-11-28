
use Test;
use Qt::QtWidgets::QApplication;
use Qt::QtWidgets::QTextEdit;

my $app = QApplication.new;

my $a = QTextEdit.new; 


$a.setPlainText("Foo");
ok $a.toPlainText ~~ "Foo", "Text set to a first value";

my $text = "Some other\ntext with several\nlines";
$a.setPlainText($text);
ok $a.toPlainText ~~ $text, "Text set to another value";

done-testing;

