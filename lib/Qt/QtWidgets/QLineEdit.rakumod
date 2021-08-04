
# 
# This file has been automatically generated by RaQt_maker V0.0.3.
# To modify and regenerate it, see the source code available here: 
#         https://github.com/yguillemot/RaQt_maker
# 

use NativeCall;
use Qt::QtWidgets:ver<0.0.3>:auth<cpan:YGUILLEMO>:api<2>;
use Qt::QtWidgets::QtHelpers:ver<0.0.3>:auth<cpan:YGUILLEMO>:api<2>;
use Qt::QtWidgets::QtWrappers:ver<0.0.3>:auth<cpan:YGUILLEMO>:api<2>;
use Qt::QtWidgets::QWidget:ver<0.0.3>:auth<cpan:YGUILLEMO>:api<2>;
use Qt::QtWidgets::Qt:ver<0.0.3>:auth<cpan:YGUILLEMO>:api<2>;
use Qt::QtWidgets::QtBase:ver<0.0.3>:auth<cpan:YGUILLEMO>:api<2>;
use Qt::QtWidgets::RQLineEdit:ver<0.0.3>:auth<cpan:YGUILLEMO>:api<2>;
use Qt::QtWidgets::RQWidget:ver<0.0.3>:auth<cpan:YGUILLEMO>:api<2>;



class QLineEdit:ver<0.0.3>:auth<cpan:YGUILLEMO>:api<2>
    is QWidget
    does RQLineEdit
    is export {

    multi sub ctor(QtBase $this, RQWidget $parent = (RQWidget)) {
        my $a1 = ?$parent ?? $parent.address !! QWInt2Pointer(0);
        $this.address = QWQLineEditCtor_1($a1);
        $this.ownedByRaku = True;
    }

    multi sub subClassCtor(QtBase $this, RQWidget $parent = (RQWidget)) {
        my $a1 = ?$parent ?? $parent.address !! QWInt2Pointer(0);
        $this.address = SCWQLineEditCtor_1($a1);
        $this.ownedByRaku = True;
    }

    method validateCB(Str $m) {
        QWvalidateCB_QLineEdit(self.address, self.id, $m);
    }

    multi sub ctor(QtBase $this, Str $arg1, RQWidget $parent = (RQWidget)) {
        my $a2 = ?$parent ?? $parent.address !! QWInt2Pointer(0);
        $this.address = QWQLineEditCtor_2($arg1, $a2);
        $this.ownedByRaku = True;
    }

    multi sub subClassCtor(QtBase $this, Str $arg1, RQWidget $parent = (RQWidget)) {
        my $a2 = ?$parent ?? $parent.address !! QWInt2Pointer(0);
        $this.address = SCWQLineEditCtor_2($arg1, $a2);
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
        my QLineEdit $rObj = self.bless;
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
            QWQLineEditDtor(self.address);
            self.ownedByRaku = False;
        }
    }

    method text( --> Str)
    {
        my $result = QWQLineEdittext(self.address);
        return $result;
    }

    method setAlignment(Int $flag)
    {
        QWQLineEditsetAlignment(self.address, $flag);
    }

    method setText(Str $arg1) is QtSlot
    {
        QWQLineEditsetText(self.address, $arg1);
    }

    method clear() is QtSlot
    {
        QWQLineEditclear(self.address);
    }

    method returnPressed()
        is QtSignal { ... }

    method editingFinished()
        is QtSignal { ... }

}


sub QWQLineEditCtor_1(Pointer)
    returns Pointer is native(&libwrapper) { * }

sub SCWQLineEditCtor_1(Pointer)
    returns Pointer is native(&libwrapper) { * }

sub QWvalidateCB_QLineEdit(Pointer, int32, Str)
    is native(&libwrapper) { * }

sub QWQLineEditCtor_2(Str, Pointer)
    returns Pointer is native(&libwrapper) { * }

sub SCWQLineEditCtor_2(Str, Pointer)
    returns Pointer is native(&libwrapper) { * }

sub QWQLineEditDtor(Pointer)
    is native(&libwrapper) { * }

sub QWQLineEdittext(Pointer)
    returns Str is native(&libwrapper) { * }

sub QWQLineEditsetAlignment(Pointer, int32)
    is native(&libwrapper) { * }

sub QWQLineEditsetText(Pointer, Str)
    is native(&libwrapper) { * }

sub QWQLineEditclear(Pointer)
    is native(&libwrapper) { * }

