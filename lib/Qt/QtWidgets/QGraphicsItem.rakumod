
# 
# This file has been automatically generated by RaQt_maker V0.0.7.
# To modify and regenerate it, see the source code available here: 
#         https://github.com/yguillemot/RaQt_maker
# 

use NativeCall;
use Qt::QtWidgets:ver<0.0.7>:auth<zef:yguillemot>:api<2>;
use Qt::QtWidgets::QtHelpers:ver<0.0.7>:auth<zef:yguillemot>:api<2>;
use Qt::QtWidgets::QtWrappers:ver<0.0.7>:auth<zef:yguillemot>:api<2>;
use Qt::QtWidgets::QRectF:ver<0.0.7>:auth<zef:yguillemot>:api<2>;
use Qt::QtWidgets::QtBase:ver<0.0.7>:auth<zef:yguillemot>:api<2>;
use Qt::QtWidgets::RQGraphicsItem:ver<0.0.7>:auth<zef:yguillemot>:api<2>;
use Qt::QtWidgets::RQPointF:ver<0.0.7>:auth<zef:yguillemot>:api<2>;



class QGraphicsItem:ver<0.0.7>:auth<zef:yguillemot>:api<2>
    is QtObject
    does RQGraphicsItem
    is export {

    my constant %callers = {
        "QAbstractGraphicsShapeItem" => 0,
        "QGraphicsEllipseItem" => 1,
        "QGraphicsItemGroup" => 2,
        "QGraphicsLineItem" => 3,
        "QGraphicsObject" => 4,
        "QGraphicsPathItem" => 5,
        "QGraphicsPixmapItem" => 6,
        "QGraphicsPolygonItem" => 7,
        "QGraphicsProxyWidget" => 8,
        "QGraphicsRectItem" => 9,
        "QGraphicsSimpleTextItem" => 10,
        "QGraphicsTextItem" => 11,
        "QGraphicsWidget" => 12,
    }

    multi sub ctor(QtBase $this, NativeCall::Types::Pointer $p) {
        # Get access to a preexisting Qt object
        $this.address = $p;
        $this.ownedByRaku = False;
    }

    multi sub ctor(|capture) is hidden-from-backtrace {
        unimplementedCtor("QGraphicsItem");
    }

    submethod new(|capture) {
        my QGraphicsItem $rObj = self.bless;
        ctor($rObj, |capture);
        return $rObj;
    }

    method setParentItem($c: QGraphicsItem $parent)
    {
        my $a1 = ?$parent ?? $parent.address !! QWInt2Pointer(0);
        my $ci = %callers{$c.^name};   # Caller index
        QWQGraphicsItemsetParentItem(self.address, $ci, $a1);
    }

    method hide($c: )
    {
        my $ci = %callers{$c.^name};   # Caller index
        QWQGraphicsItemhide(self.address, $ci);
    }

    method show($c: )
    {
        my $ci = %callers{$c.^name};   # Caller index
        QWQGraphicsItemshow(self.address, $ci);
    }

    method setEnabled($c: Bool $enabled)
    {
        my int8 $a1 = $enabled.Int;
        my $ci = %callers{$c.^name};   # Caller index
        QWQGraphicsItemsetEnabled(self.address, $ci, $a1);
    }

    method x($c:  --> Real)
    {
        my $ci = %callers{$c.^name};   # Caller index
        my $result = QWQGraphicsItemx(self.address, $ci);
        my $result1 = $result.Real;
        return $result1;
    }

    method setX($c: Real $x)
    {
        my Num $a1 = $x.Num;
        my $ci = %callers{$c.^name};   # Caller index
        QWQGraphicsItemsetX(self.address, $ci, $a1);
    }

    method y($c:  --> Real)
    {
        my $ci = %callers{$c.^name};   # Caller index
        my $result = QWQGraphicsItemy(self.address, $ci);
        my $result1 = $result.Real;
        return $result1;
    }

    method setY($c: Real $y)
    {
        my Num $a1 = $y.Num;
        my $ci = %callers{$c.^name};   # Caller index
        QWQGraphicsItemsetY(self.address, $ci, $a1);
    }

    multi method setPos($c: RQPointF $pos)
    {
        my $a1 = $pos.address;
        my $ci = %callers{$c.^name};   # Caller index
        QWQGraphicsItemsetPos_1(self.address, $ci, $a1);
    }

    multi method setPos($c: Real $x, Real $y)
    {
        my Num $a1 = $x.Num;
        my Num $a2 = $y.Num;
        my $ci = %callers{$c.^name};   # Caller index
        QWQGraphicsItemsetPos_2(self.address, $ci, $a1, $a2);
    }

    multi method ensureVisible($c: QRectF $rect = QRectF.new(), Int $xmargin = 50, Int $ymargin = 50)
    {
        my $a1 = $rect.address;
        my $ci = %callers{$c.^name};   # Caller index
        QWQGraphicsItemensureVisible_1(self.address, $ci, $a1, $xmargin, $ymargin);
    }

    multi method ensureVisible($c: Real $x, Real $y, Real $w, Real $h, Int $xmargin = 50, Int $ymargin = 50)
    {
        my Num $a1 = $x.Num;
        my Num $a2 = $y.Num;
        my Num $a3 = $w.Num;
        my Num $a4 = $h.Num;
        my $ci = %callers{$c.^name};   # Caller index
        QWQGraphicsItemensureVisible_2(self.address, $ci, $a1, $a2, $a3, $a4, $xmargin, $ymargin);
    }

    method zValue($c:  --> Real)
    {
        my $ci = %callers{$c.^name};   # Caller index
        my $result = QWQGraphicsItemzValue(self.address, $ci);
        my $result1 = $result.Real;
        return $result1;
    }

    method setZValue($c: Real $z)
    {
        my Num $a1 = $z.Num;
        my $ci = %callers{$c.^name};   # Caller index
        QWQGraphicsItemsetZValue(self.address, $ci, $a1);
    }

    method childrenBoundingRect($c:  --> QRectF)
    {
        my $ci = %callers{$c.^name};   # Caller index
        my $result = QWQGraphicsItemchildrenBoundingRect(self.address, $ci);
        my $result1 = QRectF.new($result, obr => True);
        return $result1;
    }

    method sceneBoundingRect($c:  --> QRectF)
    {
        my $ci = %callers{$c.^name};   # Caller index
        my $result = QWQGraphicsItemsceneBoundingRect(self.address, $ci);
        my $result1 = QRectF.new($result, obr => True);
        return $result1;
    }

    method contains($c: RQPointF $point --> Bool)
    {
        my $a1 = $point.address;
        my $ci = %callers{$c.^name};   # Caller index
        my $result = QWQGraphicsItemcontains(self.address, $ci, $a1);
        my $result1 = ?$result;
        return $result1;
    }

    method prepareGeometryChange($c: )
    {
        my $ci = %callers{$c.^name};   # Caller index
        QWQGraphicsItemprepareGeometryChange(self.address, $ci);
    }

}


sub QWQGraphicsItemsetParentItem(Pointer, int32, Pointer)
    is native(&libwrapper) { * }

sub QWQGraphicsItemhide(Pointer, int32)
    is native(&libwrapper) { * }

sub QWQGraphicsItemshow(Pointer, int32)
    is native(&libwrapper) { * }

sub QWQGraphicsItemsetEnabled(Pointer, int32, int8)
    is native(&libwrapper) { * }

sub QWQGraphicsItemx(Pointer, int32)
    returns num64 is native(&libwrapper) { * }

sub QWQGraphicsItemsetX(Pointer, int32, num64)
    is native(&libwrapper) { * }

sub QWQGraphicsItemy(Pointer, int32)
    returns num64 is native(&libwrapper) { * }

sub QWQGraphicsItemsetY(Pointer, int32, num64)
    is native(&libwrapper) { * }

sub QWQGraphicsItemsetPos_1(Pointer, int32, Pointer)
    is native(&libwrapper) { * }

sub QWQGraphicsItemsetPos_2(Pointer, int32, num64, num64)
    is native(&libwrapper) { * }

sub QWQGraphicsItemensureVisible_1(Pointer, int32, Pointer, int32, int32)
    is native(&libwrapper) { * }

sub QWQGraphicsItemensureVisible_2(Pointer, int32, num64, num64, num64, num64, int32, int32)
    is native(&libwrapper) { * }

sub QWQGraphicsItemzValue(Pointer, int32)
    returns num64 is native(&libwrapper) { * }

sub QWQGraphicsItemsetZValue(Pointer, int32, num64)
    is native(&libwrapper) { * }

sub QWQGraphicsItemchildrenBoundingRect(Pointer, int32)
    returns Pointer is native(&libwrapper) { * }

sub QWQGraphicsItemsceneBoundingRect(Pointer, int32)
    returns Pointer is native(&libwrapper) { * }

sub QWQGraphicsItemcontains(Pointer, int32, Pointer)
    returns int8 is native(&libwrapper) { * }

sub QWQGraphicsItemprepareGeometryChange(Pointer, int32)
    is native(&libwrapper) { * }

