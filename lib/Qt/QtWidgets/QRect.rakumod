
# 
# This file has been automatically generated by RaQt_maker V0.0.5.
# To modify and regenerate it, see the source code available here: 
#         https://github.com/yguillemot/RaQt_maker
# 

use NativeCall;
use Qt::QtWidgets::QtHelpers:ver<0.0.5>:auth<cpan:YGUILLEMO>:api<2>;
use Qt::QtWidgets::QtWrappers:ver<0.0.5>:auth<cpan:YGUILLEMO>:api<2>;
use Qt::QtWidgets::QPoint:ver<0.0.5>:auth<cpan:YGUILLEMO>:api<2>;
use Qt::QtWidgets::QtBase:ver<0.0.5>:auth<cpan:YGUILLEMO>:api<2>;



class QRect:ver<0.0.5>:auth<cpan:YGUILLEMO>:api<2>
    is QtBase
    is export {

    multi sub ctor(QtBase $this) {
        $this.address = QWQRectCtor_1();
        $this.ownedByRaku = True;
    }

    multi sub ctor(QtBase $this, QPoint $topleft, QPoint $bottomright) {
        my $a1 = $topleft.address;
        my $a2 = $bottomright.address;
        $this.address = QWQRectCtor_2($a1, $a2);
        $this.ownedByRaku = True;
    }

    multi sub ctor(QtBase $this, Int $left, Int $top, Int $width, Int $height) {
        $this.address = QWQRectCtor_4($left, $top, $width, $height);
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
        my QRect $rObj = self.bless;
        ctor($rObj, |capture);
        return $rObj;
    }

    submethod DESTROY {
        if self.ownedByRaku {
            QWQRectDtor(self.address);
            self.ownedByRaku = False;
        }
    }

    method x( --> Int)
    {
        my $result = QWQRectx(self.address);
        return $result;
    }

    method y( --> Int)
    {
        my $result = QWQRecty(self.address);
        return $result;
    }

    method width( --> Int)
    {
        my $result = QWQRectwidth(self.address);
        return $result;
    }

    method height( --> Int)
    {
        my $result = QWQRectheight(self.address);
        return $result;
    }

}


sub QWQRectCtor_1()
    returns Pointer is native(&libwrapper) { * }

sub QWQRectCtor_2(Pointer, Pointer)
    returns Pointer is native(&libwrapper) { * }

sub QWQRectCtor_4(int32, int32, int32, int32)
    returns Pointer is native(&libwrapper) { * }

sub QWQRectDtor(Pointer)
    is native(&libwrapper) { * }

sub QWQRectx(Pointer)
    returns int32 is native(&libwrapper) { * }

sub QWQRecty(Pointer)
    returns int32 is native(&libwrapper) { * }

sub QWQRectwidth(Pointer)
    returns int32 is native(&libwrapper) { * }

sub QWQRectheight(Pointer)
    returns int32 is native(&libwrapper) { * }

