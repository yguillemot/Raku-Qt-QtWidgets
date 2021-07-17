
# 
# This file has been automatically generated by RaQt_maker V0.0.2.
# To modify and regenerate it, see the source code available here: 
#         https://github.com/yguillemot/RaQt_maker
# 

use NativeCall;
use Qt::QtWidgets::QtHelpers:ver<0.0.2>:auth<cpan:YGUILLEMO>:api<2>;
use Qt::QtWidgets::QtWrappers:ver<0.0.2>:auth<cpan:YGUILLEMO>:api<2>;
use Qt::QtWidgets::QBrush:ver<0.0.2>:auth<cpan:YGUILLEMO>:api<2>;
use Qt::QtWidgets::QColor:ver<0.0.2>:auth<cpan:YGUILLEMO>:api<2>;
use Qt::QtWidgets::Qt:ver<0.0.2>:auth<cpan:YGUILLEMO>:api<2>;
use Qt::QtWidgets::QtBase:ver<0.0.2>:auth<cpan:YGUILLEMO>:api<2>;



class QPen:ver<0.0.2>:auth<cpan:YGUILLEMO>:api<2>
    is QtBase
    is export {

    multi sub ctor(QtBase $this) {
        $this.address = QWQPenCtor_1();
        $this.ownedByRaku = True;
    }

    multi sub ctor(QtBase $this, Qt::PenStyle $arg1) {
        $this.address = QWQPenCtor_2($arg1);
        $this.ownedByRaku = True;
    }

    multi sub ctor(QtBase $this, QColor $color) {
        my $a1 = $color.address;
        $this.address = QWQPenCtor_3($a1);
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
        my QPen $rObj = self.bless;
        ctor($rObj, |capture);
        return $rObj;
    }

    submethod DESTROY {
        if self.ownedByRaku {
            QWQPenDtor(self.address);
            self.ownedByRaku = False;
        }
    }

    method setWidth(Int $width)
    {
        QWQPensetWidth(self.address, $width);
    }

    method setColor(QColor $color)
    {
        my $a1 = $color.address;
        QWQPensetColor(self.address, $a1);
    }

    method setBrush(QBrush $brush)
    {
        my $a1 = $brush.address;
        QWQPensetBrush(self.address, $a1);
    }

}


sub QWQPenCtor_1()
    returns Pointer is native(&libwrapper) { * }

sub QWQPenCtor_2(int32)
    returns Pointer is native(&libwrapper) { * }

sub QWQPenCtor_3(Pointer)
    returns Pointer is native(&libwrapper) { * }

sub QWQPenDtor(Pointer)
    is native(&libwrapper) { * }

sub QWQPensetWidth(Pointer, int32)
    is native(&libwrapper) { * }

sub QWQPensetColor(Pointer, Pointer)
    is native(&libwrapper) { * }

sub QWQPensetBrush(Pointer, Pointer)
    is native(&libwrapper) { * }

