
# 
# This file has been automatically generated by RaQt_maker V0.0.2.
# To modify and regenerate it, see the source code available here: 
#         https://github.com/yguillemot/RaQt_maker
# 

use NativeCall;
use Qt::QtWidgets:ver<0.0.2>:auth<cpan:YGUILLEMO>:api<2>;
use Qt::QtWidgets::QtHelpers:ver<0.0.2>:auth<cpan:YGUILLEMO>:api<2>;
use Qt::QtWidgets::QtWrappers:ver<0.0.2>:auth<cpan:YGUILLEMO>:api<2>;
use Qt::QtWidgets::QCoreApplication:ver<0.0.2>:auth<cpan:YGUILLEMO>:api<2>;
use Qt::QtWidgets::RQGuiApplication:ver<0.0.2>:auth<cpan:YGUILLEMO>:api<2>;



class QGuiApplication:ver<0.0.2>:auth<cpan:YGUILLEMO>:api<2>
    is QCoreApplication
    does RQGuiApplication
    is export {

    submethod new(|capture) is hidden-from-backtrace {
        unimplementedCtor("QGuiApplication");
    }

}

