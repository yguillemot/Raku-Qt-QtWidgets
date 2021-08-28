
# 
# This file has been automatically generated by RaQt_maker V0.0.5.
# To modify and regenerate it, see the source code available here: 
#         https://github.com/yguillemot/RaQt_maker
# 

use NativeCall;
use Qt::QtWidgets:ver<0.0.5>:auth<cpan:YGUILLEMO>:api<2>;
use Qt::QtWidgets::QtHelpers:ver<0.0.5>:auth<cpan:YGUILLEMO>:api<2>;
use Qt::QtWidgets::QtWrappers:ver<0.0.5>:auth<cpan:YGUILLEMO>:api<2>;
use Qt::QtWidgets::QAbstractButton:ver<0.0.5>:auth<cpan:YGUILLEMO>:api<2>;
use Qt::QtWidgets::Qt:ver<0.0.5>:auth<cpan:YGUILLEMO>:api<2>;
use Qt::QtWidgets::QtBase:ver<0.0.5>:auth<cpan:YGUILLEMO>:api<2>;
use Qt::QtWidgets::RQCheckBox:ver<0.0.5>:auth<cpan:YGUILLEMO>:api<2>;
use Qt::QtWidgets::RQWidget:ver<0.0.5>:auth<cpan:YGUILLEMO>:api<2>;



class QCheckBox:ver<0.0.5>:auth<cpan:YGUILLEMO>:api<2>
    is QAbstractButton
    does RQCheckBox
    is export {

    multi sub ctor(QtBase $this, RQWidget $parent = (RQWidget)) {
        my $a1 = ?$parent ?? $parent.address !! QWInt2Pointer(0);
        $this.address = QWQCheckBoxCtor_1($a1);
        $this.ownedByRaku = True;
    }

    multi sub subClassCtor(QtBase $this, RQWidget $parent = (RQWidget)) {
        my $a1 = ?$parent ?? $parent.address !! QWInt2Pointer(0);
        $this.address = SCWQCheckBoxCtor_1($a1);
        $this.ownedByRaku = True;
    }

    method validateCB(Str $m) {
        QWvalidateCB_QCheckBox(self.address, self.id, $m);
    }

    multi sub ctor(QtBase $this, Str $text, RQWidget $parent = (RQWidget)) {
        my $a2 = ?$parent ?? $parent.address !! QWInt2Pointer(0);
        $this.address = QWQCheckBoxCtor_2($text, $a2);
        $this.ownedByRaku = True;
    }

    multi sub subClassCtor(QtBase $this, Str $text, RQWidget $parent = (RQWidget)) {
        my $a2 = ?$parent ?? $parent.address !! QWInt2Pointer(0);
        $this.address = SCWQCheckBoxCtor_2($text, $a2);
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
        my QCheckBox $rObj = self.bless;
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
            QWQCheckBoxDtor(self.address);
            self.ownedByRaku = False;
        }
    }

    method setTristate(Bool $y = True)
    {
        my int8 $a1 = $y.Int;
        QWQCheckBoxsetTristate(self.address, $a1);
    }

    method isTristate( --> Bool)
    {
        my $result = QWQCheckBoxisTristate(self.address);
        my $result1 = ?$result;
        return $result1;
    }

    method checkState( --> Qt::CheckState)
    {
        my $result = QWQCheckBoxcheckState(self.address);
        my $result1 = Qt::CheckState($result);
        return $result1;
    }

    method setCheckState(Qt::CheckState $state)
    {
        QWQCheckBoxsetCheckState(self.address, $state);
    }

    method stateChanged(Int $arg1)
        is QtSignal { ... }

}


sub QWQCheckBoxCtor_1(Pointer)
    returns Pointer is native(&libwrapper) { * }

sub SCWQCheckBoxCtor_1(Pointer)
    returns Pointer is native(&libwrapper) { * }

sub QWvalidateCB_QCheckBox(Pointer, int32, Str)
    is native(&libwrapper) { * }

sub QWQCheckBoxCtor_2(Str, Pointer)
    returns Pointer is native(&libwrapper) { * }

sub SCWQCheckBoxCtor_2(Str, Pointer)
    returns Pointer is native(&libwrapper) { * }

sub QWQCheckBoxDtor(Pointer)
    is native(&libwrapper) { * }

sub QWQCheckBoxsetTristate(Pointer, int8)
    is native(&libwrapper) { * }

sub QWQCheckBoxisTristate(Pointer)
    returns int8 is native(&libwrapper) { * }

sub QWQCheckBoxcheckState(Pointer)
    returns int32 is native(&libwrapper) { * }

sub QWQCheckBoxsetCheckState(Pointer, int32)
    is native(&libwrapper) { * }

