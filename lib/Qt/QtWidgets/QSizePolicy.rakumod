
# 
# This file has been automatically generated by RaQt_maker V0.0.6.
# To modify and regenerate it, see the source code available here: 
#         https://github.com/yguillemot/RaQt_maker
# 

use NativeCall;
use Qt::QtWidgets:ver<0.0.6>:auth<zef:yguillemot>:api<2>;
use Qt::QtWidgets::QtHelpers:ver<0.0.6>:auth<zef:yguillemot>:api<2>;
use Qt::QtWidgets::QtWrappers:ver<0.0.6>:auth<zef:yguillemot>:api<2>;
use Qt::QtWidgets::QtBase:ver<0.0.6>:auth<zef:yguillemot>:api<2>;
use Qt::QtWidgets::RQSizePolicy:ver<0.0.6>:auth<zef:yguillemot>:api<2>;



class QSizePolicy:ver<0.0.6>:auth<zef:yguillemot>:api<2>
    is QtObject
    does RQSizePolicy
    is export {

    enum Policy (
        Fixed => 0,
        Minimum => 1,
        Maximum => 4,
        Preferred => 5,
        MinimumExpanding => 3,
        Expanding => 7,
        Ignored => 13,
    );

    multi sub ctor(QtBase $this, NativeCall::Types::Pointer $p) {
        # Get access to a preexisting Qt object
        $this.address = $p;
        $this.ownedByRaku = False;
    }

    multi sub ctor(|capture) is hidden-from-backtrace {
        unimplementedCtor("QSizePolicy");
    }

    submethod new(|capture) {
        my QSizePolicy $rObj = self.bless;
        ctor($rObj, |capture);
        return $rObj;
    }

}

