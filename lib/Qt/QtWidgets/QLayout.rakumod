
# 
# This file has been automatically generated by RaQt_maker V0.0.2.
# To modify and regenerate it, see the source code available here: 
#         https://github.com/yguillemot/RaQt_maker
# 

use NativeCall;
use Qt::QtWidgets:ver<0.0.2>:auth<cpan:YGUILLEMO>:api<2>;
use Qt::QtWidgets::QtHelpers:ver<0.0.2>:auth<cpan:YGUILLEMO>:api<2>;
use Qt::QtWidgets::QtWrappers:ver<0.0.2>:auth<cpan:YGUILLEMO>:api<2>;
use Qt::QtWidgets::QLayoutItem:ver<0.0.2>:auth<cpan:YGUILLEMO>:api<2>;
use Qt::QtWidgets::QObject:ver<0.0.2>:auth<cpan:YGUILLEMO>:api<2>;
use Qt::QtWidgets::Qt:ver<0.0.2>:auth<cpan:YGUILLEMO>:api<2>;
use Qt::QtWidgets::RQLayout:ver<0.0.2>:auth<cpan:YGUILLEMO>:api<2>;
use Qt::QtWidgets::RQWidget:ver<0.0.2>:auth<cpan:YGUILLEMO>:api<2>;



class QLayout:ver<0.0.2>:auth<cpan:YGUILLEMO>:api<2>
    is QObject
    is QLayoutItem
    does RQLayout
    is export {

    submethod new(|capture) is hidden-from-backtrace {
        unimplementedCtor("QLayout");
    }

    multi method setAlignment(RQWidget $w, Int $alignment --> Bool)
    {
        my $a1 = ?$w ?? $w.address !! QWInt2Pointer(0);
        my $result = QWQLayoutsetAlignment_1(self.address, $a1, $alignment);
        my $result1 = ?$result;
        return $result1;
    }

    multi method setAlignment(RQLayout $l, Int $alignment --> Bool)
    {
        my $a1 = ?$l ?? $l.address !! QWInt2Pointer(0);
        my $result = QWQLayoutsetAlignment_2(self.address, $a1, $alignment);
        my $result1 = ?$result;
        return $result1;
    }

    method addWidget(RQWidget $w)
    {
        my $a1 = ?$w ?? $w.address !! QWInt2Pointer(0);
        QWQLayoutaddWidget(self.address, $a1);
    }

}


sub QWQLayoutsetAlignment_1(Pointer, Pointer, int32)
    returns int8 is native(&libwrapper) { * }

sub QWQLayoutsetAlignment_2(Pointer, Pointer, int32)
    returns int8 is native(&libwrapper) { * }

sub QWQLayoutaddWidget(Pointer, Pointer)
    is native(&libwrapper) { * }
