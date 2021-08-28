
# 
# This file has been automatically generated by RaQt_maker V0.0.5.
# To modify and regenerate it, see the source code available here: 
#         https://github.com/yguillemot/RaQt_maker
# 

use NativeCall;
use Qt::QtWidgets::QtHelpers:ver<0.0.5>:auth<cpan:YGUILLEMO>:api<2>;
use Qt::QtWidgets::QtWrappers:ver<0.0.5>:auth<cpan:YGUILLEMO>:api<2>;
use Qt::QtWidgets::QColor:ver<0.0.5>:auth<cpan:YGUILLEMO>:api<2>;
use Qt::QtWidgets::Qt:ver<0.0.5>:auth<cpan:YGUILLEMO>:api<2>;
use Qt::QtWidgets::QtBase:ver<0.0.5>:auth<cpan:YGUILLEMO>:api<2>;



class QBrush:ver<0.0.5>:auth<cpan:YGUILLEMO>:api<2>
    is QtBase
    is export {

    multi sub ctor(QtBase $this) {
        $this.address = QWQBrushCtor_1();
        $this.ownedByRaku = True;
    }

    multi sub ctor(QtBase $this, Qt::BrushStyle $bs) {
        $this.address = QWQBrushCtor_2($bs);
        $this.ownedByRaku = True;
    }

    multi sub ctor(QtBase $this, QColor $color, Qt::BrushStyle $bs = Qt::SolidPattern) {
        my $a1 = $color.address;
        $this.address = QWQBrushCtor_3($a1, $bs);
        $this.ownedByRaku = True;
    }

    multi sub ctor(QtBase $this, NativeCall::Types::Pointer $p, Bool :$obr = False) {
        # Get access to a preexisting Qt object
        $this.address = $p;
        $this.ownedByRaku = $obr;
    }

    multi sub ctor(|capture) {
        note "QtWidgets ", ::?CLASS.^name,
             " ctor called with unsupported args";
        die "Bad args";
    }

    submethod new(|capture) {
        my QBrush $rObj = self.bless;
        ctor($rObj, |capture);
        return $rObj;
    }

    submethod DESTROY {
        if self.ownedByRaku {
            QWQBrushDtor(self.address);
            self.ownedByRaku = False;
        }
    }

    method setStyle(Qt::BrushStyle $arg1)
    {
        QWQBrushsetStyle(self.address, $arg1);
    }

    multi method setColor(QColor $color)
    {
        my $a1 = $color.address;
        QWQBrushsetColor_1(self.address, $a1);
    }

}


sub QWQBrushCtor_1()
    returns Pointer is native(&libwrapper) { * }

sub QWQBrushCtor_2(int32)
    returns Pointer is native(&libwrapper) { * }

sub QWQBrushCtor_3(Pointer, int32)
    returns Pointer is native(&libwrapper) { * }

sub QWQBrushDtor(Pointer)
    is native(&libwrapper) { * }

sub QWQBrushsetStyle(Pointer, int32)
    is native(&libwrapper) { * }

sub QWQBrushsetColor_1(Pointer, Pointer)
    is native(&libwrapper) { * }

