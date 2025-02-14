
# 
# This file has been automatically generated by RaQt_maker V0.0.7.
# To modify and regenerate it, see the source code available here: 
#         https://github.com/yguillemot/RaQt_maker
# 

use NativeCall;
use Qt::QtWidgets:ver<0.0.7>:auth<zef:yguillemot>:api<2>;
use Qt::QtWidgets::QtHelpers:ver<0.0.7>:auth<zef:yguillemot>:api<2>;
use Qt::QtWidgets::QtWrappers:ver<0.0.7>:auth<zef:yguillemot>:api<2>;
use Qt::QtWidgets::QAbstractGraphicsShapeItem:ver<0.0.7>:auth<zef:yguillemot>:api<2>;
use Qt::QtWidgets::QGraphicsItem:ver<0.0.7>:auth<zef:yguillemot>:api<2>;
use Qt::QtWidgets::QRectF:ver<0.0.7>:auth<zef:yguillemot>:api<2>;
use Qt::QtWidgets::QtBase:ver<0.0.7>:auth<zef:yguillemot>:api<2>;
use Qt::QtWidgets::RQGraphicsRectItem:ver<0.0.7>:auth<zef:yguillemot>:api<2>;
use Qt::QtWidgets::RQPointF:ver<0.0.7>:auth<zef:yguillemot>:api<2>;



class QGraphicsRectItem:ver<0.0.7>:auth<zef:yguillemot>:api<2>
    is QAbstractGraphicsShapeItem
    is QtObject
    does RQGraphicsRectItem
    is export {

    multi sub ctor(QtBase $this, QGraphicsItem $parent = (QGraphicsItem)) {
        my $a1 = ?$parent ?? $parent.address !! QWInt2Pointer(0);
        $this.address = QWQGraphicsRectItemCtor_1($a1);
        $this.ownedByRaku = True;
    }

    multi sub subClassCtor(QtBase $this, QGraphicsItem $parent = (QGraphicsItem)) {
        my $a1 = ?$parent ?? $parent.address !! QWInt2Pointer(0);
        $this.address = SCWQGraphicsRectItemCtor_1($a1);
        $this.ownedByRaku = True;
    }

    method validateCB(Str $m) {
        QWvalidateCB_QGraphicsRectItem(self.address, self.id, $m);
    }

    multi sub ctor(QtBase $this, QRectF $rect, QGraphicsItem $parent = (QGraphicsItem)) {
        my $a1 = $rect.address;
        my $a2 = ?$parent ?? $parent.address !! QWInt2Pointer(0);
        $this.address = QWQGraphicsRectItemCtor_2($a1, $a2);
        $this.ownedByRaku = True;
    }

    multi sub subClassCtor(QtBase $this, QRectF $rect, QGraphicsItem $parent = (QGraphicsItem)) {
        my $a1 = $rect.address;
        my $a2 = ?$parent ?? $parent.address !! QWInt2Pointer(0);
        $this.address = SCWQGraphicsRectItemCtor_2($a1, $a2);
        $this.ownedByRaku = True;
    }

    multi sub ctor(QtBase $this, Real $x, Real $y, Real $w, Real $h, QGraphicsItem $parent = (QGraphicsItem)) {
        my Num $a1 = $x.Num;
        my Num $a2 = $y.Num;
        my Num $a3 = $w.Num;
        my Num $a4 = $h.Num;
        my $a5 = ?$parent ?? $parent.address !! QWInt2Pointer(0);
        $this.address = QWQGraphicsRectItemCtor_3($a1, $a2, $a3, $a4, $a5);
        $this.ownedByRaku = True;
    }

    multi sub subClassCtor(QtBase $this, Real $x, Real $y, Real $w, Real $h, QGraphicsItem $parent = (QGraphicsItem)) {
        my Num $a1 = $x.Num;
        my Num $a2 = $y.Num;
        my Num $a3 = $w.Num;
        my Num $a4 = $h.Num;
        my $a5 = ?$parent ?? $parent.address !! QWInt2Pointer(0);
        $this.address = SCWQGraphicsRectItemCtor_3($a1, $a2, $a3, $a4, $a5);
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
        my QGraphicsRectItem $rObj = self.bless;
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
            QWQGraphicsRectItemDtor(self.address);
            self.ownedByRaku = False;
        }
    }

    method rect( --> QRectF)
    {
        my $result = QWQGraphicsRectItemrect(self.address);
        my $result1 = QRectF.new($result, obr => True);
        return $result1;
    }

    multi method setRect(QRectF $rect)
    {
        my $a1 = $rect.address;
        QWQGraphicsRectItemsetRect_1(self.address, $a1);
    }

    multi method setRect(Real $x, Real $y, Real $w, Real $h)
    {
        my Num $a1 = $x.Num;
        my Num $a2 = $y.Num;
        my Num $a3 = $w.Num;
        my Num $a4 = $h.Num;
        QWQGraphicsRectItemsetRect_2(self.address, $a1, $a2, $a3, $a4);
    }

    method boundingRect( --> QRectF)
    {
        my $result = QWQGraphicsRectItemboundingRect(self.address);
        my $result1 = QRectF.new($result, obr => True);
        return $result1;
    }

    method contains(RQPointF $point --> Bool)
    {
        my $a1 = $point.address;
        my $result = QWQGraphicsRectItemcontains(self.address, $a1);
        my $result1 = ?$result;
        return $result1;
    }

}


sub QWQGraphicsRectItemCtor_1(Pointer)
    returns Pointer is native(&libwrapper) { * }

sub SCWQGraphicsRectItemCtor_1(Pointer)
    returns Pointer is native(&libwrapper) { * }

sub QWvalidateCB_QGraphicsRectItem(Pointer, int32, Str)
    is native(&libwrapper) { * }

sub QWQGraphicsRectItemCtor_2(Pointer, Pointer)
    returns Pointer is native(&libwrapper) { * }

sub SCWQGraphicsRectItemCtor_2(Pointer, Pointer)
    returns Pointer is native(&libwrapper) { * }

sub QWQGraphicsRectItemCtor_3(num64, num64, num64, num64, Pointer)
    returns Pointer is native(&libwrapper) { * }

sub SCWQGraphicsRectItemCtor_3(num64, num64, num64, num64, Pointer)
    returns Pointer is native(&libwrapper) { * }

sub QWQGraphicsRectItemDtor(Pointer)
    is native(&libwrapper) { * }

sub QWQGraphicsRectItemrect(Pointer)
    returns Pointer is native(&libwrapper) { * }

sub QWQGraphicsRectItemsetRect_1(Pointer, Pointer)
    is native(&libwrapper) { * }

sub QWQGraphicsRectItemsetRect_2(Pointer, num64, num64, num64, num64)
    is native(&libwrapper) { * }

sub QWQGraphicsRectItemboundingRect(Pointer)
    returns Pointer is native(&libwrapper) { * }

sub QWQGraphicsRectItemcontains(Pointer, Pointer)
    returns int8 is native(&libwrapper) { * }

