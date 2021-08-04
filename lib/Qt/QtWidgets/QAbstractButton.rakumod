
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
use Qt::QtWidgets::RQAbstractButton:ver<0.0.3>:auth<cpan:YGUILLEMO>:api<2>;



class QAbstractButton:ver<0.0.3>:auth<cpan:YGUILLEMO>:api<2>
    is QWidget
    does RQAbstractButton
    is export {

    submethod new(|capture) is hidden-from-backtrace {
        unimplementedCtor("QAbstractButton");
    }

    method setText(Str $text)
    {
        QWQAbstractButtonsetText(self.address, $text);
    }

    method text( --> Str)
    {
        my $result = QWQAbstractButtontext(self.address);
        return $result;
    }

    method click() is QtSlot
    {
        QWQAbstractButtonclick(self.address);
    }

    method pressed()
        is QtSignal { ... }

    method clicked(Bool $checked = False)
        is QtSignal { ... }

}


sub QWQAbstractButtonsetText(Pointer, Str)
    is native(&libwrapper) { * }

sub QWQAbstractButtontext(Pointer)
    returns Str is native(&libwrapper) { * }

sub QWQAbstractButtonclick(Pointer)
    is native(&libwrapper) { * }

