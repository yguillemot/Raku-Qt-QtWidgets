
# 
# This file has been automatically generated by RaQt_maker V0.0.6.
# To modify and regenerate it, see the source code available here: 
#         https://github.com/yguillemot/RaQt_maker
# 


use NativeCall;
use Qt::QtWidgets::QtHelpers:ver<0.0.6>:auth<zef:yguillemot>:api<2>;


# This class is parent of everything related to Qt.
# It owns a pointer to a Qt object.
class QtBase:ver<0.0.6>:auth<zef:yguillemot>:api<2>
    is export {

    has Pointer $.address is rw;
    has Bool $.ownedByRaku is rw;

    method validateCallBacks()
    {
        for self.^parents>>.raku -> $cl {
            next if %callbacks{$cl}:!exists;
            for |%callbacks{$cl} -> $cb {
                for self.^methods>>.name -> $m {
                    if $m eq $cb {
                        # Valid callback $cb (or $m) of class $cl
                        self.validateCB($m);
                   }
                }
            }
        }
    }

}


 
