
# 
# This file has been automatically generated by RaQt_maker V0.0.4.
# To modify and regenerate it, see the source code available here: 
#         https://github.com/yguillemot/RaQt_maker
# 

use NativeCall;
use Qt::QtWidgets:ver<0.0.4>:auth<cpan:YGUILLEMO>:api<2>;
use Qt::QtWidgets::QtHelpers:ver<0.0.4>:auth<cpan:YGUILLEMO>:api<2>;
use Qt::QtWidgets::QtWrappers:ver<0.0.4>:auth<cpan:YGUILLEMO>:api<2>;
use Qt::QtWidgets::QAction:ver<0.0.4>:auth<cpan:YGUILLEMO>:api<2>;
use Qt::QtWidgets::QWidget:ver<0.0.4>:auth<cpan:YGUILLEMO>:api<2>;
use Qt::QtWidgets::QtBase:ver<0.0.4>:auth<cpan:YGUILLEMO>:api<2>;
use Qt::QtWidgets::RQAction:ver<0.0.4>:auth<cpan:YGUILLEMO>:api<2>;
use Qt::QtWidgets::RQMenu:ver<0.0.4>:auth<cpan:YGUILLEMO>:api<2>;
use Qt::QtWidgets::RQWidget:ver<0.0.4>:auth<cpan:YGUILLEMO>:api<2>;



class QMenu:ver<0.0.4>:auth<cpan:YGUILLEMO>:api<2>
    is QWidget
    does RQMenu
    is export {

    multi sub ctor(QtBase $this, RQWidget $parent = (RQWidget)) {
        my $a1 = ?$parent ?? $parent.address !! QWInt2Pointer(0);
        $this.address = QWQMenuCtor_1($a1);
        $this.ownedByRaku = True;
    }

    multi sub subClassCtor(QtBase $this, RQWidget $parent = (RQWidget)) {
        my $a1 = ?$parent ?? $parent.address !! QWInt2Pointer(0);
        $this.address = SCWQMenuCtor_1($a1);
        $this.ownedByRaku = True;
    }

    method validateCB(Str $m) {
        QWvalidateCB_QMenu(self.address, self.id, $m);
    }

    multi sub ctor(QtBase $this, Str $title, RQWidget $parent = (RQWidget)) {
        my $a2 = ?$parent ?? $parent.address !! QWInt2Pointer(0);
        $this.address = QWQMenuCtor_2($title, $a2);
        $this.ownedByRaku = True;
    }

    multi sub subClassCtor(QtBase $this, Str $title, RQWidget $parent = (RQWidget)) {
        my $a2 = ?$parent ?? $parent.address !! QWInt2Pointer(0);
        $this.address = SCWQMenuCtor_2($title, $a2);
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
        my QMenu $rObj = self.bless;
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
            QWQMenuDtor(self.address);
            self.ownedByRaku = False;
        }
    }

    multi method addAction(Str $text --> RQAction)
    {
        my $result = QWQMenuaddAction_1(self.address, $text);
        my $result1 = QAction.new($result, obr => False);
        return $result1;
    }

    multi method exec( --> RQAction)
    {
        my $result = QWQMenuexec_1(self.address);
        my $result1 = QAction.new($result, obr => False);
        return $result1;
    }

}


sub QWQMenuCtor_1(Pointer)
    returns Pointer is native(&libwrapper) { * }

sub SCWQMenuCtor_1(Pointer)
    returns Pointer is native(&libwrapper) { * }

sub QWvalidateCB_QMenu(Pointer, int32, Str)
    is native(&libwrapper) { * }

sub QWQMenuCtor_2(Str, Pointer)
    returns Pointer is native(&libwrapper) { * }

sub SCWQMenuCtor_2(Str, Pointer)
    returns Pointer is native(&libwrapper) { * }

sub QWQMenuDtor(Pointer)
    is native(&libwrapper) { * }

sub QWQMenuaddAction_1(Pointer, Str)
    returns Pointer is native(&libwrapper) { * }

sub QWQMenuexec_1(Pointer)
    returns Pointer is native(&libwrapper) { * }

