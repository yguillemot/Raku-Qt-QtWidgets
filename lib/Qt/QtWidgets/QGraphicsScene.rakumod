
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
use Qt::QtWidgets::QFont:ver<0.0.6>:auth<zef:yguillemot>:api<2>;
use Qt::QtWidgets::QGraphicsEllipseItem:ver<0.0.6>:auth<zef:yguillemot>:api<2>;
use Qt::QtWidgets::QGraphicsItem:ver<0.0.6>:auth<zef:yguillemot>:api<2>;
use Qt::QtWidgets::QGraphicsLineItem:ver<0.0.6>:auth<zef:yguillemot>:api<2>;
use Qt::QtWidgets::QGraphicsPathItem:ver<0.0.6>:auth<zef:yguillemot>:api<2>;
use Qt::QtWidgets::QGraphicsPixmapItem:ver<0.0.6>:auth<zef:yguillemot>:api<2>;
use Qt::QtWidgets::QGraphicsProxyWidget:ver<0.0.6>:auth<zef:yguillemot>:api<2>;
use Qt::QtWidgets::QGraphicsRectItem:ver<0.0.6>:auth<zef:yguillemot>:api<2>;
use Qt::QtWidgets::QGraphicsSimpleTextItem:ver<0.0.6>:auth<zef:yguillemot>:api<2>;
use Qt::QtWidgets::QGraphicsTextItem:ver<0.0.6>:auth<zef:yguillemot>:api<2>;
use Qt::QtWidgets::QGraphicsWidget:ver<0.0.6>:auth<zef:yguillemot>:api<2>;
use Qt::QtWidgets::QObject:ver<0.0.6>:auth<zef:yguillemot>:api<2>;
use Qt::QtWidgets::QPen:ver<0.0.6>:auth<zef:yguillemot>:api<2>;
use Qt::QtWidgets::QRectF:ver<0.0.6>:auth<zef:yguillemot>:api<2>;
use Qt::QtWidgets::Qt:ver<0.0.6>:auth<zef:yguillemot>:api<2>;
use Qt::QtWidgets::QtBase:ver<0.0.6>:auth<zef:yguillemot>:api<2>;
use Qt::QtWidgets::RQGraphicsScene:ver<0.0.6>:auth<zef:yguillemot>:api<2>;
use Qt::QtWidgets::RQGraphicsSceneMouseEvent:ver<0.0.6>:auth<zef:yguillemot>:api<2>;
use Qt::QtWidgets::RQKeyEvent:ver<0.0.6>:auth<zef:yguillemot>:api<2>;
use Qt::QtWidgets::RQLineF:ver<0.0.6>:auth<zef:yguillemot>:api<2>;
use Qt::QtWidgets::RQPainterPath:ver<0.0.6>:auth<zef:yguillemot>:api<2>;
use Qt::QtWidgets::RQPixmap:ver<0.0.6>:auth<zef:yguillemot>:api<2>;
use Qt::QtWidgets::RQWidget:ver<0.0.6>:auth<zef:yguillemot>:api<2>;



class QGraphicsScene:ver<0.0.6>:auth<zef:yguillemot>:api<2>
    is QObject
    is QtObject
    does RQGraphicsScene
    is export {

    enum ItemIndexMethod (
        BspTreeIndex => 0,
        NoIndex => -1,
    );

    enum SceneLayer (
        ItemLayer => 1,
        BackgroundLayer => 2,
        ForegroundLayer => 4,
        AllLayers => 65535,
    );
    our sub SceneLayers($e? = 0 --> Int ) is export { $e };

    multi sub ctor(QtBase $this, QObject $parent = (QObject)) {
        my $a1 = ?$parent ?? $parent.address !! QWInt2Pointer(0);
        $this.address = QWQGraphicsSceneCtor_1($a1);
        $this.ownedByRaku = True;
    }

    multi sub subClassCtor(QtBase $this, QObject $parent = (QObject)) {
        my $a1 = ?$parent ?? $parent.address !! QWInt2Pointer(0);
        $this.address = SCWQGraphicsSceneCtor_1($a1);
        $this.ownedByRaku = True;
    }

    method validateCB(Str $m) {
        QWvalidateCB_QGraphicsScene(self.address, self.id, $m);
    }

    multi sub ctor(QtBase $this, Real $x, Real $y, Real $width, Real $height, QObject $parent = (QObject)) {
        my Num $a1 = $x.Num;
        my Num $a2 = $y.Num;
        my Num $a3 = $width.Num;
        my Num $a4 = $height.Num;
        my $a5 = ?$parent ?? $parent.address !! QWInt2Pointer(0);
        $this.address = QWQGraphicsSceneCtor_3($a1, $a2, $a3, $a4, $a5);
        $this.ownedByRaku = True;
    }

    multi sub subClassCtor(QtBase $this, Real $x, Real $y, Real $width, Real $height, QObject $parent = (QObject)) {
        my Num $a1 = $x.Num;
        my Num $a2 = $y.Num;
        my Num $a3 = $width.Num;
        my Num $a4 = $height.Num;
        my $a5 = ?$parent ?? $parent.address !! QWInt2Pointer(0);
        $this.address = SCWQGraphicsSceneCtor_3($a1, $a2, $a3, $a4, $a5);
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
        my QGraphicsScene $rObj = self.bless;
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
            QWQGraphicsSceneDtor(self.address);
            self.ownedByRaku = False;
        }
    }

    method sceneRect( --> QRectF)
    {
        my $result = QWQGraphicsScenesceneRect(self.address);
        my $result1 = QRectF.new($result, obr => True);
        return $result1;
    }

    method width( --> Real)
    {
        my $result = QWQGraphicsScenewidth(self.address);
        my $result1 = $result.Real;
        return $result1;
    }

    method height( --> Real)
    {
        my $result = QWQGraphicsSceneheight(self.address);
        my $result1 = $result.Real;
        return $result1;
    }

    method itemIndexMethod( --> QGraphicsScene::ItemIndexMethod)
    {
        my $result = QWQGraphicsSceneitemIndexMethod(self.address);
        my $result1 = QGraphicsScene::ItemIndexMethod($result);
        return $result1;
    }

    method isSortCacheEnabled( --> Bool)
    {
        my $result = QWQGraphicsSceneisSortCacheEnabled(self.address);
        my $result1 = ?$result;
        return $result1;
    }

    method itemsBoundingRect( --> QRectF)
    {
        my $result = QWQGraphicsSceneitemsBoundingRect(self.address);
        my $result1 = QRectF.new($result, obr => True);
        return $result1;
    }

    method addItem(QGraphicsItem $item)
    {
        my $a1 = ?$item ?? $item.address !! QWInt2Pointer(0);
        QWQGraphicsSceneaddItem(self.address, $a1);
    }

    multi method addEllipse(QRectF $rect, QPen $pen = QPen.new(), QBrush $brush = QBrush.new() --> QGraphicsEllipseItem)
    {
        my $a1 = $rect.address;
        my $a2 = $pen.address;
        my $a3 = $brush.address;
        my $result = QWQGraphicsSceneaddEllipse_1(self.address, $a1, $a2, $a3);
        my $result1 = QGraphicsEllipseItem.new($result, obr => False);
        return $result1;
    }

    multi method addLine(RQLineF $line, QPen $pen = QPen.new() --> QGraphicsLineItem)
    {
        my $a1 = $line.address;
        my $a2 = $pen.address;
        my $result = QWQGraphicsSceneaddLine_1(self.address, $a1, $a2);
        my $result1 = QGraphicsLineItem.new($result, obr => False);
        return $result1;
    }

    method addPath(RQPainterPath $path, QPen $pen = QPen.new(), QBrush $brush = QBrush.new() --> QGraphicsPathItem)
    {
        my $a1 = $path.address;
        my $a2 = $pen.address;
        my $a3 = $brush.address;
        my $result = QWQGraphicsSceneaddPath(self.address, $a1, $a2, $a3);
        my $result1 = QGraphicsPathItem.new($result, obr => False);
        return $result1;
    }

    method addPixmap(RQPixmap $pixmap --> QGraphicsPixmapItem)
    {
        my $a1 = $pixmap.address;
        my $result = QWQGraphicsSceneaddPixmap(self.address, $a1);
        my $result1 = QGraphicsPixmapItem.new($result, obr => False);
        return $result1;
    }

    multi method addRect(QRectF $rect, QPen $pen = QPen.new(), QBrush $brush = QBrush.new() --> QGraphicsRectItem)
    {
        my $a1 = $rect.address;
        my $a2 = $pen.address;
        my $a3 = $brush.address;
        my $result = QWQGraphicsSceneaddRect_1(self.address, $a1, $a2, $a3);
        my $result1 = QGraphicsRectItem.new($result, obr => False);
        return $result1;
    }

    method addText(Str $text, QFont $font = QFont.new() --> QGraphicsTextItem)
    {
        my $a2 = $font.address;
        my $result = QWQGraphicsSceneaddText(self.address, $text, $a2);
        my $result1 = QGraphicsTextItem.new($result, obr => False);
        return $result1;
    }

    method addSimpleText(Str $text, QFont $font = QFont.new() --> QGraphicsSimpleTextItem)
    {
        my $a2 = $font.address;
        my $result = QWQGraphicsSceneaddSimpleText(self.address, $text, $a2);
        my $result1 = QGraphicsSimpleTextItem.new($result, obr => False);
        return $result1;
    }

    method addWidget(RQWidget $widget, Int $wFlags = Qt::WindowFlags() --> QGraphicsProxyWidget)
    {
        my $a1 = ?$widget ?? $widget.address !! QWInt2Pointer(0);
        my $result = QWQGraphicsSceneaddWidget(self.address, $a1, $wFlags);
        my $result1 = QGraphicsProxyWidget.new($result, obr => False);
        return $result1;
    }

    multi method addEllipse(Real $x, Real $y, Real $w, Real $h, QPen $pen = QPen.new(), QBrush $brush = QBrush.new() --> QGraphicsEllipseItem)
    {
        my Num $a1 = $x.Num;
        my Num $a2 = $y.Num;
        my Num $a3 = $w.Num;
        my Num $a4 = $h.Num;
        my $a5 = $pen.address;
        my $a6 = $brush.address;
        my $result = QWQGraphicsSceneaddEllipse_2(self.address, $a1, $a2, $a3, $a4, $a5, $a6);
        my $result1 = QGraphicsEllipseItem.new($result, obr => False);
        return $result1;
    }

    multi method addLine(Real $x1, Real $y1, Real $x2, Real $y2, QPen $pen = QPen.new() --> QGraphicsLineItem)
    {
        my Num $a1 = $x1.Num;
        my Num $a2 = $y1.Num;
        my Num $a3 = $x2.Num;
        my Num $a4 = $y2.Num;
        my $a5 = $pen.address;
        my $result = QWQGraphicsSceneaddLine_2(self.address, $a1, $a2, $a3, $a4, $a5);
        my $result1 = QGraphicsLineItem.new($result, obr => False);
        return $result1;
    }

    multi method addRect(Real $x, Real $y, Real $w, Real $h, QPen $pen = QPen.new(), QBrush $brush = QBrush.new() --> QGraphicsRectItem)
    {
        my Num $a1 = $x.Num;
        my Num $a2 = $y.Num;
        my Num $a3 = $w.Num;
        my Num $a4 = $h.Num;
        my $a5 = $pen.address;
        my $a6 = $brush.address;
        my $result = QWQGraphicsSceneaddRect_2(self.address, $a1, $a2, $a3, $a4, $a5, $a6);
        my $result1 = QGraphicsRectItem.new($result, obr => False);
        return $result1;
    }

    method mouseGrabberItem( --> QGraphicsItem)
    {
        my $result = QWQGraphicsScenemouseGrabberItem(self.address);
        my $result1 = QGraphicsItem.new($result, obr => False);
        return $result1;
    }

    method backgroundBrush( --> QBrush)
    {
        my $result = QWQGraphicsScenebackgroundBrush(self.address);
        my $result1 = QBrush.new($result, obr => True);
        return $result1;
    }

    method activePanel( --> QGraphicsItem)
    {
        my $result = QWQGraphicsSceneactivePanel(self.address);
        my $result1 = QGraphicsItem.new($result, obr => False);
        return $result1;
    }

    method activeWindow( --> QGraphicsWidget)
    {
        my $result = QWQGraphicsSceneactiveWindow(self.address);
        my $result1 = QGraphicsWidget.new($result, obr => False);
        return $result1;
    }

    method minimumRenderSize( --> Real)
    {
        my $result = QWQGraphicsSceneminimumRenderSize(self.address);
        my $result1 = $result.Real;
        return $result1;
    }

    method advance() is QtSlot
    {
        QWQGraphicsSceneadvance(self.address);
    }

}


sub QWQGraphicsSceneCtor_1(Pointer)
    returns Pointer is native(&libwrapper) { * }

sub SCWQGraphicsSceneCtor_1(Pointer)
    returns Pointer is native(&libwrapper) { * }

sub QWvalidateCB_QGraphicsScene(Pointer, int32, Str)
    is native(&libwrapper) { * }

sub QWQGraphicsSceneCtor_3(num64, num64, num64, num64, Pointer)
    returns Pointer is native(&libwrapper) { * }

sub SCWQGraphicsSceneCtor_3(num64, num64, num64, num64, Pointer)
    returns Pointer is native(&libwrapper) { * }

sub QWQGraphicsSceneDtor(Pointer)
    is native(&libwrapper) { * }

sub QWQGraphicsScenesceneRect(Pointer)
    returns Pointer is native(&libwrapper) { * }

sub QWQGraphicsScenewidth(Pointer)
    returns num64 is native(&libwrapper) { * }

sub QWQGraphicsSceneheight(Pointer)
    returns num64 is native(&libwrapper) { * }

sub QWQGraphicsSceneitemIndexMethod(Pointer)
    returns int32 is native(&libwrapper) { * }

sub QWQGraphicsSceneisSortCacheEnabled(Pointer)
    returns int8 is native(&libwrapper) { * }

sub QWQGraphicsSceneitemsBoundingRect(Pointer)
    returns Pointer is native(&libwrapper) { * }

sub QWQGraphicsSceneaddItem(Pointer, Pointer)
    is native(&libwrapper) { * }

sub QWQGraphicsSceneaddEllipse_1(Pointer, Pointer, Pointer, Pointer)
    returns Pointer is native(&libwrapper) { * }

sub QWQGraphicsSceneaddLine_1(Pointer, Pointer, Pointer)
    returns Pointer is native(&libwrapper) { * }

sub QWQGraphicsSceneaddPath(Pointer, Pointer, Pointer, Pointer)
    returns Pointer is native(&libwrapper) { * }

sub QWQGraphicsSceneaddPixmap(Pointer, Pointer)
    returns Pointer is native(&libwrapper) { * }

sub QWQGraphicsSceneaddRect_1(Pointer, Pointer, Pointer, Pointer)
    returns Pointer is native(&libwrapper) { * }

sub QWQGraphicsSceneaddText(Pointer, Str, Pointer)
    returns Pointer is native(&libwrapper) { * }

sub QWQGraphicsSceneaddSimpleText(Pointer, Str, Pointer)
    returns Pointer is native(&libwrapper) { * }

sub QWQGraphicsSceneaddWidget(Pointer, Pointer, int32)
    returns Pointer is native(&libwrapper) { * }

sub QWQGraphicsSceneaddEllipse_2(Pointer, num64, num64, num64, num64, Pointer, Pointer)
    returns Pointer is native(&libwrapper) { * }

sub QWQGraphicsSceneaddLine_2(Pointer, num64, num64, num64, num64, Pointer)
    returns Pointer is native(&libwrapper) { * }

sub QWQGraphicsSceneaddRect_2(Pointer, num64, num64, num64, num64, Pointer, Pointer)
    returns Pointer is native(&libwrapper) { * }

sub QWQGraphicsScenemouseGrabberItem(Pointer)
    returns Pointer is native(&libwrapper) { * }

sub QWQGraphicsScenebackgroundBrush(Pointer)
    returns Pointer is native(&libwrapper) { * }

sub QWQGraphicsSceneactivePanel(Pointer)
    returns Pointer is native(&libwrapper) { * }

sub QWQGraphicsSceneactiveWindow(Pointer)
    returns Pointer is native(&libwrapper) { * }

sub QWQGraphicsSceneminimumRenderSize(Pointer)
    returns num64 is native(&libwrapper) { * }

sub QWQGraphicsSceneadvance(Pointer)
    is native(&libwrapper) { * }

