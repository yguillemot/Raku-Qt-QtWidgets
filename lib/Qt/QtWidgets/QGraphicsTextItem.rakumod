
# 
# This file has been automatically generated by RaQt_maker V0.0.6.
# To modify and regenerate it, see the source code available here: 
#         https://github.com/yguillemot/RaQt_maker
# 

use NativeCall;
use Qt::QtWidgets:ver<0.0.6>:auth<zef:yguillemot>:api<2>;
use Qt::QtWidgets::QtHelpers:ver<0.0.6>:auth<zef:yguillemot>:api<2>;
use Qt::QtWidgets::QtWrappers:ver<0.0.6>:auth<zef:yguillemot>:api<2>;
use Qt::QtWidgets::QFont:ver<0.0.6>:auth<zef:yguillemot>:api<2>;
use Qt::QtWidgets::QGraphicsItem:ver<0.0.6>:auth<zef:yguillemot>:api<2>;
use Qt::QtWidgets::QGraphicsObject:ver<0.0.6>:auth<zef:yguillemot>:api<2>;
use Qt::QtWidgets::QRectF:ver<0.0.6>:auth<zef:yguillemot>:api<2>;
use Qt::QtWidgets::QtBase:ver<0.0.6>:auth<zef:yguillemot>:api<2>;
use Qt::QtWidgets::RQGraphicsTextItem:ver<0.0.6>:auth<zef:yguillemot>:api<2>;



class QGraphicsTextItem:ver<0.0.6>:auth<zef:yguillemot>:api<2>
    is QGraphicsObject
    is QtObject
    does RQGraphicsTextItem
    is export {

    multi sub ctor(QtBase $this, QGraphicsItem $parent = (QGraphicsItem)) {
        my $a1 = ?$parent ?? $parent.address !! QWInt2Pointer(0);
        $this.address = QWQGraphicsTextItemCtor_1($a1);
        $this.ownedByRaku = True;
    }

    multi sub subClassCtor(QtBase $this, QGraphicsItem $parent = (QGraphicsItem)) {
        my $a1 = ?$parent ?? $parent.address !! QWInt2Pointer(0);
        $this.address = SCWQGraphicsTextItemCtor_1($a1);
        $this.ownedByRaku = True;
    }

    method validateCB(Str $m) {
        QWvalidateCB_QGraphicsTextItem(self.address, self.id, $m);
    }

    multi sub ctor(QtBase $this, Str $text, QGraphicsItem $parent = (QGraphicsItem)) {
        my $a2 = ?$parent ?? $parent.address !! QWInt2Pointer(0);
        $this.address = QWQGraphicsTextItemCtor_2($text, $a2);
        $this.ownedByRaku = True;
    }

    multi sub subClassCtor(QtBase $this, Str $text, QGraphicsItem $parent = (QGraphicsItem)) {
        my $a2 = ?$parent ?? $parent.address !! QWInt2Pointer(0);
        $this.address = SCWQGraphicsTextItemCtor_2($text, $a2);
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
        my QGraphicsTextItem $rObj = self.bless;
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
            QWQGraphicsTextItemDtor(self.address);
            self.ownedByRaku = False;
        }
    }

    method setPlainText(Str $text)
    {
        QWQGraphicsTextItemsetPlainText(self.address, $text);
    }

    method font( --> QFont)
    {
        my $result = QWQGraphicsTextItemfont(self.address);
        my $result1 = QFont.new($result, obr => True);
        return $result1;
    }

    method setFont(QFont $font)
    {
        my $a1 = $font.address;
        QWQGraphicsTextItemsetFont(self.address, $a1);
    }

    method boundingRect( --> QRectF)
    {
        my $result = QWQGraphicsTextItemboundingRect(self.address);
        my $result1 = QRectF.new($result, obr => True);
        return $result1;
    }

    method adjustSize()
    {
        QWQGraphicsTextItemadjustSize(self.address);
    }

}


sub QWQGraphicsTextItemCtor_1(Pointer)
    returns Pointer is native(&libwrapper) { * }

sub SCWQGraphicsTextItemCtor_1(Pointer)
    returns Pointer is native(&libwrapper) { * }

sub QWvalidateCB_QGraphicsTextItem(Pointer, int32, Str)
    is native(&libwrapper) { * }

sub QWQGraphicsTextItemCtor_2(Str, Pointer)
    returns Pointer is native(&libwrapper) { * }

sub SCWQGraphicsTextItemCtor_2(Str, Pointer)
    returns Pointer is native(&libwrapper) { * }

sub QWQGraphicsTextItemDtor(Pointer)
    is native(&libwrapper) { * }

sub QWQGraphicsTextItemsetPlainText(Pointer, Str)
    is native(&libwrapper) { * }

sub QWQGraphicsTextItemfont(Pointer)
    returns Pointer is native(&libwrapper) { * }

sub QWQGraphicsTextItemsetFont(Pointer, Pointer)
    is native(&libwrapper) { * }

sub QWQGraphicsTextItemboundingRect(Pointer)
    returns Pointer is native(&libwrapper) { * }

sub QWQGraphicsTextItemadjustSize(Pointer)
    is native(&libwrapper) { * }

