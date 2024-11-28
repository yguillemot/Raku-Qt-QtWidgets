
use v6;

unit class Build;


method build($workdir) {

    if $*DISTRO.is-win {
        die "Windows is not supported at the moment";
        return 1;
    }

    if $*DISTRO.name eq "macosx" {
        die "Mac OS is not supported at the moment";
        return 1;
    }

    # on Unix, let us try to make the shared library
    my $makefiledir = "$workdir/src";
    my $destdir = "$workdir/resources";

    shell("cd $makefiledir && qmake RakuQtWidgets.pro && make");
    shell("cp $makefiledir/libRakuQtWidgets.so.1.0.0 $destdir/libRakuQtWidgets.so");

}

