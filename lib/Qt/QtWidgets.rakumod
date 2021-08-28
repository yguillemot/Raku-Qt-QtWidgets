
# 
# This file has been automatically generated by RaQt_maker V0.0.5.
# To modify and regenerate it, see the source code available here: 
#         https://github.com/yguillemot/RaQt_maker
# 

unit module QtWidgets:ver<0.0.5>:auth<cpan:YGUILLEMO>:api<2>;

# TODO : Rather than to give a created Id value to QtObject objects, why not
#        to use the address of the C++ object in the wrapper as Id ?

use NativeCall;
use Qt::QtWidgets::QtBase:ver<0.0.5>:auth<cpan:YGUILLEMO>:api<2>;
use Qt::QtWidgets::QtHelpers:ver<0.0.5>:auth<cpan:YGUILLEMO>:api<2>;
use Qt::QtWidgets::QtWrappers:ver<0.0.5>:auth<cpan:YGUILLEMO>:api<2>;


############################################################################
# QtSigsloty

# This class manage the signals and slots of Qt::QtWidgets object
class QtSigsloty is QtBase is export {

#     say 'INIT @signals';

    ##################################################################
    ### Executed at compile time for "is QtSignal" methods
    multi trait_mod:<is> (Routine $meth, :$QtSignal) is export
    {
        my Str $signature = methPosArgs2Str($meth.signature);
        my Str $class = $meth.signature.params[0].type.raku;
        my Bool $hasSimpleSig = $signature (elem) $simpleSignatures;

        # Look for an already registered signal
        my SigSlot $ss;
        if %signals{$class}:exists {
            for @(%signals{$class}) -> $s {
                if $s.name eq $meth.name && $s.sig eq $signature {
                    $ss = $s;
                    last;
                }
            }
        }

        # If the signal is already registered (is a plainQt one) add
        # its signature else register the signal
        if $ss {
            # Doesn't work : removed in RaQt_maker v0.0.4
            # $ss.signature = removeInvocant $meth.signature;
        } else {
            %signals{$class}.push(SigSlot.new(
                    name => $meth.name,
                    sig => $signature,
                    sigIsSimple => $hasSimpleSig,
                    signature => removeInvocant($meth.signature),
                    isPlainQt => False,
                    isSlot => False));
        }

# say "METH SIGNAL : ", $meth.name,
#     "   Signature : ", $meth.signature.params,
#     "   i.e. : ", $signature;

        $meth.wrap: -> $f, |a {
        
# Need a test here to fail with a clear message where the signal is called
# rather than with some cryptic message far away inside the VM.
#
# Currently not working because removeInvocant returns an unusable signature.
# See rakudo issue #4241.
#
#             say "WRAP f : ", $f.WHAT, " : ", $f.raku;
#             if |a !~~ removeInvocant($meth.signature) {
#                 say '|a = ', |a;
#                 say 'Sig = ', removeInvocant($meth.signature);
#                 die "Qt signal called with wrong parameters";
#             }

            $f.qtEmit($meth.name, a, $signature, $hasSimpleSig)
        };
    }
    ##################################################################

    ##################################################################
    ### Executed at compile time for "is QtPrivateSignal" methods
    multi trait_mod:<is> (Routine $meth, :$QtPrivateSignal) is export
    {
        my Str $signature = methPosArgs2Str($meth.signature);
        my Str $class = $meth.signature.params[0].type.raku;
        my Bool $hasSimpleSig = $signature (elem) $simpleSignatures;

        # Private signals should ALWAYS be plain Qt
        #  ==> Too much code here ???

        # Look for an already registered signal
        my SigSlot $ss;
        if %signals{$class}:exists {
            for @(%signals{$class}) -> $s {
                if $s.name eq $meth.name && $s.sig eq $signature {
                    $ss = $s;
                    last;
                }
            }
        }

        # If the signal is already registered (is a plainQt one) add
        # its signature else register the signal
        if $ss {
            # Doesn't work : removed in RaQt_maker v0.0.4
            $ss.signature = removeInvocant $meth.signature;
        } else {
            %signals{$class}.push(SigSlot.new(
                    name => $meth.name,
                    sig => $signature,
                    sigIsSimple => $hasSimpleSig,
                    signature => removeInvocant($meth.signature),
                    isPlainQt => False,
                    isSlot => False,
                    isPrivate => True));
        }


# say "METH PRIVATE SIGNAL : ", $meth.name,
#     "   Signature : ", $meth.signature.params,
#     "   Soit : ", $signature;

        $meth.wrap: -> $f, |a {
            $f.qtEmit($meth.name, a, $signature, $hasSimpleSig)
        };
    }
    ##################################################################

    ##################################################################
    ### Executed at compile time for "is QtSlot" methods
    multi trait_mod:<is> (Routine $meth, :$QtSlot) is export
    {
#         say "SLOT : ", $meth.name;

        my Str $signature = methPosArgs2Str($meth.signature);
        my Str $class = $meth.signature.params[0].type.^name;
        $class ~~ s:g/<[\(\)]>**1//; # Can't use .type.raku if .type is a stub
        my Bool $hasSimpleSig = $signature (elem) $simpleSignatures;

        # Look for an already registered slot
        my SigSlot $ss;
        if %slots{$class}:exists {
            for @(%slots{$class}) -> $s {
                if $s.name eq $meth.name && $s.sig eq $signature {
                    $ss = $s;
                    last;
                }
            }
        }

        # If the slot is already registered (is a plainQt one) add
        # its signature else register the slot
        if $ss {
            # Doesn't work : removed in RaQt_maker v0.0.4
            $ss.signature = removeInvocant $meth.signature;
        } else {
            %slots{$class}.push(SigSlot.new(
                    name => $meth.name,
                    sig => $signature,
                    sigIsSimple => $hasSimpleSig,
                    signature => removeInvocant($meth.signature),
                    isPlainQt => False,
                    isSlot => True));
        }

#         %slots{$class}.push(SigSlot.new(name => $meth.name,
#                                           sig => $signature,
#                                           sigIsSimple => $hasSimpleSig,
#                                           rSignature =>
#                                                 removeInvocant($meth.signature),
#                                           isPlainQt => $class (elem) $qtClasses,
#                                           isSlot => True));

# say "METH SLOT : ", $meth.name,
#     "   Signature : ", $meth.signature.params,
#     "   Soit : ", $signature;

    }


#     submethod TWEAK {
#         say ::?CLASS, " TWEAK";
#     }

}


############################################################################
# QtObject

# A Raku object with a related C++ object in Qt library
class QtObject is QtSigsloty is export {

    has int32 $.id;

    # Pointers to C++ objects "connectors" : for local classes only
    has %.emitters;
    has %.receivers;

    submethod TWEAK {
        $!id = $CM.addObj: self;

        %!emitters = ();
        %!receivers = ();

        # Ordered list of the current class and its parents
        my @classNames = (self.^name);
        for self.^parents -> $p {
            @classNames.push($p.^name);
        }

        # Look for defined signals and instantiate ConnectorE C++ objects
#         say " SIGNALS :";
        for @classNames -> $c {
            next if $c (elem) $qtClasses; # Qt classes don't need connectors
            if %signals{$c}:exists {
                for @(%signals{$c}) -> $s {
                    my ($signal, $signature) = ($s.name, $s.sig);
                    my $sigSigStr = $signal ~ $signature;
                    last if %!emitters{$sigSigStr}:exists; # Signal is verridden
#                     say "    > ", $signal, " : ", $signature;
#                     say "before QWConnectorECTOR";
                    my Pointer $p = QWConnectorECTOR($!id, $signal, $signature);
#                     say "after QWConnectorECTOR p = 0x", QWPointer2Int($p).base(16);
                    %!emitters{$sigSigStr} = $p;
                }
            }
        }

        # Look for defined slots and instantiate ConnectorR C++ objects
#         say " SLOTS :";
        for @classNames -> $c {
           next if $c (elem) $qtClasses; # Qt classes don't need connectors
           if %slots{$c}:exists {
                for @(%slots{$c}) -> $s {
                    my ($slot, $signature) = ($s.name, $s.sig);
                    my $slotSigStr = $slot ~ $signature;
                    last if %!receivers{$slotSigStr}:exists; # Slot is verridden
#                     say "    > ", $slot, " : ", $signature;
                    my Pointer $p = QWConnectorRCTOR($!id, $slot, $signature);
#                     say "after QWConnectorRCTOR p = 0x", QWPointer2Int($p).base(16);
                    %!receivers{$slotSigStr} = $p;
                }
            }
        }
    }


    submethod DESTROY
    {
        for %!emitters.values -> $e {
            QWConnectorEDTOR($e);
        }
        for %!receivers.values -> $r {
            QWConnectorRDTOR($r);
        }
        $CM.removeObj: $!id;
    }


    method qtEmit(Str $signalName, Capture $values, Str $sigStr, Bool $simpleSig)
    {
#         say "Perl qtEmit : signalName=", $signalName, " values=", $values;
#         say "              SigStr=", $sigStr, " simpleSig=", $simpleSig;

        my Pointer $srcObj = %!emitters{$signalName ~ $sigStr};
#         say "XXXX srcObj = ", $srcObj;

        # Is the signal signature a simple one ?
        if $simpleSig {
            # Simple signature signal
#             say "Before switch";
#
#             for %!emitters.kv -> $k, $v {
#                 say "\"", $k, "\" : \"", $v, "\"";
#             }
            
            
            # Beware of the order : Bool must be placed before Int
            given $values {
                when :() {
#                     say "Switch () branch";
                    # QWEmit_(self.address, $signalName);
                    QWEmit_($srcObj, "QWSignal()");
                }
                when :(Bool) {
                    my int $val = (|$values)[0] ?? 1 !! 0;
#                     say "Before calling QWEmit_Bool";
#                     say "   signalName = ", $signalName;
#                     say "   values = ", $values;
#                     say "   val = ", $val;
                    my int64 $p = QWPointer2Int($srcObj);
#                     say "   ptr = Ox", $p.base(16);
                 #   QWEmit_Bool($srcObj, $signalName ~ $sigStr, $val);
                    QWEmit_Bool($srcObj, "QWSignal(bool)", $val);
                }
                when :(Int) { 
#                     say "Switch (Int) branch";
                    QWEmit_Int($srcObj, "QWSignal(int)", |$values);
                }
                when :(Str) {
#                     say "Switch (Str) branch";
                    QWEmit_Str($srcObj, "QWSignal(QString)", |$values);
                }
                default {
                    note "Signature of ", $values, " not found";
                }
            }
            
        } else {
            # Complex data mode, local to local message

            # Get the signal key
            my $keySig = self.id ~ $signalName ~ $sigStr;
            
            # say "KEYSIG = >", $keySig, "<";

            my $connCount = $CM.signalConnections($keySig);
            if !$connCount {
                note "qtEmit: Signal with key \"$keySig\" isn't connected";
                return;
            }

            my int $dataId = $CM.addData($values, $connCount);

#             say "Emit signal with dataId = $dataId";
            QWEmit_Int($srcObj, "QWLocalToLocalSignal(int)", $dataId);
        }
    }


    # Beware : To name this method "dump" may cause an infinite recursion !
    method display {
        for %!emitters.kv -> $k, $v {
            say "\tSIGNAL ", $k, " : \t0x", QWPointer2Int($v).base(16);
        }
        for %!receivers.kv -> $k, $v {
            say "\tSLOT   ", $k, " : \t0x", QWPointer2Int($v).base(16);
        }
    }

}


############
 
sub QWConnectorRCTOR(int32, Str, Str) returns Pointer
    is native(&libwrapper) { * }

sub QWConnectorRDTOR(Pointer)
    is native(&libwrapper) { * }


sub QWConnectorECTOR(int32, Str, Str) returns Pointer
    is native(&libwrapper) { * }

sub QWConnectorEDTOR(Pointer)
    is native(&libwrapper) { * }


sub QWEmit_(Pointer, Str)
        is native(&libwrapper) is export { * }

sub QWEmit_Int(Pointer, Str, int32)
        is native(&libwrapper) is export { * }

sub QWEmit_Str(Pointer, Str, Str)
        is native(&libwrapper) is export { * }

sub QWEmit_Bool(Pointer, Str, int32)
        is native(&libwrapper) is export { * }
        



############################################################################




sub QWconnect(Pointer, Str, Pointer, Str)
        returns int8 is native(&libwrapper) { * }

sub QWdisconnect(Pointer, Str, Pointer, Str)                                                                          
        returns int8 is native(&libwrapper) { * }  



sub connect(QtSigsloty $src, $sigName, QtSigsloty $dst, $slotName)
        is export
{
    my Bool $simple;  # True if signature is "simple"

    my SigSlot $source;
    my SigSlot $destination;

    # Does the specified signal exist ?
    # Look not only in the given class, but also in all its parents
    my @classNames = ($src.^name);
#     say "CLASSLIST (", $src.^name, ")";
    for $src.^parents -> $p {
#         say "\t\t", $p.^name;
        @classNames.push($p.^name);
    }
    SIGLOOP: for @classNames -> $className {
        if %signals{$className}:exists {
            for @(%signals{$className}) -> $v {
                if $v.name ~~ $sigName {
                    $source = $v;
                    last SIGLOOP;
                }
            }
        }
    }
    if !$source {
        die "connect : signal ", $src.^name, ".", $sigName, " not found";
    }

    # Does the specified slot exist ?
    # Look not only in the given class, but also in all its parents
    @classNames = ($dst.^name);
    for $dst.^parents -> $p {
        @classNames.push($p.^name);
    }
    SLOTLOOP: for @classNames -> $className {
        if %slots{$className}:exists {
            for @(%slots{$className}) -> $v {
                if $v.name ~~ $slotName {
                    $destination = $v;
                    $simple = $v.sigIsSimple;
                    last SLOTLOOP;
                }
            }
        }
    }

    if !$destination {
        # Maybe the destination is a signal
        SIGLOOP2: for @classNames -> $className {
            if %signals{$className}:exists {
                for @(%signals{$className}) -> $v {
                    if $v.name ~~ $slotName {
                        $destination = $v;
                        $simple = $v.sigIsSimple;
                        last SIGLOOP2;
                    }
                }
            }
        }
    }

    if !$destination {
        die "connect : destination slot or signal ",
                            $dst.^name, ".", $slotName, " not found";
    }

    # Is destination a private signal ?
    if $destination.isPrivate {
        die "can't connect to private signal ",
                        $dst.^name, ".", $slotName, $destination.sig;
    }

#     say "    source = {$source.name} {$source.sig} simple={$source.sigIsSimple}";
#     say "    destination = {$destination.name} {$destination.sig} simple={$destination.sigIsSimple}";

    # Are source and destination compatible ?
    my $nbp = slotAcceptsSig $destination.signature, $source.signature;
    # say "NBP = $nbp";
    if $nbp < 0 {
        my Str $destNature = $destination.isSlot ?? "slot" !! "signal";
        die "connect : incompatible source and destination\n",
            "source is signal ", $src.^name, "::", $sigName, $source.sig,
           " [", $source.signature.raku, "]\n",
            "destination is $destNature ", $dst.^name, "::", $slotName, $destination.sig,
            " [", ~$destination.signature.raku, "]\n";
    }

    my $slotStrSig = $destination.sig;
    my $slotStrQSig = $destination.qSig;
    # Modify destination signatures if needed
    if $simple && $nbp > 0 {
        $slotStrSig = removeArgs($slotStrSig, $nbp);
        $slotStrQSig = removeArgs($slotStrSig, $nbp);
    }

    # create the connexion

    my Pointer $srcObj = Nil;
    my Pointer $dstObj = Nil;
    my Str $signal = "???";
    my Str $slot = "???";

    if $simple {
        # Plusieurs cas a etudier...
        if $source.isPlainQt {
            $srcObj = $src.address;
            $signal = $sigName ~ $source.qSig;
        } else {
            $srcObj = $src.emitters{$sigName ~ $source.sig};
            $signal = "QWSignal" ~ %qSigSig{$source.sig};
        }
        if $destination.isPlainQt {
            $dstObj = $dst.address;
            $slot = $slotName ~ $slotStrQSig;
        } else {
            if $destination.isSlot {
                $dstObj = $dst.receivers{$slotName ~ $slotStrSig};
                $slot = "QWSlot" ~ %qSigSig{$slotStrSig};
            } else {
                $dstObj = $dst.emitters{$slotName ~ $slotStrSig};
                $slot = "QWSignal" ~ %qSigSig{$slotStrSig};
            }
        }

    } else {
        # Local to local connexion, with use of the cache :
        # Neither source nor destination are pure Qt widgets
        # Data will be kept inside perl space and identified with
        # an unique data key.
        # This key will be send instead of the data.

        # The following key identifies the source of the connection
        my $keySig = $src.id ~ $sigName ~ $source.sig;
        # say "KEYSIG = ", $keySig;

        # Count connexions. This count is needed to remove the data
        # when all the connexions have been used.
        $CM.addSignalConnection($keySig);

        $signal = "QWSignal(int)";
        $slot = "QWLocalToLocalSlot(int)";
        $srcObj = $src.emitters{$sigName ~ $source.sig};
        $dstObj = $dst.receivers{$slotName ~ $destination.sig};
    }

    # say "CONNECT : $signal --> $slot";

    # Then connect inside Qt
    if !QWconnect($srcObj, $signal, $dstObj, $slot) {
        die "Can't connect $sigName to $slotName";
    }
}

#------------------------------------------------------------------



sub disconnect(QtSigsloty $src, $sigName, QtSigsloty $dst, $slotName)
        is export
{
    my Bool $simple;  # True if signature is "simple"

#     say "    signalStrSig = \"$signalStrSig\"";
#     say "    slotStrSig = \"$slotStrSig\"";

    my SigSlot $source;
    my SigSlot $destination;

    # Does the specified signal exist ?
    # Look not only in the given class, but also in all its parents
    my @classNames = ($src.^name);
#     say "CLASSLIST (", $src.^name, ")";
    for $src.^parents -> $p {
#         say "\t\t", $p.^name;
        @classNames.push($p.^name);
    }
    SIGLOOP: for @classNames -> $className {
        if %signals{$className}:exists {
            for @(%signals{$className}) -> $v {
                if $v.name ~~ $sigName {
                    $source = $v;
                    last SIGLOOP;
                }
            }
        }
    }
    if !$source {
        die "disconnect : signal ", $src.^name, ".", $sigName, " not found";
    }

    # Does the specified slot exist ?
    # Look not only in the given class, but also in all its parents
    @classNames = ($dst.^name);
    for $dst.^parents -> $p {
        @classNames.push($p.^name);
    }
    SLOTLOOP: for @classNames -> $className {
        if %slots{$className}:exists {
            for @(%slots{$className}) -> $v {
                if $v.name ~~ $slotName {
                    $destination = $v;
                    $simple = $v.sigIsSimple;
                    last SLOTLOOP;
                }
            }
        }
    }

    if !$destination {
        # Maybe the destination is a signal
        SIGLOOP2: for @classNames -> $className {
            if %signals{$className}:exists {
                for @(%signals{$className}) -> $v {
                    if $v.name ~~ $slotName {
                        $destination = $v;
                        $simple = $v.sigIsSimple;
                        last SIGLOOP2;
                    }
                }
            }
        }
    }

    if !$destination {
        die "disconnect : destination slot or signal ",
                            $dst.^name, ".", $slotName, " not found";
    }

    # Is destination a private signal ?
    if $destination.isPrivate {
        die "can't be connected to a private signal ",
                        $dst.^name, ".", $slotName, $destination.sig;
    }

    # Are source and destination compatible ?
    my $nbp = slotAcceptsSig $destination.signature, $source.signature;
    # say "NBP = $nbp";
    if $nbp < 0 {
        my Str $destNature = $destination.isSlot ?? "slot" !! "signal";
        die "disconnect : incompatible source and destination\n",
            "source is signal ", $src.^name, "::", $sigName, $source.sig,
            " [", $source.signature.raku, "]\n",
            "destination is $destNature ", $dst.^name, "::", $slotName, $destination.sig,
            " [", ~$destination.signature.raku, "]\n";
    }

    my $slotStrSig = $destination.sig;
    my $slotStrQSig = $destination.qSig;
    # Modify destination signatures if needed
    if $simple && $nbp > 0 {
        $slotStrSig = removeArgs($slotStrSig, $nbp);
        $slotStrQSig = removeArgs($slotStrSig, $nbp);
    }

    # remove the connexion

    my Pointer $srcObj = Nil;
    my Pointer $dstObj = Nil;
    my Str $signal = "???";
    my Str $slot = "???";


    if $simple {
        # Plusieurs cas a etudier...
        if $source.isPlainQt {
            $srcObj = $src.address;
            $signal = $sigName ~ $source.qSig;
        } else {
            $srcObj = $src.emitters{$sigName ~ $source.sig};
            $signal = "QWSignal" ~ %qSigSig{$source.sig};
        }
        if $destination.isPlainQt {
            $dstObj = $dst.address;
            $slot = $slotName ~ $slotStrQSig;
        } else {
            if $destination.isSlot {
                $dstObj = $dst.receivers{$slotName ~ $slotStrSig};
                $slot = "QWSlot" ~ %qSigSig{$slotStrSig};
            } else {
                $dstObj = $dst.emitters{$slotName ~ $slotStrSig};
                $slot = "QWSignal" ~ %qSigSig{$slotStrSig};
            }
        }

    } else {
        # Local to local connexion, with use of the cache :
        # Neither source nor destination are pure Qt widgets
        # Data will be kept inside perl space and identified with
        # a unique data key.
        # This key will be send instead of the data.

        # The following key identifies the source of the connection
        my $keySig = $src.id ~ $sigName ~ $source.sig;
#         say "KEYSIG = ", $keySig;

        # Count connexions. This count is needed to remove the data
        # when all the connexions have been used.
        $CM.rmSignalConnection($keySig);

        $signal = "QWSignal(int)";
        $slot = "QWLocalToLocalSlot(int)";
        $srcObj = $src.emitters{$sigName ~ $source.sig};
        $dstObj = $dst.receivers{$slotName ~ $destination.sig};
    }

    # say "CONNECT : $signal --> $slot";

    # Then connect inside Qt
    QWdisconnect($srcObj, $signal, $dstObj, $slot);
}

#------------------------------------------------------------------

 




############################################################################
############################################################################



# For debug
sub showSigsSlots is export {
    say "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~";
    say "SIGNALS :";
    for %signals.kv -> $k, $v {
        say "   ", $k, "\t:";
        for @$v -> $u {
            say "\t", $u.name, " ", $u.sig, " ", $u.sigIsSimple,
                "\t", $u.signature;
        }
    }
    say "SLOTS :";
    for %slots.kv -> $k, $v {
        say "   ", $k, "\t:";
        for @$v -> $u {
            say "\t", $u.name, " ", $u.sig, " ", $u.sigIsSimple,
                "\t", $u.signature;
        }
    }
    say "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~";
}







##############################################################################


sub QWDump()
        is native(&libwrapper) { * }


sub QtDump is export {
    say "DUMP " ~ "=" x 50;
    $CM.dump;
    QWDump();
    say "=" x 55;
}


##############################################################################
##############################################################################









