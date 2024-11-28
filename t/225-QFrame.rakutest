
use Test;
use Qt::QtWidgets::QApplication;
use Qt::QtWidgets::QFrame;
use Qt::QtWidgets::QRect;

my $app = QApplication.new;

my $a = QFrame.new;


$a.setLineWidth(2);
ok $a.lineWidth == 2, "Set a first lineWidth";

$a.setLineWidth(5);
ok $a.lineWidth == 5, "Set another lineWidth";

$a.setMidLineWidth(2);
ok $a.midLineWidth == 2, "Set a first midLineWidth";

$a.setMidLineWidth(5);
ok $a.midLineWidth == 5, "Set another midLineWidth";



$a.setFrameRect(QRect.new(71, 62, 53, 44));
my $r = $a.frameRect;
ok      $r.x == 71
    &&  $r.y == 62
    && $r.width == 53
    && $r.height == 44,     "Set a first frameRect";

$a.setFrameRect(QRect.new(10, 9, 6, 5));
$r = $a.frameRect;
ok      $r.x == 10
    &&  $r.y == 9
    && $r.width == 6
    && $r.height == 5,      "Set another frameRect";


$a.setFrameShadow(QFrame::Plain);
ok $a.frameShadow == QFrame::Plain, "Set frame shadow to \"Plain\"";

$a.setFrameShadow(QFrame::Raised);
ok $a.frameShadow == QFrame::Raised, "Set frame shadow to \"Raised\"";

$a.setFrameShadow(QFrame::Sunken);
ok $a.frameShadow == QFrame::Sunken, "Set frame shadow to \"Sunken\"";


$a.setFrameShape(QFrame::NoFrame);
ok $a.frameShape == QFrame::NoFrame, "Set frame shape to \"NoFrame\"";

$a.setFrameShape(QFrame::Panel);
ok $a.frameShape == QFrame::Panel, "Set frame shape to \"Panel\"";

$a.setFrameShape(QFrame::HLine);
ok $a.frameShape == QFrame::HLine, "Set frame shape to \"HLine\"";

$a.setFrameShape(QFrame::Box);
ok $a.frameShape == QFrame::Box, "Set frame shape to \"Box\"";


$a.setFrameStyle(QFrame::Plain +| QFrame::Panel);
ok $a.frameStyle == QFrame::Plain +| QFrame::Panel, "Set a first frameStyle";

$a.setFrameStyle(QFrame::Sunken +| QFrame::Box);
ok $a.frameStyle == QFrame::Sunken +| QFrame::Box, "Set another frameStyle";



done-testing;

