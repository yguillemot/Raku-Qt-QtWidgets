
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

  # IS THIS USEFUL ???
    # Create empty resources files for all platforms so that package managers
    # do not complain
    for <dll dylib so> -> $ext {
        "$destdir/libQtWidgetsWrapper.$ext".IO.spurt("");
    }

    shell("cd $makefiledir; qmake QtWidgetsWrapper.pro; make");
    shell("cp $makefiledir/libQtWidgetsWrapper.so.1.0.0 $destdir/libQtWidgetsWrapper.so");

}

