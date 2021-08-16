
# 
# This file has been automatically generated by RaQt_maker V0.0.4.
# To modify and regenerate it, see the source code available here: 
#         https://github.com/yguillemot/RaQt_maker
# 

use NativeCall;
use Qt::QtWidgets:ver<0.0.4>:auth<cpan:YGUILLEMO>:api<2>;
use Qt::QtWidgets::QtHelpers:ver<0.0.4>:auth<cpan:YGUILLEMO>:api<2>;
use Qt::QtWidgets::QtWrappers:ver<0.0.4>:auth<cpan:YGUILLEMO>:api<2>;
use Qt::QtWidgets::QEvent:ver<0.0.4>:auth<cpan:YGUILLEMO>:api<2>;
use Qt::QtWidgets::QObject:ver<0.0.4>:auth<cpan:YGUILLEMO>:api<2>;
use Qt::QtWidgets::RQCoreApplication:ver<0.0.4>:auth<cpan:YGUILLEMO>:api<2>;
use Qt::QtWidgets::RQObject:ver<0.0.4>:auth<cpan:YGUILLEMO>:api<2>;



class QCoreApplication:ver<0.0.4>:auth<cpan:YGUILLEMO>:api<2>
    is QObject
    does RQCoreApplication
    is export {

    submethod new(|capture) is hidden-from-backtrace {
        unimplementedCtor("QCoreApplication");
    }

    method sendEvent(RQObject $receiver, QEvent $event --> Bool)
    {
        my $a1 = ?$receiver ?? $receiver.address !! QWInt2Pointer(0);
        my $a2 = ?$event ?? $event.address !! QWInt2Pointer(0);
        my $result = QWQCoreApplicationsendEvent($a1, $a2);
        my $result1 = ?$result;
        return $result1;
    }

    method quit() is QtSlot
    {
        QWQCoreApplicationquit();
    }

}


sub QWQCoreApplicationsendEvent(Pointer, Pointer)
    returns int8 is native(&libwrapper) { * }

sub QWQCoreApplicationquit()
    is native(&libwrapper) { * }

