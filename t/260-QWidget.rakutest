
use Test;
use Qt::QtWidgets;
use Qt::QtWidgets::QApplication;
use Qt::QtWidgets::QFont;
use Qt::QtWidgets::QWidget;

my $app = QApplication.new;

my $a = QWidget.new; 

my $font1 = QFont.new;
$font1.setPointSize(12);
$font1.setItalic(False);
$font1.setBold(False);
$font1.setStretch(100);

my $font2 = QFont.new;
$font2.setPointSize(24);
$font2.setItalic(True);
$font2.setBold(True);
$font2.setStretch(421);

$a.setFont($font1);
ok      $a.font.pointSize == $font1.pointSize
    &&  !$a.font.italic
    &&  !$a.font.bold
    &&  $a.font.stretch == $font1.stretch,
                "Widget font set to a first QFont";

$a.setFont($font2);
ok      $a.font.pointSize == $font2.pointSize
    &&  $a.font.italic
    &&  $a.font.bold
    &&  $a.font.stretch == $font2.stretch,
                "Widget font set to another QFont";


$a.setFixedHeight(50);
ok $a.height == 50, "Widget height set to a first value";

$a.setFixedHeight(250);
ok $a.height == 250, "Widget height set to another value";

$a.setFixedWidth(50);
ok $a.width == 50, "Widget width set to a first value";

$a.setFixedWidth(250);
ok $a.width == 250, "Widget width set to another value";

done-testing;

