
# Test QPushButton
 
use Test;

plan 6;

use Qt::QtWidgets;

my $count = 0;

class Stop is QtObject {
    method finish is QtSignal { ... }
}

class Receiver is QtObject {
    method receive is QtSlot {
        $count++;
        # say "count = $count";
    }
}

my $qApp = QApplication.new;

my $s = Stop.new;

my $b1 = QPushButton.new("Foo");

my $r = Receiver.new;

connect $s, "finish", $qApp, "quit";
connect $b1, "clicked", $r, "receive";


# Timing thread
my $t = 0.01;
start {
    sleep 2 * $t;
    $b1.click;
    sleep $t;
    ok $count = 1, "Button enabled : signal passing";

    $b1.setDisabled(True);
    sleep $t;
    
    $b1.click;
    sleep $t;
    ok $count = 1, "Button disabled : signal blocked";
    
    
    $b1.setDisabled(False);
    sleep $t;
    
    $b1.click;
    sleep $t;
    ok $count = 2, "Button enabled : signal passing";

    ok $b1.text ~~ "Foo", "Button initial text";
    
    $b1.setText("Bar");
    
    ok $b1.text ~~ "Bar", "New button text";

    sleep $t;
    # say "Stopping...";
    $s.finish;
}

$b1.show;
my $status = $qApp.exec;
ok $status == 0, "Returned status is OK";


# done-testing;  # optional with 'plan'
