
# 
# This file has been automatically generated by RaQt_maker V0.0.2.
# To modify and regenerate it, see the source code available here: 
#         https://github.com/yguillemot/RaQt_maker
# 

use NativeCall;
use Qt::QtWidgets:ver<0.0.2>:auth<cpan:YGUILLEMO>:api<2>;
use Qt::QtWidgets::QtHelpers:ver<0.0.2>:auth<cpan:YGUILLEMO>:api<2>;
use Qt::QtWidgets::QtWrappers:ver<0.0.2>:auth<cpan:YGUILLEMO>:api<2>;
use Qt::QtWidgets::QFrame:ver<0.0.2>:auth<cpan:YGUILLEMO>:api<2>;
use Qt::QtWidgets::Qt:ver<0.0.2>:auth<cpan:YGUILLEMO>:api<2>;
use Qt::QtWidgets::QtBase:ver<0.0.2>:auth<cpan:YGUILLEMO>:api<2>;
use Qt::QtWidgets::RQLabel:ver<0.0.2>:auth<cpan:YGUILLEMO>:api<2>;
use Qt::QtWidgets::RQWidget:ver<0.0.2>:auth<cpan:YGUILLEMO>:api<2>;



class QLabel:ver<0.0.2>:auth<cpan:YGUILLEMO>:api<2>
    is QFrame
    does RQLabel
    is export {

    multi sub ctor(QtBase $this, RQWidget $parent = (RQWidget), Int $f = Qt::WindowFlags()) {
        my $a1 = ?$parent ?? $parent.address !! QWInt2Pointer(0);
        $this.address = QWQLabelCtor_1($a1, $f);
        $this.ownedByRaku = True;
    }

    multi sub subClassCtor(QtBase $this, RQWidget $parent = (RQWidget), Int $f = Qt::WindowFlags()) {
        my $a1 = ?$parent ?? $parent.address !! QWInt2Pointer(0);
        $this.address = SCWQLabelCtor_1($a1, $f);
        $this.ownedByRaku = True;
    }

    method validateCB(Str $m) {
        QWvalidateCB_QLabel(self.address, self.id, $m);
    }

    multi sub ctor(QtBase $this, Str $text, RQWidget $parent = (RQWidget), Int $f = Qt::WindowFlags()) {
        my $a2 = ?$parent ?? $parent.address !! QWInt2Pointer(0);
        $this.address = QWQLabelCtor_2($text, $a2, $f);
        $this.ownedByRaku = True;
    }

    multi sub subClassCtor(QtBase $this, Str $text, RQWidget $parent = (RQWidget), Int $f = Qt::WindowFlags()) {
        my $a2 = ?$parent ?? $parent.address !! QWInt2Pointer(0);
        $this.address = SCWQLabelCtor_2($text, $a2, $f);
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
        my QLabel $rObj = self.bless;
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
            QWQLabelDtor(self.address);
            self.ownedByRaku = False;
        }
    }

    method setTextFormat(Qt::TextFormat $arg1)
    {
        QWQLabelsetTextFormat(self.address, $arg1);
    }

    method setAlignment(Int $arg1)
    {
        QWQLabelsetAlignment(self.address, $arg1);
    }

    method setMargin(Int $arg1)
    {
        QWQLabelsetMargin(self.address, $arg1);
    }

    method setText(Str $arg1) is QtSlot
    {
        QWQLabelsetText(self.address, $arg1);
    }

    method clear() is QtSlot
    {
        QWQLabelclear(self.address);
    }

}


sub QWQLabelCtor_1(Pointer, int32)
    returns Pointer is native(&libwrapper) { * }

sub SCWQLabelCtor_1(Pointer, int32)
    returns Pointer is native(&libwrapper) { * }

sub QWvalidateCB_QLabel(Pointer, int32, Str)
    is native(&libwrapper) { * }

sub QWQLabelCtor_2(Str, Pointer, int32)
    returns Pointer is native(&libwrapper) { * }

sub SCWQLabelCtor_2(Str, Pointer, int32)
    returns Pointer is native(&libwrapper) { * }

sub QWQLabelDtor(Pointer)
    is native(&libwrapper) { * }

sub QWQLabelsetTextFormat(Pointer, int32)
    is native(&libwrapper) { * }

sub QWQLabelsetAlignment(Pointer, int32)
    is native(&libwrapper) { * }

sub QWQLabelsetMargin(Pointer, int32)
    is native(&libwrapper) { * }

sub QWQLabelsetText(Pointer, Str)
    is native(&libwrapper) { * }

sub QWQLabelclear(Pointer)
    is native(&libwrapper) { * }

