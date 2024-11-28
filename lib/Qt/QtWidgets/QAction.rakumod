
# 
# This file has been automatically generated by RaQt_maker V0.0.6.
# To modify and regenerate it, see the source code available here: 
#         https://github.com/yguillemot/RaQt_maker
# 

use NativeCall;
use Qt::QtWidgets:ver<0.0.6>:auth<zef:yguillemot>:api<2>;
use Qt::QtWidgets::QtHelpers:ver<0.0.6>:auth<zef:yguillemot>:api<2>;
use Qt::QtWidgets::QtWrappers:ver<0.0.6>:auth<zef:yguillemot>:api<2>;
use Qt::QtWidgets::QObject:ver<0.0.6>:auth<zef:yguillemot>:api<2>;
use Qt::QtWidgets::QtBase:ver<0.0.6>:auth<zef:yguillemot>:api<2>;
use Qt::QtWidgets::RQAction:ver<0.0.6>:auth<zef:yguillemot>:api<2>;



class QAction:ver<0.0.6>:auth<zef:yguillemot>:api<2>
    is QObject
    is QtObject
    does RQAction
    is export {

    multi sub ctor(QtBase $this, QObject $parent = (QObject)) {
        my $a1 = ?$parent ?? $parent.address !! QWInt2Pointer(0);
        $this.address = QWQActionCtor_1($a1);
        $this.ownedByRaku = True;
    }

    multi sub subClassCtor(QtBase $this, QObject $parent = (QObject)) {
        my $a1 = ?$parent ?? $parent.address !! QWInt2Pointer(0);
        $this.address = SCWQActionCtor_1($a1);
        $this.ownedByRaku = True;
    }

    method validateCB(Str $m) {
        QWvalidateCB_QAction(self.address, self.id, $m);
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
        my QAction $rObj = self.bless;
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
            QWQActionDtor(self.address);
            self.ownedByRaku = False;
        }
    }

    method text( --> Str)
    {
        my Pointer $retBuffer = QWStrBufferAlloc;
        QWQActiontext($retBuffer, self.address);
        my Str $returnedString = QWStrBufferRead($retBuffer);
        QWStrBufferFree($retBuffer);
        return $returnedString;
    }

    method setToolTip(Str $tip)
    {
        QWQActionsetToolTip(self.address, $tip);
    }

    method setCheckable(Bool $arg1)
    {
        my int8 $a1 = $arg1.Int;
        QWQActionsetCheckable(self.address, $a1);
    }

    method trigger() is QtSlot
    {
        QWQActiontrigger(self.address);
    }

    method setChecked(Bool $arg1) is QtSlot
    {
        my int8 $a1 = $arg1.Int;
        QWQActionsetChecked(self.address, $a1);
    }

    method setEnabled(Bool $arg1) is QtSlot
    {
        my int8 $a1 = $arg1.Int;
        QWQActionsetEnabled(self.address, $a1);
    }

    method setDisabled(Bool $b) is QtSlot
    {
        my int8 $a1 = $b.Int;
        QWQActionsetDisabled(self.address, $a1);
    }

    method triggered(Bool $checked = False)
        is QtSignal { ... }

}


sub QWQActionCtor_1(Pointer)
    returns Pointer is native(&libwrapper) { * }

sub SCWQActionCtor_1(Pointer)
    returns Pointer is native(&libwrapper) { * }

sub QWvalidateCB_QAction(Pointer, int32, Str)
    is native(&libwrapper) { * }

sub QWQActionDtor(Pointer)
    is native(&libwrapper) { * }

sub QWQActiontext(Pointer, Pointer)
    is native(&libwrapper) { * }

sub QWQActionsetToolTip(Pointer, Str)
    is native(&libwrapper) { * }

sub QWQActionsetCheckable(Pointer, int8)
    is native(&libwrapper) { * }

sub QWQActiontrigger(Pointer)
    is native(&libwrapper) { * }

sub QWQActionsetChecked(Pointer, int8)
    is native(&libwrapper) { * }

sub QWQActionsetEnabled(Pointer, int8)
    is native(&libwrapper) { * }

sub QWQActionsetDisabled(Pointer, int8)
    is native(&libwrapper) { * }

