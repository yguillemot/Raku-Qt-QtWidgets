
# 
# This file has been automatically generated by RaQt_maker V0.0.6.
# To modify and regenerate it, see the source code available here: 
#         https://github.com/yguillemot/RaQt_maker
# 

use NativeCall;
use Qt::QtWidgets:ver<0.0.6>:auth<zef:yguillemot>:api<2>;
use Qt::QtWidgets::QtHelpers:ver<0.0.6>:auth<zef:yguillemot>:api<2>;
use Qt::QtWidgets::QtWrappers:ver<0.0.6>:auth<zef:yguillemot>:api<2>;
use Qt::QtWidgets::QAction:ver<0.0.6>:auth<zef:yguillemot>:api<2>;
use Qt::QtWidgets::QMenu:ver<0.0.6>:auth<zef:yguillemot>:api<2>;
use Qt::QtWidgets::QSize:ver<0.0.6>:auth<zef:yguillemot>:api<2>;
use Qt::QtWidgets::QWidget:ver<0.0.6>:auth<zef:yguillemot>:api<2>;
use Qt::QtWidgets::Qt:ver<0.0.6>:auth<zef:yguillemot>:api<2>;
use Qt::QtWidgets::QtBase:ver<0.0.6>:auth<zef:yguillemot>:api<2>;
use Qt::QtWidgets::RQEvent:ver<0.0.6>:auth<zef:yguillemot>:api<2>;
use Qt::QtWidgets::RQKeyEvent:ver<0.0.6>:auth<zef:yguillemot>:api<2>;
use Qt::QtWidgets::RQMenuBar:ver<0.0.6>:auth<zef:yguillemot>:api<2>;
use Qt::QtWidgets::RQMouseEvent:ver<0.0.6>:auth<zef:yguillemot>:api<2>;
use Qt::QtWidgets::RQObject:ver<0.0.6>:auth<zef:yguillemot>:api<2>;
use Qt::QtWidgets::RQPaintEvent:ver<0.0.6>:auth<zef:yguillemot>:api<2>;
use Qt::QtWidgets::RQPoint:ver<0.0.6>:auth<zef:yguillemot>:api<2>;
use Qt::QtWidgets::RQResizeEvent:ver<0.0.6>:auth<zef:yguillemot>:api<2>;
use Qt::QtWidgets::RQTimerEvent:ver<0.0.6>:auth<zef:yguillemot>:api<2>;



class QMenuBar:ver<0.0.6>:auth<zef:yguillemot>:api<2>
    is QWidget
    is QtObject
    does RQMenuBar
    is export {

    multi sub ctor(QtBase $this, QWidget $parent = (QWidget)) {
        my $a1 = ?$parent ?? $parent.address !! QWInt2Pointer(0);
        $this.address = QWQMenuBarCtor($a1);
        $this.ownedByRaku = True;
    }

    multi sub subClassCtor(QtBase $this, QWidget $parent = (QWidget)) {
        my $a1 = ?$parent ?? $parent.address !! QWInt2Pointer(0);
        $this.address = SCWQMenuBarCtor($a1);
        $this.ownedByRaku = True;
    }

    method validateCB(Str $m) {
        QWvalidateCB_QMenuBar(self.address, self.id, $m);
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
        my QMenuBar $rObj = self.bless;
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
            QWQMenuBarDtor(self.address);
            self.ownedByRaku = False;
        }
    }

    multi method addAction(Str $text --> QAction)
    {
        my $result = QWQMenuBaraddAction_1(self.address, $text);
        my $result1 = QAction.new($result, obr => False);
        return $result1;
    }

    multi method addMenu(QMenu $menu --> QAction)
    {
        my $a1 = ?$menu ?? $menu.address !! QWInt2Pointer(0);
        my $result = QWQMenuBaraddMenu_1(self.address, $a1);
        my $result1 = QAction.new($result, obr => False);
        return $result1;
    }

    multi method addMenu(Str $title --> QMenu)
    {
        my $result = QWQMenuBaraddMenu_2(self.address, $title);
        my $result1 = QMenu.new($result, obr => False);
        return $result1;
    }

    method addSeparator( --> QAction)
    {
        my $result = QWQMenuBaraddSeparator(self.address);
        my $result1 = QAction.new($result, obr => False);
        return $result1;
    }

    method insertSeparator(QAction $before --> QAction)
    {
        my $a1 = ?$before ?? $before.address !! QWInt2Pointer(0);
        my $result = QWQMenuBarinsertSeparator(self.address, $a1);
        my $result1 = QAction.new($result, obr => False);
        return $result1;
    }

    method insertMenu(QAction $before, QMenu $menu --> QAction)
    {
        my $a1 = ?$before ?? $before.address !! QWInt2Pointer(0);
        my $a2 = ?$menu ?? $menu.address !! QWInt2Pointer(0);
        my $result = QWQMenuBarinsertMenu(self.address, $a1, $a2);
        my $result1 = QAction.new($result, obr => False);
        return $result1;
    }

    method setActiveAction(QAction $action)
    {
        my $a1 = ?$action ?? $action.address !! QWInt2Pointer(0);
        QWQMenuBarsetActiveAction(self.address, $a1);
    }

    method setDefaultUp(Bool $arg1)
    {
        my int8 $a1 = $arg1.Int;
        QWQMenuBarsetDefaultUp(self.address, $a1);
    }

    method isDefaultUp( --> Bool)
    {
        my $result = QWQMenuBarisDefaultUp(self.address);
        my $result1 = ?$result;
        return $result1;
    }

    method sizeHint( --> QSize)
    {
        my $result = QWQMenuBarsizeHint(self.address);
        my $result1 = QSize.new($result, obr => True);
        return $result1;
    }

    method minimumSizeHint( --> QSize)
    {
        my $result = QWQMenuBarminimumSizeHint(self.address);
        my $result1 = QSize.new($result, obr => True);
        return $result1;
    }

    method heightForWidth(Int $arg1 --> Int)
    {
        my $result = QWQMenuBarheightForWidth(self.address, $arg1);
        return $result;
    }

    method actionAt(RQPoint $arg1 --> QAction)
    {
        my $a1 = $arg1.address;
        my $result = QWQMenuBaractionAt(self.address, $a1);
        my $result1 = QAction.new($result, obr => False);
        return $result1;
    }

    method setCornerWidget(QWidget $w, Qt::Corner $corner = Qt::TopRightCorner)
    {
        my $a1 = ?$w ?? $w.address !! QWInt2Pointer(0);
        QWQMenuBarsetCornerWidget(self.address, $a1, $corner);
    }

    method isNativeMenuBar( --> Bool)
    {
        my $result = QWQMenuBarisNativeMenuBar(self.address);
        my $result1 = ?$result;
        return $result1;
    }

    method setNativeMenuBar(Bool $nativeMenuBar)
    {
        my int8 $a1 = $nativeMenuBar.Int;
        QWQMenuBarsetNativeMenuBar(self.address, $a1);
    }

    method setVisible(Bool $visible) is QtSlot
    {
        my int8 $a1 = $visible.Int;
        QWQMenuBarsetVisible(self.address, $a1);
    }

    method changeEvent(RQEvent $arg1)
    {
        my $a1 = ?$arg1 ?? $arg1.address !! QWInt2Pointer(0);
        QWQMenuBarchangeEvent(self.address, $a1);
    }

    method keyPressEvent(RQKeyEvent $arg1)
    {
        my $a1 = ?$arg1 ?? $arg1.address !! QWInt2Pointer(0);
        QWQMenuBarkeyPressEvent(self.address, $a1);
    }

    method mouseReleaseEvent(RQMouseEvent $arg1)
    {
        my $a1 = ?$arg1 ?? $arg1.address !! QWInt2Pointer(0);
        QWQMenuBarmouseReleaseEvent(self.address, $a1);
    }

    method mousePressEvent(RQMouseEvent $arg1)
    {
        my $a1 = ?$arg1 ?? $arg1.address !! QWInt2Pointer(0);
        QWQMenuBarmousePressEvent(self.address, $a1);
    }

    method mouseMoveEvent(RQMouseEvent $arg1)
    {
        my $a1 = ?$arg1 ?? $arg1.address !! QWInt2Pointer(0);
        QWQMenuBarmouseMoveEvent(self.address, $a1);
    }

    method leaveEvent(RQEvent $arg1)
    {
        my $a1 = ?$arg1 ?? $arg1.address !! QWInt2Pointer(0);
        QWQMenuBarleaveEvent(self.address, $a1);
    }

    method paintEvent(RQPaintEvent $arg1)
    {
        my $a1 = ?$arg1 ?? $arg1.address !! QWInt2Pointer(0);
        QWQMenuBarpaintEvent(self.address, $a1);
    }

    method resizeEvent(RQResizeEvent $arg1)
    {
        my $a1 = ?$arg1 ?? $arg1.address !! QWInt2Pointer(0);
        QWQMenuBarresizeEvent(self.address, $a1);
    }

    method timerEvent(RQTimerEvent $arg1)
    {
        my $a1 = ?$arg1 ?? $arg1.address !! QWInt2Pointer(0);
        QWQMenuBartimerEvent(self.address, $a1);
    }

    method eventFilter(RQObject $arg1, RQEvent $arg2 --> Bool)
    {
        my $a1 = ?$arg1 ?? $arg1.address !! QWInt2Pointer(0);
        my $a2 = ?$arg2 ?? $arg2.address !! QWInt2Pointer(0);
        my $result = QWQMenuBareventFilter(self.address, $a1, $a2);
        my $result1 = ?$result;
        return $result1;
    }

    method event(RQEvent $arg1 --> Bool)
    {
        my $a1 = ?$arg1 ?? $arg1.address !! QWInt2Pointer(0);
        my $result = QWQMenuBarevent(self.address, $a1);
        my $result1 = ?$result;
        return $result1;
    }

    method triggered(QAction $action)
        is QtSignal { ... }

    method hovered(QAction $action)
        is QtSignal { ... }

}


sub QWQMenuBarCtor(Pointer)
    returns Pointer is native(&libwrapper) { * }

sub SCWQMenuBarCtor(Pointer)
    returns Pointer is native(&libwrapper) { * }

sub QWvalidateCB_QMenuBar(Pointer, int32, Str)
    is native(&libwrapper) { * }

sub QWQMenuBarDtor(Pointer)
    is native(&libwrapper) { * }

sub QWQMenuBaraddAction_1(Pointer, Str)
    returns Pointer is native(&libwrapper) { * }

sub QWQMenuBaraddMenu_1(Pointer, Pointer)
    returns Pointer is native(&libwrapper) { * }

sub QWQMenuBaraddMenu_2(Pointer, Str)
    returns Pointer is native(&libwrapper) { * }

sub QWQMenuBaraddSeparator(Pointer)
    returns Pointer is native(&libwrapper) { * }

sub QWQMenuBarinsertSeparator(Pointer, Pointer)
    returns Pointer is native(&libwrapper) { * }

sub QWQMenuBarinsertMenu(Pointer, Pointer, Pointer)
    returns Pointer is native(&libwrapper) { * }

sub QWQMenuBarsetActiveAction(Pointer, Pointer)
    is native(&libwrapper) { * }

sub QWQMenuBarsetDefaultUp(Pointer, int8)
    is native(&libwrapper) { * }

sub QWQMenuBarisDefaultUp(Pointer)
    returns int8 is native(&libwrapper) { * }

sub QWQMenuBarsizeHint(Pointer)
    returns Pointer is native(&libwrapper) { * }

sub QWQMenuBarminimumSizeHint(Pointer)
    returns Pointer is native(&libwrapper) { * }

sub QWQMenuBarheightForWidth(Pointer, int32)
    returns int32 is native(&libwrapper) { * }

sub QWQMenuBaractionAt(Pointer, Pointer)
    returns Pointer is native(&libwrapper) { * }

sub QWQMenuBarsetCornerWidget(Pointer, Pointer, int32)
    is native(&libwrapper) { * }

sub QWQMenuBarisNativeMenuBar(Pointer)
    returns int8 is native(&libwrapper) { * }

sub QWQMenuBarsetNativeMenuBar(Pointer, int8)
    is native(&libwrapper) { * }

sub QWQMenuBarsetVisible(Pointer, int8)
    is native(&libwrapper) { * }

sub QWQMenuBarchangeEvent(Pointer, Pointer)
    is native(&libwrapper) { * }

sub QWQMenuBarkeyPressEvent(Pointer, Pointer)
    is native(&libwrapper) { * }

sub QWQMenuBarmouseReleaseEvent(Pointer, Pointer)
    is native(&libwrapper) { * }

sub QWQMenuBarmousePressEvent(Pointer, Pointer)
    is native(&libwrapper) { * }

sub QWQMenuBarmouseMoveEvent(Pointer, Pointer)
    is native(&libwrapper) { * }

sub QWQMenuBarleaveEvent(Pointer, Pointer)
    is native(&libwrapper) { * }

sub QWQMenuBarpaintEvent(Pointer, Pointer)
    is native(&libwrapper) { * }

sub QWQMenuBarresizeEvent(Pointer, Pointer)
    is native(&libwrapper) { * }

sub QWQMenuBartimerEvent(Pointer, Pointer)
    is native(&libwrapper) { * }

sub QWQMenuBareventFilter(Pointer, Pointer, Pointer)
    returns int8 is native(&libwrapper) { * }

sub QWQMenuBarevent(Pointer, Pointer)
    returns int8 is native(&libwrapper) { * }

