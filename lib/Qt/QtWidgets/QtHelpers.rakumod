
# 
# This file has been automatically generated by RaQt_maker V0.0.3.
# To modify and regenerate it, see the source code available here: 
#         https://github.com/yguillemot/RaQt_maker
# 

unit module QtHelpers:ver<0.0.3>:auth<cpan:YGUILLEMO>:api<2>;

our constant %qType = {
    "Int" => "int",
    "Str" => "QString",
    "Bool" => "bool"
};

# List of main Qt classes
our constant $qtClasses is export = set (
        'QAbstractButton',
        'QAbstractScrollArea',
        'QAction',
        'QBoxLayout',
        'QCoreApplication',
        'QDialog',
        'QFileDialog',
        'QFrame',
        'QGuiApplication',
        'QHBoxLayout',
        'QLabel',
        'QLayout',
        'QLineEdit',
        'QMenu',
        'QPushButton',
        'QTextEdit',
        'QTimer',
        'QVBoxLayout',
        'QWidget',

);


our constant $simpleSignatures is export = set <
    ()
    (Int)
    (Str)
    (Bool)
>;

# Not implemented yet
#     (Int,Int)
#     (Str,Str)
#     (Int,Str)
#     (Str,Int)


our constant %qSigSig is export = {
    "()" => "()",
    "(Int)" => "(int)",
    "(Int,Int)" => "(int,int)",
    "(Str)" => "(QString)",
    "(Str,Str)" => "(QString,QString)",
    "(Int,Str)" => "(int,QString)",
    "(Str,Int)" => "(QString,int)",
    "(Bool)" => "(bool)"
};


sub libwrapper is export {
  my $lib-name = sprintf($*VM.config<dll>, "RakuQtWidgets");
  my $installed-lib = ~(%?RESOURCES{$lib-name});
  
  # If the native lib is not installed, try to find it in a standard library path
  return $installed-lib ?? $installed-lib !! "$lib-name";
}


# Global hashes
our %signals is export;  # className -> @[SigSlot( "signal(signature)", isSimpleSig )]
our %slots is export;
our %callbacks is export;  # classname -> @virtualMethodName 




# TODO : Move into Qt::QtWidgets::Helpers
class SigSlot is export {
    has Str $.name;
    has Str $.sig;      # Raku reduced signature string
    has Str $.qSig;     # Qt C++ reduced signature string
    has Bool $.sigIsSimple;
    has Signature $.signature is rw;
    has Bool $.isSlot;
    has Bool $.isPlainQt;
    has Bool $.isPrivate = False;        # Only for signals
}

BEGIN {
    %signals<QAbstractButton>.push(SigSlot.new(
        name => "pressed",
        sig => "()",
        qSig => "()",
        sigIsSimple => True,
        isPlainQt => True,
        isSlot => False,
        isPrivate => False
    ));
    %signals<QAbstractButton>.push(SigSlot.new(
        name => "clicked",
        sig => "(Bool)",
        qSig => "(bool)",
        sigIsSimple => True,
        isPlainQt => True,
        isSlot => False,
        isPrivate => False
    ));
    %signals<QAction>.push(SigSlot.new(
        name => "triggered",
        sig => "(Bool)",
        qSig => "(bool)",
        sigIsSimple => True,
        isPlainQt => True,
        isSlot => False,
        isPrivate => False
    ));
    %signals<QLineEdit>.push(SigSlot.new(
        name => "returnPressed",
        sig => "()",
        qSig => "()",
        sigIsSimple => True,
        isPlainQt => True,
        isSlot => False,
        isPrivate => False
    ));
    %signals<QLineEdit>.push(SigSlot.new(
        name => "editingFinished",
        sig => "()",
        qSig => "()",
        sigIsSimple => True,
        isPlainQt => True,
        isSlot => False,
        isPrivate => False
    ));
    %signals<QTimer>.push(SigSlot.new(
        name => "timeout",
        sig => "()",
        qSig => "()",
        sigIsSimple => True,
        isPlainQt => True,
        isSlot => False,
        isPrivate => True
    ));


    %slots<QAbstractButton>.push(SigSlot.new(
        name => "click",
        sig => "()",
        qSig => "()",
        sigIsSimple => True,
        isPlainQt => True,
        isSlot => True,
    ));
    %slots<QAction>.push(SigSlot.new(
        name => "trigger",
        sig => "()",
        qSig => "()",
        sigIsSimple => True,
        isPlainQt => True,
        isSlot => True,
    ));
    %slots<QAction>.push(SigSlot.new(
        name => "setEnabled",
        sig => "(Bool)",
        qSig => "(bool)",
        sigIsSimple => True,
        isPlainQt => True,
        isSlot => True,
    ));
    %slots<QAction>.push(SigSlot.new(
        name => "setDisabled",
        sig => "(Bool)",
        qSig => "(bool)",
        sigIsSimple => True,
        isPlainQt => True,
        isSlot => True,
    ));
    %slots<QCoreApplication>.push(SigSlot.new(
        name => "quit",
        sig => "()",
        qSig => "()",
        sigIsSimple => True,
        isPlainQt => True,
        isSlot => True,
    ));
    %slots<QLabel>.push(SigSlot.new(
        name => "setText",
        sig => "(Str)",
        qSig => "(const QString&)",
        sigIsSimple => True,
        isPlainQt => True,
        isSlot => True,
    ));
    %slots<QLabel>.push(SigSlot.new(
        name => "clear",
        sig => "()",
        qSig => "()",
        sigIsSimple => True,
        isPlainQt => True,
        isSlot => True,
    ));
    %slots<QLineEdit>.push(SigSlot.new(
        name => "setText",
        sig => "(Str)",
        qSig => "(const QString&)",
        sigIsSimple => True,
        isPlainQt => True,
        isSlot => True,
    ));
    %slots<QLineEdit>.push(SigSlot.new(
        name => "clear",
        sig => "()",
        qSig => "()",
        sigIsSimple => True,
        isPlainQt => True,
        isSlot => True,
    ));
    %slots<QTimer>.push(SigSlot.new(
        name => "start",
        sig => "()",
        qSig => "()",
        sigIsSimple => True,
        isPlainQt => True,
        isSlot => True,
    ));
    %slots<QTimer>.push(SigSlot.new(
        name => "stop",
        sig => "()",
        qSig => "()",
        sigIsSimple => True,
        isPlainQt => True,
        isSlot => True,
    ));
    %slots<QWidget>.push(SigSlot.new(
        name => "setDisabled",
        sig => "(Bool)",
        qSig => "(bool)",
        sigIsSimple => True,
        isPlainQt => True,
        isSlot => True,
    ));
    %slots<QWidget>.push(SigSlot.new(
        name => "setWindowTitle",
        sig => "(Str)",
        qSig => "(const QString&)",
        sigIsSimple => True,
        isPlainQt => True,
        isSlot => True,
    ));
    %slots<QWidget>.push(SigSlot.new(
        name => "setFocus",
        sig => "()",
        qSig => "()",
        sigIsSimple => True,
        isPlainQt => True,
        isSlot => True,
    ));
    %slots<QWidget>.push(SigSlot.new(
        name => "update",
        sig => "()",
        qSig => "()",
        sigIsSimple => True,
        isPlainQt => True,
        isSlot => True,
    ));
    %slots<QWidget>.push(SigSlot.new(
        name => "show",
        sig => "()",
        qSig => "()",
        sigIsSimple => True,
        isPlainQt => True,
        isSlot => True,
    ));


    %callbacks<QWidget> = <
        mousePressEvent
        mouseReleaseEvent
        mouseMoveEvent
        enterEvent
        leaveEvent
        paintEvent
        resizeEvent
    >;

}



# Predeclaration of classes to avoid problems with potential cross references

#BEGIN_INSERTION_HERE
#QT_CLASSES_STUBS
#END_INSERTION_HERE

# ConnectionsManager $CM : Where global values are stored
our $CM is export;





# Die with an error message when ctor not found
sub unimplementedCtor(Str $class) is export is hidden-from-backtrace
{
    # Use Backtrace.new rather than die because die immediately fails with
    # "MoarVM panic: Internal error: Unwound entire stack and missed handler"
    # when called from a callback called from Qt

    note "";
    note "Current Qt::QtWidgets version implements no constructor for class $class.";
    my $trace = Backtrace.new;
    say ~$trace;
    exit;
}


#############################################################################



sub cap2sigStr(Capture $c) is export
{
    my Str $s = "(";
    my Str $sep = "";
    for $c.list -> $e {
        $s ~= $sep ~ $e.WHAT.perl;
        $sep = ",";
    }
    return $s ~ ")";
}


sub sig2str(Signature $s --> Str) is export
{
    my Str $r = "(";
    my Str $sep = "";
    for $s.params -> $p {
        $r ~= $sep ~ $p.type.perl;
        $sep = ",";
    }
    return $r ~ ")";
}

sub sig2qSigStr(Signature $s --> Str) is export
{
    my Str $r = "(";
    my Str $sep = "";
    for $s.params -> $p {
        if %qType{$p.type.perl}:exists {
            $r ~= $sep ~ %qType{$p.type.perl};
        } else {
            $r ~= $sep ~ "UNKNOWN";
        }
        $sep = ",";
    }
    return $r ~ ")";
}


sub methPosArgs2Str(Signature $s --> Str) is export
{
    # say "METH SIGNAL : ", $meth.name;
    # say "   Signature : ", $meth.signature.params;
    # say "   Middle : ", posArgs2Str($meth.signature.params);
    my Str $r = "(";
    my Str $sep = "";
    my Bool $first = True;
    for $s.params -> $p {
        if $first { $first = False; next }  # Skip the object reference
        last if $p.gist.Str ~~ /\*/;        # Ignore slurpy arguments
        my $t = $p.type.^name;
        $t ~~ s:g/<[\(\)]>**1//;  # Can't use $p.type.raku if type is a stub
        $r ~= $sep ~ $t;
        $sep = ",";
    }
    return $r ~ ")";
}


# Remove the invocant from a signature
# Return the signature unchanged if no invocant found
sub removeInvocant(Signature $s --> Signature) is export
{
    # Signature should at least have an invocant
    return $s if $s.count ~~ 0;         # Can't be the signature of a method

    # Remove the invocant
    my ($o, @p) = ($s.params);
    return $s unless $o.invocant;        # Is not the signature of a method

    # Create the new signature
    my $newSig = Signature.new(
        arity => $s.arity - 1,
        count => $s.count.Num - 1,
        params => @p,
        returns => $s.returns
    );
    return $newSig;
}


# Returns 0 if applying a capture coming from $src to the $dst Signature works
# Returns a negative value if it doesn't work
# Returns n>0 if n parameters having default values must be removed
# from the destination signature to allow the Qt connection
sub slotAcceptsSig(Signature $dst, Signature $src --> Int) is export
{
    # A method without any argument may have no signature
    my $slot = $dst ?? $dst !! :();
    my $sig = $src ?? $src !! :();

    # Each parameter without default must receive an argument
    return -1 if $sig.count < $slot.arity;

    # Related parameters must have the same type
    for $sig.params Z $slot.params -> ($a, $b) {
        return -1 if $a.type !~~ $b.type;
    }

    # Sig may have less params than slot if slot params have default values
    return 0 if $slot.arity <= $sig.count <= $slot.count;
    
    # Return the number of parameters in $sig without
    # a related parameter in $slot
    return $sig.count - $slot.count;
}


# Remove $n args from the stringified Raku signature $sig
sub removeArgs(Str $sig is copy, Int $n --> Str) is export
{
    my $p = $sig.chars;
    for (1..$n) {
    say "'", $sig, "' : ", $p, " ", $p.WHAT;;
        $p = rindex $sig, ',', $p - 1;
    say "'", $sig, "' : ", $p, " ", $p.WHAT;;
        return '()' if !$p;
    }
    $sig.substr-rw($p) = ')';
    return $sig;
}
