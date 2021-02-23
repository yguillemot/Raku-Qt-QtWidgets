Qt::QtWidgets
=============

A Raku module and native wrapper providing an interface to the Qt5 GUI.

## DESCRIPTION

This module defines Raku classes trying to mimic the Qt GUI C++ classes.
Qt objects are created and used through the Raku classes with native calls.

This is a work in progress and, currently, only a few classes are defines.
Nevertheless, this module is already usable.

## Examples

### clock.raku

A very simple clock displaying the current time.

### 2deg_eqn_solver.raku

A graphical interface to solve quadratic equations.

### sketch_board.raku

A small example showing how to draw with the mouse. 

## Implemented functionnalities

The list of Qt classes and methods already ported is given in the
file doc/Qt/Classes.md

## Classes and methods

The Raku API aims to be as close as possible of the C++ one.

Classes defined by the Raku API implement the Qt C++ classes and the Raku
methods have the same arguments as their related C++ methods.

Therefore the Qt C++ documentation applies to its Raku interface.

[ TODO : Reference, pointers, etc...]

### Instantiation

To instantiate a Qt class object from Raku, just use new with the same arguments
than the C++ constructor.

For example the C++ call of a QPushButton constructor is :

`QPushButton * button = new QPushButton("some text");`

the raku equivalent is:

`my $button = QPushButton.new("some text");`

### Calling a method

Raku methods are called exactly as the original C++ method.

The C++ code :

`button->setDisable(true);`

is translated to Raku as :

`$button.setDisable(True);`

### Enums 

Similarly the C++ enums have their Raku equivalent :

the C++ code :

`QPen * pen = new QPen(Qt::DashLine);`

is translated to Raku as :

`my $pen = QPen.new(Qt::DashLine);`


### Signals and slots

The signals and slots mechanism used by Qt allows unrelated objects to
communicate.

A C++ Qt object can have slots and/or signals if it inherits from the
C++ class "QObject".

Similarly, a Raku object can have slots
and/or signals if it inherits from the Raku class "QtObject".

A Raku Qt::QtWidgets slot is an ordinary method defined with the trait
"is QtSlot".

```
class MyClass is Qt::QtWidgetsObject {
   ... # Some code
   method mySlot(...) is QtSlot {
        ... # Some code
   }
   ... # Some code
}
```

As well, a Qt::QtWidgets signal is a method defined with the trait "is QtSignal".
Its associated code will never be executed; so a stub is used.

```
class MyClass2 is Qt::QtWidgetsObject {
   ... # Some code
   method mySignal(...) is QtSignal { ... }
   ... # Some code
}
```

### Connect

The sub "connect" connects a QtSignal to a QtSlot (or to another QtSignal).

`sub connect(QtObject $src, Str $signal, QtObject $dst, Str $slot)`

The names of signal and slot are passed to connect in strings.

The signal and slot must have compatible signatures.

    [!!! TODO: explanations needed]
    

Example:

```
my $src = MyClass2.new;
my $dst = MyClass.new;
connect $src, "mySignal", $dst, "mySlot";
```

### Emit a QtSignal

In C++ Qt, the keyword "emit" is used to emit a signal.

`emit mySignal(some_arg);`

In Raku Qt::QtWidgets, you only have to execute the signal method. 

`self.mySignal(some_arg);`

### Subclassing a Qt object

When programming with Qt and C++, some features can only be accessed
by overriding some Qt C++ virtual methods.

A parallel mechanism is implemented in the Qt::QtWidgets module.

Subclassing a Qt object needs three step :

    * Define a Raku class inheriting the Qt class
        
    * Call the "subClass" method of the parent class from the TWEAK submethod 
    of the new class.
    
    * Override the virtual methods. They just have to be defined with the
    right signature and dont need any specific syntax.
    
    
The first step is obvious. The second is used to instantiate the C++ 
counterpart of the Raku class and to pass it the parameters its constructor
needs. In this second step, the parent class whose the subClass method is
called must be explicitely specified : 
`self.ParentClass::subClass($param, ...);`

The following example shows how to subclass a QLabel and override its
QMouseMoveEvent method.

**Pure C++ version:**

``` C++
#include <QtWidgets>

class MyLabel : public QLabel
{
public :
    MyLabel(const QString txt) : QLabel(txt) { }
    
    void mousePressEvent(QMouseEvent* event)
    {
        // Do something when the mouse is pressed on the label
    }    
};

...

// Instantiation of the label in the main function :
MyLabel * label = new MyLabel("text on the label");
```

**Raku version:**

``` Raku
use Qt::QtWidgets;

class MyLabel is QLabel
{
    has Str $.txt;
    
    submethod TWEAK { self.QLabel::subClass($!txt); } 
    
    method mousePressEvent(QMouseEvent $event)
    {
        # Do something when the mouse is pressed on the label
    }
}

...

# Instantiation of the label in the main program :
my $label = MyLabel.new(txt => "text on the label");
```

### Versions of involved software

ààààààààààààààààààààààààààààààààààààààààààààà

## Issues

## Limitations

Currently, this module is only working with Linux.

Although already usable, this interface is still limited to a few of the
most basic objects of the Qt GUI.

## Prerequisite

 * Linux OS
 * Qt5 development package
 * C++ compiler

## Installation

The Qt5 developpment package and the gcc compiler are needed.

`zef install Qt::QtWidgets::QtWidgets`

## Testing

## Source

The sources are automatically generated from the Qt C++ headers files.

The building tools are available here : <https://github.com/yguillemot/RaQt_maker>


## Author

Yves Guillemot


## COPYRIGHT AND LICENSE

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
