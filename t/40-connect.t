 
use Test;

plan 6;

use Qt::QtWidgets;

my $r = False;

my $iresult = 0;
my $ivalue = 34;

my $sresult = "";
my $svalue = "Hello";

my $bresult = False;
my $bresult1 = False;
my $bresult2 = True;


class Destination is QtObject {
    multi method xrecevoir() is QtSlot
    {
        $r = True;
    }

    multi method irecevoir(Int $i) is QtSlot
    {
        $iresult = $i;
    }

    multi method srecevoir(Str $s) is QtSlot
    {
        $sresult = $s;
    }

    multi method brecevoir(Bool $b) is QtSlot
    {
        $bresult = $b;
    }
}

class Source is QtObject {
    method xemettre() is QtSignal { ... }
    method iemettre(Int $i) is QtSignal { ... }
    method semettre(Str $s) is QtSignal { ... }
    method bemettre(Bool $b) is QtSignal { ... }
}

class Tempo is QtObject {
    method finish is QtSignal { ... }
}


my $qApp = QApplication.new;
my $s = Source.new;
my $d = Destination.new;
my $t = Tempo.new;

connect $s, "xemettre", $d, "xrecevoir";
connect $s, "iemettre", $d, "irecevoir";
connect $s, "semettre", $d, "srecevoir";
connect $s, "bemettre", $d, "brecevoir";
connect $t, "finish", $qApp, "quit";

# Timing thread
my $dt = 0.1;
start {
    sleep 2 * $dt;
    $s.xemettre;
    sleep $dt;
    $s.iemettre($ivalue);
    sleep $dt;
    $s.semettre($svalue);
    sleep $dt;
    $s.bemettre(True);
    sleep $dt;
    $bresult1 = $bresult;
    $s.bemettre(False);
    sleep $dt;
    $bresult2 = $bresult;
    say "Stopping...";
    $t.finish;
}

my $status = $qApp.exec;

ok $status == 0, "Qt Application exited successfuly";
ok $r, "Transmit signal without data";
ok $iresult == $ivalue, "Transmit signal with Int data";
ok $sresult eq $svalue, "Transmit signal with Str data";
ok $bresult1, "Transmit signal with true Bool data";
ok !$bresult2, "Transmit signal with false Bool data";

done-testing;  # optional with 'plan'
