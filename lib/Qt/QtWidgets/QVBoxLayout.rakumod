
# 
# This file has been automatically generated by RaQt_maker V0.0.7.
# To modify and regenerate it, see the source code available here: 
#         https://github.com/yguillemot/RaQt_maker
# 

use NativeCall;
use Qt::QtWidgets:ver<0.0.7>:auth<zef:yguillemot>:api<2>;
use Qt::QtWidgets::QtHelpers:ver<0.0.7>:auth<zef:yguillemot>:api<2>;
use Qt::QtWidgets::QtWrappers:ver<0.0.7>:auth<zef:yguillemot>:api<2>;
use Qt::QtWidgets::QBoxLayout:ver<0.0.7>:auth<zef:yguillemot>:api<2>;
use Qt::QtWidgets::QtBase:ver<0.0.7>:auth<zef:yguillemot>:api<2>;
use Qt::QtWidgets::RQVBoxLayout:ver<0.0.7>:auth<zef:yguillemot>:api<2>;



class QVBoxLayout:ver<0.0.7>:auth<zef:yguillemot>:api<2>
    is QBoxLayout
    is QtObject
    does RQVBoxLayout
    is export {

    multi sub ctor(QtBase $this) {
        $this.address = QWQVBoxLayoutCtor_1();
        $this.ownedByRaku = True;
    }

    multi sub subClassCtor(QtBase $this) {
        $this.address = SCWQVBoxLayoutCtor_1();
        $this.ownedByRaku = True;
    }

    method validateCB(Str $m) {
        QWvalidateCB_QVBoxLayout(self.address, self.id, $m);
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
        my QVBoxLayout $rObj = self.bless;
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
            QWQVBoxLayoutDtor(self.address);
            self.ownedByRaku = False;
        }
    }

}


sub QWQVBoxLayoutCtor_1()
    returns Pointer is native(&libwrapper) { * }

sub SCWQVBoxLayoutCtor_1()
    returns Pointer is native(&libwrapper) { * }

sub QWvalidateCB_QVBoxLayout(Pointer, int32, Str)
    is native(&libwrapper) { * }

sub QWQVBoxLayoutDtor(Pointer)
    is native(&libwrapper) { * }

