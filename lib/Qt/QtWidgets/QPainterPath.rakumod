
# 
# This file has been automatically generated by RaQt_maker V0.0.7.
# To modify and regenerate it, see the source code available here: 
#         https://github.com/yguillemot/RaQt_maker
# 

use NativeCall;
use Qt::QtWidgets:ver<0.0.7>:auth<zef:yguillemot>:api<2>;
use Qt::QtWidgets::QtHelpers:ver<0.0.7>:auth<zef:yguillemot>:api<2>;
use Qt::QtWidgets::QtWrappers:ver<0.0.7>:auth<zef:yguillemot>:api<2>;
use Qt::QtWidgets::QtBase:ver<0.0.7>:auth<zef:yguillemot>:api<2>;
use Qt::QtWidgets::RQPainterPath:ver<0.0.7>:auth<zef:yguillemot>:api<2>;



class QPainterPath:ver<0.0.7>:auth<zef:yguillemot>:api<2>
    is QtObject
    does RQPainterPath
    is export {

    multi sub ctor(QtBase $this, NativeCall::Types::Pointer $p) {
        # Get access to a preexisting Qt object
        $this.address = $p;
        $this.ownedByRaku = False;
    }

    multi sub ctor(|capture) is hidden-from-backtrace {
        unimplementedCtor("QPainterPath");
    }

    submethod new(|capture) {
        my QPainterPath $rObj = self.bless;
        ctor($rObj, |capture);
        return $rObj;
    }

}


