 
use Test;

# plan 6;

use Qt::QtWidgets;

my Bool $value;
my Int $ivalue;
my Str $svalue;
my Bool $bvalue;

class Destination is QtObject {
    multi method xrecevoir() is QtSlot
    {
        $value = !$value;
    }

    multi method irecevoir(Int $i) is QtSlot
    {
        $ivalue = $i;
    }

    multi method srecevoir(Str $s) is QtSlot
    {
        $svalue = $s;
    }

    multi method brecevoir(Bool $b) is QtSlot
    {
        $bvalue = $b;
    }
}

class Source is QtObject {
    method xemettre() is QtSignal { ... }
    method iemettre(Int $i) is QtSignal { ... }
    method semettre(Str $s) is QtSignal { ... }
    method bemettre(Bool $b) is QtSignal { ... }
}




my @states;

class State {
    has Bool $.value = False;
    has Int $.ivalue = 0;
    has Str $.svalue = "Hello";
    has Bool $.bvalue = False; 
    
    method isok(Bool $v, Int $i, Str $s, Bool $b) {
        $!value == $v && $!ivalue == $i && $!svalue eq $s && $!bvalue == $b;
    }
}








class Tempo is QtObject {
    method finish is QtSignal { ... }
}


my $qApp = QApplication.new;
my $s = Source.new;
my $d = Destination.new;
my $t = Tempo.new;

lives-ok({ connect $s, "xemettre", $d, "xrecevoir"; },
                    "Can connect existing signal to existing slot");
dies-ok({ connect $s, "yemettre", $d, "xrecevoir"; },
                    "Can't connect not existing signal to existing slot");
dies-ok({ connect $s, "xemettre", $d, "yrecevoir"; },
                    "Can't connect existing signal to not existing slot");
dies-ok({ connect $s, "iemettre", $d, "srecevoir"; },
                    "Can't connect uncompatible signal and slot");
lives-ok({ connect $s, "iemettre", $d, "irecevoir"; },
                    "Can connect existing signal to existing slot");
connect $s, "semettre", $d, "srecevoir";
connect $s, "bemettre", $d, "brecevoir";
connect $t, "finish", $qApp, "quit";


# Setup initial state
$value = False;
$ivalue = 0;
$svalue = "Hello";
$bvalue = False;

@states[0] = State.new(:$value, :$ivalue, :$svalue, :$bvalue);

# Working thread
my $dt = 0.1;
start {
    sleep 2 * $dt;  # Allow time for $qApp.exec to start
    
    $s.xemettre;
    sleep $dt;
    @states[1] = State.new(:$value, :$ivalue, :$svalue, :$bvalue);
    # Should be: True, 0, "Hello", False
    
    $s.iemettre(25);
    sleep $dt;
    @states[2] = State.new(:$value, :$ivalue, :$svalue, :$bvalue);
    # Should be: True, 25, "Hello", False
     
    $s.semettre("How are you?");
    sleep $dt;
    @states[3] = State.new(:$value, :$ivalue, :$svalue, :$bvalue);
    # Should be: True, 25, "How are you?", False
    
    $s.bemettre(True);
    sleep $dt;
    @states[4] = State.new(:$value, :$ivalue, :$svalue, :$bvalue);
    # Should be: True, 25, "How are you?", True

    $s.bemettre(False);
    sleep $dt;
    @states[5] = State.new(:$value, :$ivalue, :$svalue, :$bvalue);
    # Should be: True, 25, "How are you?", False
    
    # Test disconnection
    disconnect $s, "semettre", $d, "srecevoir";
    disconnect $s, "bemettre", $d, "brecevoir";
    
    $s.xemettre;
    $s.iemettre(42);
    $s.semettre("The weather is nice");
    $s.bemettre(True);
    sleep $dt;
    @states[6] = State.new(:$value, :$ivalue, :$svalue, :$bvalue);
    # Should be: False, 42, "How are you?", False
    
    # Change connections
    connect $s, "semettre", $d, "srecevoir";
    connect $s, "bemettre", $d, "brecevoir";
    disconnect $s, "xemettre", $d, "xrecevoir";
    disconnect $s, "iemettre", $d, "irecevoir";
    
    $s.xemettre;
    $s.iemettre(-12);
    $s.semettre("Good bye");
    $s.bemettre(True);
    sleep $dt;
    @states[7] = State.new(:$value, :$ivalue, :$svalue, :$bvalue);
    # Should be: False, 42, "Good bye", True
    
    say "Stopping...";
    $t.finish;
}

my $status = $qApp.exec;


# Treatment of results

ok $status == 0, "Qt Application exited successfuly";

ok @states[0].isok(False, 0, "Hello", False), "Initial values";

ok @states[1].isok(True, 0, "Hello", False), "Transmit signal without data";

ok @states[2].isok(True, 25, "Hello", False), "Transmit signal with Int data";

ok @states[3].isok(True, 25, "How are you?", False),
                                    "Transmit signal with Str data";

ok @states[4].isok(True, 25, "How are you?", True),
                                    "Transmit signal with true Bool data";

ok @states[5].isok(True, 25, "How are you?", False),
                                    "Transmit signal with false Bool data";

ok @states[6].isok(False, 42, "How are you?", False), "Disconnection";

ok @states[7].isok(False, 42, "Good bye", True), "Disconnection and reconnection";

done-testing;  # optional with 'plan'
