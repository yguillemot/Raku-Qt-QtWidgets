
# 
# This file has been automatically generated by RaQt_maker V0.0.6.
# To modify and regenerate it, see the source code available here: 
#         https://github.com/yguillemot/RaQt_maker
# 

use NativeCall;
use Qt::QtWidgets:ver<0.0.6>:auth<zef:yguillemot>:api<2>;
use Qt::QtWidgets::QtHelpers:ver<0.0.6>:auth<zef:yguillemot>:api<2>;
use Qt::QtWidgets::QtWrappers:ver<0.0.6>:auth<zef:yguillemot>:api<2>;
use Qt::QtWidgets::QBrush:ver<0.0.6>:auth<zef:yguillemot>:api<2>;
use Qt::QtWidgets::QGraphicsItem:ver<0.0.6>:auth<zef:yguillemot>:api<2>;
use Qt::QtWidgets::QPen:ver<0.0.6>:auth<zef:yguillemot>:api<2>;
use Qt::QtWidgets::QtBase:ver<0.0.6>:auth<zef:yguillemot>:api<2>;
use Qt::QtWidgets::RQAbstractGraphicsShapeItem:ver<0.0.6>:auth<zef:yguillemot>:api<2>;



class QAbstractGraphicsShapeItem:ver<0.0.6>:auth<zef:yguillemot>:api<2>
    is QGraphicsItem
    is QtObject
    does RQAbstractGraphicsShapeItem
    is export {

    multi sub ctor(QtBase $this, NativeCall::Types::Pointer $p) {
        # Get access to a preexisting Qt object
        $this.address = $p;
        $this.ownedByRaku = False;
    }

    multi sub ctor(|capture) is hidden-from-backtrace {
        unimplementedCtor("QAbstractGraphicsShapeItem");
    }

    submethod new(|capture) {
        my QAbstractGraphicsShapeItem $rObj = self.bless;
        ctor($rObj, |capture);
        return $rObj;
    }

    method pen( --> QPen)
    {
        my $result = QWQAbstractGraphicsShapeItempen(self.address);
        my $result1 = QPen.new($result, obr => True);
        return $result1;
    }

    method setPen(QPen $pen)
    {
        my $a1 = $pen.address;
        QWQAbstractGraphicsShapeItemsetPen(self.address, $a1);
    }

    method brush( --> QBrush)
    {
        my $result = QWQAbstractGraphicsShapeItembrush(self.address);
        my $result1 = QBrush.new($result, obr => True);
        return $result1;
    }

    method setBrush(QBrush $brush)
    {
        my $a1 = $brush.address;
        QWQAbstractGraphicsShapeItemsetBrush(self.address, $a1);
    }

}


sub QWQAbstractGraphicsShapeItempen(Pointer)
    returns Pointer is native(&libwrapper) { * }

sub QWQAbstractGraphicsShapeItemsetPen(Pointer, Pointer)
    is native(&libwrapper) { * }

sub QWQAbstractGraphicsShapeItembrush(Pointer)
    returns Pointer is native(&libwrapper) { * }

sub QWQAbstractGraphicsShapeItemsetBrush(Pointer, Pointer)
    is native(&libwrapper) { * }
