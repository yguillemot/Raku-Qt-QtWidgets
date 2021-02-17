Qt::QtWidgets
=============

A Raku module and native wrapper providing an interface to the Qt5 GUI.

DESCRIPTION
===========

This module defines Raku classes trying to mimic the Qt GUI C++ classes.
Qt objects are created and used through the Raku classes with native calls.

This is a work in progress and, currently, only a few classes are defines.
Anyway, the Qt libray is a gigantic piece of work and will never be totally accessible through NAME_X.
In particular, there is no reason to use classes like QString or QMap when Raku itself already provides similar functionalities.

# Examples

clock.raku

2deg_eqn_solver.raku

sketch_board.raku


# Implemented functionnalities

The list of Qt classes and methods already ported is given in the
file doc/Qt/Classes.md

# Classes

The Raku API is modeled on the Qt C++ one.

To instantiate a Qt class object from Raku, just use new with the same arguments
than the C++ constructor.

For example:

when the C++ call of a QPushButton constructor is :

`QPushButton * button = new QPushButton("some text");`

the raku equivalent is:

`my $button = QPushButton.new("some text");`

Same thing with the methods :

the C++ code :

`button->setDisable(true);`

is translated to Raku as :

`$button.setDisable(True);`

# Enums 

C++ enums have their Raku equivalent :

the C++ code :

`QPen * pen = new QPen(Qt::DashLine);`

is translated to Raku as :

`my $pen = QPen.new(Qt::DashLine);`


# Signals and slots

The signals and slots mechanism used by Qt allows unrelated objects to communicate.

A Qt object can have slots and/or signals if it inherits from QObject.

Similarly, NAME_X objects inheriting from "NAME_XObject" class can have slots and/or signals called QtSignals and QtSlots.

A NAME_X slot is an ordinary method defined with the trait "is QtSlot".

```
class MyClass is NAME_XObject {
   ... # Some code
   method mySlot(...) is QtSlot {
        ... # Some code
   }
   ... # Some code
}
```

A NAME_X signal is a method defined with the trait "is QtSignal".
Its associated code is never executed; so a stub is used.

```
class MyClass2 is NAME_XObject {
   ... # Some code
   method mySignal(...) is QtSignal { ... }
   ... # Some code
}
```

# Connect

The sub "connect" connects a QtSignal to a QtSlot (or to another QtSignal).

`sub connect(NAME_XObject $src, Str $signal, NAME_XObject $dst, Str $slot)`

The signal and slot must have compatible signatures.

    !!! TODO: explanations needed
    

Example:

```
my $src = MyClass2.new;
my $dst = MyClass.new;
connect $src, "mySignal", $dst, "mySlot";
```

# Emit a QtSignal

In Qt, the macro "emit" is used to emit a signal.

In NAME_X, you only have to execute the signal method. 

# Subclassing a Qt object

    !!! TODO

# TODO

# Versions of involved software


# Issues

# Limitations

Currently, this module is only working with Linux.

Although already usable, this interface is still limited to a few of the
most basic objects of the Qt GUI.

# Prerequisite

 * Linux OS
 * Qt5 development package
 * C++ compiler

# Installation

The Qt5 developpment package and the gcc compiler are needed.

`zef install NAME_X::QtWidgets`

# Testing

# Source

The sources are automatically generated from the Qt C++ headers files.

The building tools are available here : <https://github.com/yguillemot/RaQt_maker>


# Author

Yves Guillemot


# COPYRIGHT AND LICENSE

Copyright (C) 2021 Yves Guillemot

This software is free: you can redistribute and/or modify it under
the GNU General Public License as published by the Free Software
Foundation, either version 3 of the License, or (at your option) any
later version.

This software is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License
along with this program.  If not, see <https://www.gnu.org/licenses/>.
