
use Test;
plan 4;

use Qt::QtWidgets::QEvent;

my $a = QEvent.new(QEvent::FocusOut);
my $b = QEvent.new($a.address);

ok $a.type ~~ QEvent::FocusOut,   "Create a QEvent 'FocusOut'";
ok !$a.spontaneous,               "Should not be 'spontaneous'";

ok $b.type ~~ QEvent::FocusOut,   "A copy of this event keep its type";
ok !$b.spontaneous,               "And is always not 'spontaneous'";

done-testing;
