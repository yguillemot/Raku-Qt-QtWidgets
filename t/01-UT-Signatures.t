

# Test comparison of signatures

#`{{

The most usual case : 
method sgn1(Int $a, Str $b, Bool $c) is QtSignal { ... }
method slt1(Int $x, Str $y, Bool $z) is QtSlot {  }
connect($src, "sgn1", $dst, "slt1") works
    C++ Qt connect call :
        QObject::connect(src, SIGNAL(sgn4(int, QString, bool)),
                         dst, SLOT(slt4(int, QString, bool)));
                         
Arguments are wrongly paired :
method sgn6(Int $a, Str $b, Bool $c) is QtSignal { ... }
method slt6(Int $x, Bool $y, Str $z) is QtSlot {  }
connect($src, "sgn6", $dst, "slt6") can't work

Slot has too much arguments :
method sgn2(Int $a, Str $b) is QtSignal { ... }
method slt2(Int $x, Str $y, Bool $z) is QtSlot {  }
connect($src, "sgn2", $dst, "slt2") doesn't work : $z has no value

Slot additional arguments have default values
method sgn3(Int $a, Str $b) is QtSignal { ... }
method slt3(Int $x, Str $y, Bool $z = True) is QtSlot {  }
connect($src, "sgn3", $dst, "slt3") should work : $z has a default value
    The defaulted value must be imitted in the C++ Qt connect call :
        QObject::connect(src, SIGNAL(sgn3(int, QString)),
                         dst, SLOT(slt3(int, QString)));

Signal has too much arguments :
method sgn4(Int $a, Str $b, Bool $c) is QtSignal { ... }
method slt4(Int $x, Str $y) is QtSlot {  }
connect($src, "sgn4", $dst, "slt4") should work : $c argument should be ignored
   This additional argument must be omitted in the C++ Qt connect call :
        QObject::connect(src, SIGNAL(sgn4(int, QString)),
                         dst, SLOT(slt4(int, QString)));
        
A default value of the signal argument doesn't change anything :
method sgn5(Int $a, Str $b, Bool $c = False) is QtSignal { ... }
method slt5(Int $x, Str $y) is QtSlot {  }
connect($src, "sgn5", $dst, "slt5") should work : $c argument should be ignored
   This additional argument must be omitted in the C++ Qt connect call :
        QObject::connect(src, SIGNAL(sgn5(int, QString)),
                         dst, SLOT(slt((int, QString)));
}}



use Test;

use Qt::QtWidgets::QtHelpers;


my $r;

# slotAcceptsSig: The first positionnal argument is slot, second one is signal;

$r = slotAcceptsSig(:(Int $x, Str $y, Bool $z), :(Int $a, Str $b, Bool $c));
ok $r == 0, "Usual working case";

$r = slotAcceptsSig(:(Int $x, Bool $y, Str $z), :(Int $a, Str $b, Bool $c));
ok $r == -1, "Wrongly paired arguments";

$r = slotAcceptsSig(:(Int $x, Str $y, Bool $z), :(Int $a, Str $b));
ok $r == -1, "Slot has too much arguments";

$r = slotAcceptsSig(:(Int $x, Str $y, Bool $z = True), :(Int $a, Str $b));
ok $r == 0, "Slot additional arguments have default values";

$r = slotAcceptsSig(:(Int $x, Str $y), :(Int $a, Str $b, Bool $c));
ok $r == 1, "Signal has too much arguments";

$r = slotAcceptsSig(:(Int $x, Str $y), :(Int $a, Str $b, Bool $c = False));
ok $r == 1, "Signal has too much arguments with default values";





$r = slotAcceptsSig(:(Bool, Int, Str) ,:(Bool, Int $z, Str));
ok $r == 0, ':(Bool, Int $z, Str) ==> :(Bool, Int, Str)';

$r = slotAcceptsSig(:(Bool, Int, Str) ,:(Bool, Int $z, Str $u = "Foo"));
ok $r == 0, ':(Bool, Int $z,  Str $u = "Foo") ==> :(Bool, Int, Str)';

$r = slotAcceptsSig(:(Bool, Int, Str, Int, Str) ,:(Bool, Int $z, Str));
ok $r == -1, ':(Bool, Int $z, Str) X=> :(Bool, Int, Str, Int, Str)';

$r = slotAcceptsSig(:(Bool, Int, Str) ,:(Bool, Int $z, Str, Int, Num));
ok $r  == 2, ':(Bool, Int $z, Str, Int, Num) ==> :(Bool, Int, Str)';

$r = slotAcceptsSig(:(Bool, Int, Int = 42) ,:(Bool, Int $z, Int, Int, Num));
ok $r  == 2, ':(Bool, Int $z, Int, Int, Num) ==> :(Bool, Int, Int = 42)';




done-testing;






