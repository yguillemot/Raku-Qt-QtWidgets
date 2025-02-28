
# 
# This file has been automatically generated by RaQt_maker V0.0.7.
# To modify and regenerate it, see the source code available here: 
#         https://github.com/yguillemot/RaQt_maker
# 

use NativeCall;
use Qt::QtWidgets:ver<0.0.7>:auth<zef:yguillemot>:api<2>;
use Qt::QtWidgets::QtHelpers:ver<0.0.7>:auth<zef:yguillemot>:api<2>;
use Qt::QtWidgets::QtWrappers:ver<0.0.7>:auth<zef:yguillemot>:api<2>;
use Qt::QtWidgets::QRect:ver<0.0.7>:auth<zef:yguillemot>:api<2>;
use Qt::QtWidgets::QRectF:ver<0.0.7>:auth<zef:yguillemot>:api<2>;
use Qt::QtWidgets::Qt:ver<0.0.7>:auth<zef:yguillemot>:api<2>;
use Qt::QtWidgets::QtBase:ver<0.0.7>:auth<zef:yguillemot>:api<2>;
use Qt::QtWidgets::RQMatrix:ver<0.0.7>:auth<zef:yguillemot>:api<2>;



class QMatrix:ver<0.0.7>:auth<zef:yguillemot>:api<2>
    is QtObject
    does RQMatrix
    is export {

    multi sub ctor(QtBase $this, Qt::Initialization $arg1) {
        $this.address = QWQMatrixCtor_1($arg1);
        $this.ownedByRaku = True;
    }

    multi sub subClassCtor(QtBase $this, Qt::Initialization $arg1) {
        $this.address = SCWQMatrixCtor_1($arg1);
        $this.ownedByRaku = True;
    }

    method validateCB(Str $m) {
        QWvalidateCB_QMatrix(self.address, self.id, $m);
    }

    multi sub ctor(QtBase $this) {
        $this.address = QWQMatrixCtor_2();
        $this.ownedByRaku = True;
    }

    multi sub subClassCtor(QtBase $this) {
        $this.address = SCWQMatrixCtor_2();
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
        my QMatrix $rObj = self.bless;
        ctor($rObj, |capture);
        return $rObj;
    }

    multi sub subClassCtor(|capture) {
        note "QtWidgets subclass ", ::?CLASS.^name,
             " ctor called with unsupported args";
        die "Bad args";
    }

    submethod subClass(|capture) {
        subClassCtor(self, |capture);
        self.validateCallBacks();
    }

    submethod DESTROY {
        if self.ownedByRaku {
            QWQMatrixDtor(self.address);
            self.ownedByRaku = False;
        }
    }

    method setMatrix(Real $m11, Real $m12, Real $m21, Real $m22, Real $dx, Real $dy)
    {
        my Num $a1 = $m11.Num;
        my Num $a2 = $m12.Num;
        my Num $a3 = $m21.Num;
        my Num $a4 = $m22.Num;
        my Num $a5 = $dx.Num;
        my Num $a6 = $dy.Num;
        QWQMatrixsetMatrix(self.address, $a1, $a2, $a3, $a4, $a5, $a6);
    }

    multi method mapRect(QRect $arg1 --> QRect)
    {
        my $a1 = $arg1.address;
        my $result = QWQMatrixmapRect_1(self.address, $a1);
        my $result1 = QRect.new($result, obr => True);
        return $result1;
    }

    multi method mapRect(QRectF $arg1 --> QRectF)
    {
        my $a1 = $arg1.address;
        my $result = QWQMatrixmapRect_2(self.address, $a1);
        my $result1 = QRectF.new($result, obr => True);
        return $result1;
    }

    method reset()
    {
        QWQMatrixreset(self.address);
    }

    method translate(Real $dx, Real $dy --> QMatrix)
    {
        my Num $a1 = $dx.Num;
        my Num $a2 = $dy.Num;
        my $result = QWQMatrixtranslate(self.address, $a1, $a2);
        my $result1 = QMatrix.new($result, obr => False);
        return $result1;
    }

    method scale(Real $sx, Real $sy --> QMatrix)
    {
        my Num $a1 = $sx.Num;
        my Num $a2 = $sy.Num;
        my $result = QWQMatrixscale(self.address, $a1, $a2);
        my $result1 = QMatrix.new($result, obr => False);
        return $result1;
    }

    method shear(Real $sh, Real $sv --> QMatrix)
    {
        my Num $a1 = $sh.Num;
        my Num $a2 = $sv.Num;
        my $result = QWQMatrixshear(self.address, $a1, $a2);
        my $result1 = QMatrix.new($result, obr => False);
        return $result1;
    }

    method rotate(Real $a --> QMatrix)
    {
        my Num $a1 = $a.Num;
        my $result = QWQMatrixrotate(self.address, $a1);
        my $result1 = QMatrix.new($result, obr => False);
        return $result1;
    }

}


sub QWQMatrixCtor_1(int32)
    returns Pointer is native(&libwrapper) { * }

sub SCWQMatrixCtor_1(int32)
    returns Pointer is native(&libwrapper) { * }

sub QWvalidateCB_QMatrix(Pointer, int32, Str)
    is native(&libwrapper) { * }

sub QWQMatrixCtor_2()
    returns Pointer is native(&libwrapper) { * }

sub SCWQMatrixCtor_2()
    returns Pointer is native(&libwrapper) { * }

sub QWQMatrixDtor(Pointer)
    is native(&libwrapper) { * }

sub QWQMatrixsetMatrix(Pointer, num64, num64, num64, num64, num64, num64)
    is native(&libwrapper) { * }

sub QWQMatrixmapRect_1(Pointer, Pointer)
    returns Pointer is native(&libwrapper) { * }

sub QWQMatrixmapRect_2(Pointer, Pointer)
    returns Pointer is native(&libwrapper) { * }

sub QWQMatrixreset(Pointer)
    is native(&libwrapper) { * }

sub QWQMatrixtranslate(Pointer, num64, num64)
    returns Pointer is native(&libwrapper) { * }

sub QWQMatrixscale(Pointer, num64, num64)
    returns Pointer is native(&libwrapper) { * }

sub QWQMatrixshear(Pointer, num64, num64)
    returns Pointer is native(&libwrapper) { * }

sub QWQMatrixrotate(Pointer, num64)
    returns Pointer is native(&libwrapper) { * }

