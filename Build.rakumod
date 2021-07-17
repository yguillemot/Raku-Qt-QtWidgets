
use v6;

unit class Build;


method build($workdir) {

    if $*DISTRO.is-win {
        # On windows, let us install the bundled DLL version, module installer
        # will copy the DLL for us.
        die "Windows is not supported at the moment";
        return 1;
    }

    if $*DISTRO.name eq "macosx" {
        die "Mac OS is not supported at the moment";
        return 1;
    }

    # on Unix, let us try to make it
    my $makefiledir = "$workdir/src";
    my $destdir = "$workdir/resources";
    $destdir.IO.mkdir;

  # Is this really useful ???
    # Create empty resources files for all platforms so that package managers
    # do not complain
    for <dll dylib so> -> $ext {
        "$destdir/libRakuQtWidgets.$ext".IO.spurt("");
    }

    shell("cd $makefiledir && qmake RakuQtWidgets.pro && make");
    shell("cp $makefiledir/libRakuQtWidgets.so.1.0.0 $destdir/libRakuQtWidgets.so");

}

