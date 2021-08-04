
# 
# This file has been automatically generated by RaQt_maker V0.0.3.
# To modify and regenerate it, see the source code available here: 
#         https://github.com/yguillemot/RaQt_maker
# 

use NativeCall;
use Qt::QtWidgets::QtHelpers:ver<0.0.3>:auth<cpan:YGUILLEMO>:api<2>;
use Qt::QtWidgets::QtWrappers:ver<0.0.3>:auth<cpan:YGUILLEMO>:api<2>;
use Qt::QtWidgets::QPoint:ver<0.0.3>:auth<cpan:YGUILLEMO>:api<2>;
use Qt::QtWidgets::QtBase:ver<0.0.3>:auth<cpan:YGUILLEMO>:api<2>;



class QPointF:ver<0.0.3>:auth<cpan:YGUILLEMO>:api<2>
    is QtBase
    is export {

    multi sub ctor(QtBase $this) {
        $this.address = QWQPointFCtor_1();
        $this.ownedByRaku = True;
    }

    multi sub ctor(QtBase $this, QPoint $p) {
        my $a1 = $p.address;
        $this.address = QWQPointFCtor_2($a1);
        $this.ownedByRaku = True;
    }

    multi sub ctor(QtBase $this, Real $xpos, Real $ypos) {
        my Num $a1 = $xpos.Num;
        my Num $a2 = $ypos.Num;
        $this.address = QWQPointFCtor_3($a1, $a2);
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
        my QPointF $rObj = self.bless;
        ctor($rObj, |capture);
        return $rObj;
    }

    submethod DESTROY {
        if self.ownedByRaku {
            QWQPointFDtor(self.address);
            self.ownedByRaku = False;
        }
    }

    method manhattanLength( --> Real)
    {
        my $result = QWQPointFmanhattanLength(self.address);
        my $result1 = $result.Real;
        return $result1;
    }

    method isNull( --> Bool)
    {
        my $result = QWQPointFisNull(self.address);
        my $result1 = ?$result;
        return $result1;
    }

    method x( --> Real)
    {
        my $result = QWQPointFx(self.address);
        my $result1 = $result.Real;
        return $result1;
    }

    method y( --> Real)
    {
        my $result = QWQPointFy(self.address);
        my $result1 = $result.Real;
        return $result1;
    }

    method setX(Real $x)
    {
        my Num $a1 = $x.Num;
        QWQPointFsetX(self.address, $a1);
    }

    method setY(Real $y)
    {
        my Num $a1 = $y.Num;
        QWQPointFsetY(self.address, $a1);
    }

}


sub QWQPointFCtor_1()
    returns Pointer is native(&libwrapper) { * }

sub QWQPointFCtor_2(Pointer)
    returns Pointer is native(&libwrapper) { * }

sub QWQPointFCtor_3(num64, num64)
    returns Pointer is native(&libwrapper) { * }

sub QWQPointFDtor(Pointer)
    is native(&libwrapper) { * }

sub QWQPointFmanhattanLength(Pointer)
    returns num64 is native(&libwrapper) { * }

sub QWQPointFisNull(Pointer)
    returns int8 is native(&libwrapper) { * }

sub QWQPointFx(Pointer)
    returns num64 is native(&libwrapper) { * }

sub QWQPointFy(Pointer)
    returns num64 is native(&libwrapper) { * }

sub QWQPointFsetX(Pointer, num64)
    is native(&libwrapper) { * }

sub QWQPointFsetY(Pointer, num64)
    is native(&libwrapper) { * }

