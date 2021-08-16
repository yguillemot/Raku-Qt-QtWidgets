
# 
# This file has been automatically generated by RaQt_maker V0.0.4.
# To modify and regenerate it, see the source code available here: 
#         https://github.com/yguillemot/RaQt_maker
# 

use NativeCall;
use Qt::QtWidgets::QtHelpers:ver<0.0.4>:auth<cpan:YGUILLEMO>:api<2>;
use Qt::QtWidgets::QtWrappers:ver<0.0.4>:auth<cpan:YGUILLEMO>:api<2>;
use Qt::QtWidgets::QBrush:ver<0.0.4>:auth<cpan:YGUILLEMO>:api<2>;
use Qt::QtWidgets::QColor:ver<0.0.4>:auth<cpan:YGUILLEMO>:api<2>;
use Qt::QtWidgets::QImage:ver<0.0.4>:auth<cpan:YGUILLEMO>:api<2>;
use Qt::QtWidgets::QLabel:ver<0.0.4>:auth<cpan:YGUILLEMO>:api<2>;
use Qt::QtWidgets::QPaintDevice:ver<0.0.4>:auth<cpan:YGUILLEMO>:api<2>;
use Qt::QtWidgets::QPen:ver<0.0.4>:auth<cpan:YGUILLEMO>:api<2>;
use Qt::QtWidgets::QWidget:ver<0.0.4>:auth<cpan:YGUILLEMO>:api<2>;
use Qt::QtWidgets::Qt:ver<0.0.4>:auth<cpan:YGUILLEMO>:api<2>;
use Qt::QtWidgets::QtBase:ver<0.0.4>:auth<cpan:YGUILLEMO>:api<2>;



class QPainter:ver<0.0.4>:auth<cpan:YGUILLEMO>:api<2>
    is QtBase
    is export {

    multi sub ctor(QtBase $this) {
        $this.address = QWQPainterCtor_1();
        $this.ownedByRaku = True;
    }


multi sub ctor(QtBase $this, QPaintDevice $arg1) {
    if !$arg1 {
        ctor($this);
        return;
    }

    given $arg1 {
        when QLabel {
            $this.address = QWQPainterCtor_QWidget($arg1.addres);
        }
        when QWidget {
            $this.address = QWQPainterCtor_QWidget($arg1.addres);
        }
        when QImage {
            $this.address = QWQPainterCtor_QImage($arg1.addres);
        }
        default {
            die "QPainter({$arg1.WHAT} is unsupported";
        }
    }

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
        my QPainter $rObj = self.bless;
        ctor($rObj, |capture);
        return $rObj;
    }

    submethod DESTROY {
        if self.ownedByRaku {
            QWQPainterDtor(self.address);
            self.ownedByRaku = False;
        }
    }


method begin(QPaintDevice $arg1 --> Bool) {
    if !$arg1 {
        return ?QWQPainterbegin_null(self.address);
    }

    given $arg1 {
        when QLabel  {
            return ?QWQPainterbegin_QWidget(self.address, $arg1.address);
        }
        when QWidget  {
            return ?QWQPainterbegin_QWidget(self.address, $arg1.address);
        }
        when QImage {
            return ?QWQPainterbegin_QImage(self.address, $arg1.address);
        }
        default {
            note "QPainter::begin : arg type {$arg1.WHAT} is unsupported";
            die "QPainter({$arg1.WHAT}) is unsupported";
        }
    }
}

    method end( --> Bool)
    {
        my $result = QWQPainterend(self.address);
        my $result1 = ?$result;
        return $result1;
    }

    multi method setPen(QColor $color)
    {
        my $a1 = $color.address;
        QWQPaintersetPen_1(self.address, $a1);
    }

    multi method setPen(QPen $pen)
    {
        my $a1 = $pen.address;
        QWQPaintersetPen_2(self.address, $a1);
    }

    multi method setPen(Qt::PenStyle $style)
    {
        QWQPaintersetPen_3(self.address, $style);
    }

    multi method setBrush(QBrush $brush)
    {
        my $a1 = $brush.address;
        QWQPaintersetBrush_1(self.address, $a1);
    }

    method save()
    {
        QWQPaintersave(self.address);
    }

    method restore()
    {
        QWQPainterrestore(self.address);
    }

    multi method drawLine(Int $x1, Int $y1, Int $x2, Int $y2)
    {
        QWQPainterdrawLine_3(self.address, $x1, $y1, $x2, $y2);
    }

    multi method drawRect(Int $x1, Int $y1, Int $w, Int $h)
    {
        QWQPainterdrawRect_2(self.address, $x1, $y1, $w, $h);
    }

    multi method drawEllipse(Int $x, Int $y, Int $w, Int $h)
    {
        QWQPainterdrawEllipse_3(self.address, $x, $y, $w, $h);
    }

}


sub QWQPainterCtor_1()
    returns Pointer is native(&libwrapper) { * }


sub QWQPainterCtor_QWidget(Pointer)
    returns Pointer is native(&libwrapper) is export { * }

sub QWQPainterCtor_QImage(Pointer)
    returns Pointer is native(&libwrapper) is export { * }

sub QWQPainterDtor(Pointer)
    is native(&libwrapper) { * }


sub QWQPainterbegin_null(Pointer)
    returns Pointer is native(&libwrapper) is export { * }

sub QWQPainterbegin_QWidget(Pointer, Pointer)
    returns Pointer is native(&libwrapper) is export { * }

sub QWQPainterbegin_QImage(Pointer, Pointer)
    returns Pointer is native(&libwrapper) is export { * }
sub QWQPainterend(Pointer)
    returns int8 is native(&libwrapper) { * }

sub QWQPaintersetPen_1(Pointer, Pointer)
    is native(&libwrapper) { * }

sub QWQPaintersetPen_2(Pointer, Pointer)
    is native(&libwrapper) { * }

sub QWQPaintersetPen_3(Pointer, int32)
    is native(&libwrapper) { * }

sub QWQPaintersetBrush_1(Pointer, Pointer)
    is native(&libwrapper) { * }

sub QWQPaintersave(Pointer)
    is native(&libwrapper) { * }

sub QWQPainterrestore(Pointer)
    is native(&libwrapper) { * }

sub QWQPainterdrawLine_3(Pointer, int32, int32, int32, int32)
    is native(&libwrapper) { * }

sub QWQPainterdrawRect_2(Pointer, int32, int32, int32, int32)
    is native(&libwrapper) { * }

sub QWQPainterdrawEllipse_3(Pointer, int32, int32, int32, int32)
    is native(&libwrapper) { * }

