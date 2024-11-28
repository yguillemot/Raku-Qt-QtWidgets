 
# Test QVBoxLayout and QHBoxLayout using QLabel

use Test;
plan 3;

use Qt::QtWidgets;
use Qt::QtWidgets::QApplication;
use Qt::QtWidgets::QHBoxLayout;
use Qt::QtWidgets::QLabel;
use Qt::QtWidgets::QVBoxLayout;
use Qt::QtWidgets::QWidget;


class HLabel is QLabel {
    has Str $.text;
    has Bool $.square = False;
    
    submethod TWEAK {
        self.QLabel::subClass($!text);
    }

   method hasHeightForWidth( --> Bool)
   {
        return $.square;
   }

   method heightForWidth(Int $w --> Int)
   {
        return $w;
   }
}


my $qApp = QApplication.new;


# Create 3 labels
my QLabel $l1 .= new: "Ordinary label";
my HLabel $l2 .= new: text => "Square label", :square;
my HLabel $l3 .= new: text => "Another ordinary label";

my $vl = QVBoxLayout.new;
my $w = QWidget.new;

$vl.addWidget($l1);
$vl.addWidget($l2);
$vl.addWidget($l3);

$w.setLayout($vl);
$w.show;

my $w1 = $l1.width;
my $h1 = $l1.height;
my $w2 = $l2.width;
my $h2 = $l2.height;
my $w3 = $l3.width;
my $h3 = $l3.height;

# Uncomment the following line to see what the test does
# my $status = $qApp.exec;

ok $w1 == $w2 == $w3, "QVBoxLayout force all labels to the same width";
ok $h1 == $h3, "Ordinary labels with one line have the same height";
ok $w2 == $h2, "Square label is square";

# done-testing;  # optional with 'plan'
