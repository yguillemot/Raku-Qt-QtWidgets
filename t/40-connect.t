 
use Test;

#plan 6;

use Qt::QtWidgets;


class XObj {
    has $.a is rw;
    has $.b is rw;
}


class Destination is QtObject {

    has Int $.i is rw;
    has Str $.s is rw;
    has @.l is rw;
    has %.h is rw;
    has XObj $.o is rw;
    
    method recevoir(Int $i, Str $s, @l, %h, XObj $o) is QtSlot
    {
        $!i = $i;
        $!s = $s;
        @!l = @l;
        %!h = %h;
        $!o = XObj.new(a => $o.a, b => $o.b);
    }

    method dataCopy( --> Destination) {
        Destination.new(
            i => $!i,
            s => $!s,
            l => @!l,
            h => %!h,
            o => XObj.new(a => self.o.a, b => self.o.b)
        );
    }

    method hasSameData(Destination $other --> Bool) {
        return False if self.i != $other.i;
        return False if self.s !eq $other.s;
        return False if self.l !eqv $other.l;
        return False if self.h !eqv $other.h;
        return False if self.o !eqv $other.o;
        return True;
    }
}

class Source is QtObject {
    method emettre(Int $int, Str $str, @lst, %hsh, XObj $o) is QtSignal { ... }
    method emettre2(Int $i, Str $s, %h, @l, XObj $o) is QtSignal { ... }
}

class Tempo is QtObject {
    method finish is QtSignal { ... }
}


my $qApp = QApplication.new;

my $t = Tempo.new;
connect $t, "finish", $qApp, "quit";

my $s = Source.new;
my $d = Destination.new;


dies-ok({ connect $s, "emettre2", $d, "recevoir"; },
                    "Can't connect uncompatible signal and slot");

lives-ok({ connect $s, "emettre", $d, "recevoir"; },
                    "Connect signal and slot with complex signature");

connect $s, "emettre", $d, "recevoir";

my ($e1, $e2, $r1, $r2, $r3);

# Timing thread
my $dt = 0.1;
start {
    sleep 2 * $dt;  # Allow time for $qApp.exec to start
    
    $e1 = Destination.new(
        i => 54,
        s => "Blue",
        l => < A B C >,
        h => %(< U 1 V 2 W 3 >),
        o => XObj.new(a => 7, b => 14));
    $s.emettre( 54, "Blue", < A B C >, %(< U 1 V 2 W 3 >), XObj.new(a => 7, b => 14));
    sleep $dt;
    $r1 = $d.dataCopy;
    
    disconnect $s, "emettre", $d, "recevoir";
    
    $e2 = Destination.new(
        i => 92,
        s => "Red",
        l => < g h i j >,
        h => < X 33 Z 34 Y 35 >,
        o => XObj.new(a => 89, b => 98));
    $s.emettre( 92, "Red", < g h i j >, < X 33 Z 34 Y 35 >, XObj.new(a => 89, b => 98));
    sleep $dt;
    $r2 = $d.dataCopy;
    
    connect $s, "emettre", $d, "recevoir";

    $s.emettre( 92, "Red", < g h i j >, %(< X 33 Z 34 Y 35 >), XObj.new(a => 89, b => 98));
    sleep $dt;
    $r3 = $d.dataCopy;
    
    #!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
    # Test error message
    # $s.emettre("Blue", 24, < a b >, %(< X 33 >), XObj.new(a => 8, b => 9));
    # sleep $dt;

    # say "Stopping...";
    $t.finish;
}

my $status = $qApp.exec;

ok $status == 0, "Qt Application exited successfuly";
ok $r1.hasSameData($e1), "Transmit signal with complex signature";
ok $r2.hasSameData($e1), "Signal not received while disconnected";
ok $r3.hasSameData($e2), "Signal received again when reconnected";

done-testing;  # optional with 'plan'
