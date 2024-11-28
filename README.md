Qt::QtWidgets
=============

A Raku module and native wrapper providing an interface to the Qt5 GUI.

## CONTENT

- 1\. DESCRIPTION  
- 2\. LIMITATIONS  
- 3\. IMPLEMENTED FUNCTIONALITIES  
- 4\. DOCUMENTATION  
    - 4.1 Classes and methods  
    - 4.2 Instantiation  
    - 4.3 Calling a method  
    - 4.4 Enums  
    - 4.5 Signals and slots  
    - 4.6 Connect  
    - 4.7 Disconnect  
    - 4.8 Emit a QtSignal__
    - 4.9 Subclassing a Qt object__
- 5\. EXAMPLES  
    - 5.1 clock_fixedSize.raku  
    - 5.2 clock_resizable.raku  
    - 5.3 2deg_eqn_solver.raku__
    - 5.4 sketch_board.raku  
    - 5.5 editor.raku  
    - 5.6 sliders.raku
    - 5.7 sudoku_grid.raku
    - 5.8 QMainWindow examples__
    - 5.9 show_mouse_events.raku__
    - 5.10 moving_objects.raku__
- 6\. TOOL  
- 7\. PREREQUISITES  
- 8\. INSTALLATION  
- 9\. SOURCE CODE  
- 10\. AUTHOR  
- 11\. COPYRIGHT AND LICENSE  

## 1. DESCRIPTION

This module defines Raku classes trying to mimic the Qt GUI C++ classes.
Qt objects are created and used through the Raku classes with native calls.

This is a work in progress and, currently, only a few classes and methods are
defined. Nevertheless, this module is already usable (see paragraph 5 *EXAMPLES*
below).

## 2. LIMITATIONS

Currently, this module is only working with Linux.

Although already usable, this interface is still limited to a few of the
most basic objects of the Qt GUI.

  
## 3. IMPLEMENTED FUNCTIONALITIES

The list of Qt classes and methods already ported is given in the
file doc/Qt/QtWidgets/Classes.html included in the distribution.


## 4. DOCUMENTATION

### 4.1 Classes and methods

The Raku API aims to be as close as possible to the C++ one.

Classes defined by the Raku API implement the Qt C++ classes and the Raku
methods have the same arguments as their related C++ methods.

Therefore the Qt C++ documentation should apply to its Raku interface.

This documentation is available here: <https://doc.qt.io/qt-5>.

The Raku API hides the C++ passing mode of the parameters. 

Each class resides in its own compunit. So, before using a class, an **use**
instruction have to be provided for the related module.

For example, the following line:

```
use Qt::QtWidgets::QPushButton;
```

has to be issued before using any instruction related to a QPushButton.

The script **guessuse** is provided to help writing the needed **use**
instructions.  
See the paragraph 6 *TOOL* below.


### 4.2 Instantiation

To instantiate a Qt class object from Raku, just use new with the same arguments
than the C++ constructor.

For example the C++ call of a QPushButton constructor is :

`QPushButton * button = new QPushButton("some text");`

the raku equivalent is:

`my $button = QPushButton.new("some text");`

### 4.3 Calling a method

Raku methods are called exactly as the original C++ method.

The C++ code :

`button->setDisable(true);`

is translated to Raku as :

`$button.setDisable(True);`

### 4.4 Enums 

Similarly the C++ enums have their Raku equivalent :

the C++ code :

`QPen * pen = new QPen(Qt::DashLine);`

is translated to Raku as :

`my $pen = QPen.new(Qt::DashLine);`


### 4.5 Signals and slots

The signals and slots mechanism used by Qt allows unrelated objects to
communicate.

A C++ Qt object can have **slots** and/or **signals** if it inherits from the
C++ class **QObject**.

Similarly, a Raku object can have **QtSlots** and/or **QtSignals** if it
inherits from the Raku class **QtObject**.

The class **QtObject** and the related subroutines **connect** and
**disconnect** are exported from the compunit **Qt::QtWidgets** and have to
be imported with:

`use Qt::QtWidgets;` 

A Raku Qt::QtWidgets **Qtslot** is an ordinary method defined with the trait
**is QtSlot**.

```
class MyClass is Qt::QtWidgetsObject {
   ... # Some code
   method mySlot(...) is QtSlot {
        ... # Some code
   }
   ... # Some code
}
```

As well, a Raku Qt::QtWidgets **Qtsignal** is a method defined with the trait
**is QtSignal**.  
Its associated code will never be executed. So a stub should be used when
defining the method.

```
class MyClass2 is Qt::QtWidgetsObject {
   ... # Some code
   method mySignal(...) is QtSignal { ... }
   ... # Some code
}
```

### 4.6 Connect

The subroutine **connect** connects a QtSignal to a QtSlot (or to another
QtSignal).

`sub connect(QtObject $src, Str $signal, QtObject $dst, Str $slot)`

The names of signal and slot are passed to connect in strings.

The signal and slot must have compatible signatures.

> TODO: explanations needed

Example:

```
my $src = MyClass2.new;
my $dst = MyClass.new;
connect $src, "mySignal", $dst, "mySlot";
```

### 4.7 Disconnect

The subroutine **disconnect** does the opposite of **connect**.

`sub disconnect(QtObject $src, Str $signal, QtObject $dst, Str $slot)`

Example:

`disconnect $src, "mySignal", $dst, "mySlot";`


### 4.8 Emit a QtSignal

In C++ Qt, the keyword **emit** is used to emit a signal.

`emit mySignal(some_arg);`

In Raku Qt::QtWidgets, you only have to execute the method to emit the
associated **QtSignal**.


`self.mySignal(some_arg);`

### 4.9 Subclassing a Qt object

When programming with Qt and C++, some features can only be accessed
by overriding a Qt C++ virtual method.

A parallel mechanism is implemented in the Qt::QtWidgets module.

Subclassing a Qt object needs three steps:

- Define a Raku class inheriting the Qt class
    
- Call the **subClass** method of the parent class from the BUILD or TWEAK
submethod of the new class.
    
- Override the virtual methods. The overriding method must have
the same name and signature that the overrided method and doesn't need
any specific syntax.


The first and third steps are obvious.

The second one is used to instantiate the C++
counterpart of the Raku class and to pass it the parameters its constructor
needs. In this second step, the parent class whose the subClass method is
called must be explicitely specified:  
`self.ParentClass::subClass($param, ...);`

The following example shows how to subclass a QLabel and override its
QMousePressEvent method.

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
use Qt::QtWidgets::QLabel;
use Qt::QtWidgets::QMouseEvent;

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


## 5. EXAMPLES

They are available in the **examples** directory of the distribution.

### 5.1 clock_fixedSize.raku

A very simple clock displaying the current time.

`raku examples/clock_fixedSize.raku`

### 5.2 clock_resizable.raku

The same clock with a resizable window.

`raku examples/clock_resizable.raku`

### 5.3 2deg_eqn_solver.raku

A graphical interface to solve quadratic equations.

`raku examples/2deg_eqn_solver.raku`

### 5.4 sketch_board.raku

A small example showing how to draw with the mouse and how to get file names
using QFileDialog methods.

`raku examples/sketch_board.raku`

### 5.5 editor.raku

A tiny text editor build with QTextEdit

`raku examples/editor.raku`

### 5.6 sliders.raku

A demonstration of QSlider, QDial, QCheckBox and QRadioButton widgets.

`raku examples/sliders.raku`

### 5.7 sudoku_grids.raku

A QGrid layout usage example.

`raku examples/sudoku_grid.raku`

### 5.8 QMainWindow examples

editor_mv.raku and sketch_board_mw.raku are modifications of the previous
editor and sketch_board examples which show how to use main window menus
and status bar.

`raku examples/editor_mw.raku`

`raku examples/sketch_board_mw.raku`

### 5.9 show_mouse_events.raku

A small example which shows how to read mouse events.

`raku examples/show_mouse_events.raku`

### 5.10 moving_objects.raku

An example showing how to create QGraphics objects and move them on
a QGraphicsScene.

`raku examples/moving_objects.raku`


## 6. TOOL

Ideally, inserting "use Qt::QtWidgets;" at the beginning of a script should be
sufficient to import all the elements of the Qt::QtWidgets module.  
Unfortunately it's not the case and seems not to be possible with the current
version of Raku (except by gathering all the classes of this API inside a single
huge source file).  
Currently a specific **use** instruction is needed for each Qt class used in
a script.

That's why a tool named **guessuse** is provided to help the user to find what
**use** instructions a given script needs.

When called with the name of a raku file as argument, it writes out the
list of **use** instructions related to **Qt::QtWidgets** needed by this script.

For example, the command:

```
guessUse examples/sketch_board.raku
```

prints out the following lines:

```
use Qt::QtWidgets;
use Qt::QtWidgets::QAction;
use Qt::QtWidgets::QApplication;
use Qt::QtWidgets::QBrush;
use Qt::QtWidgets::QColor;
use Qt::QtWidgets::QFileDialog;
use Qt::QtWidgets::QHBoxLayout;
use Qt::QtWidgets::QMenu;
use Qt::QtWidgets::QMouseEvent;
use Qt::QtWidgets::QPaintEvent;
use Qt::QtWidgets::QPainter;
use Qt::QtWidgets::QPen;
use Qt::QtWidgets::QPushButton;
use Qt::QtWidgets::QVBoxLayout;
use Qt::QtWidgets::QWidget;
use Qt::QtWidgets::Qt;
```

Beware that this tool, when scanning a source file, doesn't make any difference
between code, comments and character strings and may very well print out "use"
instruction for some unneeded compunit.

**guessuse** resides in the the bin directory of the distribution and is
installed by **zef** along with the **Qt::QtWidgets** module.


## 7. PREREQUISITES

 * Linux OS
 * Qt5 development package
 * C++ compiler
 
This module has been tested with **Qt 5.15.7** and **gcc 12.3.0**.
Many other versions should be usable as well.


## 8. INSTALLATION

`zef install Qt::QtWidgets`

Warning: Given the many classes and methods provided, the
installation may need several minutes.

Please, be patient.


## 9. SOURCE CODE

The source code is available here:
<https://github.com/yguillemot/Raku-Qt-QtWidgets.git>

Given the large number of Qt Classes and methods, manually writing such a
code is very tedious and error prone.  
That's why this source and its associated documentation have been
automatically generated from the Qt C++ headers files coming with the Qt
development package.

The building tools are available here:
<https://github.com/yguillemot/RaQt_maker.git>



## 10. AUTHOR

Yves Guillemot
<<yc.guillemot@wanadoo.fr>\>


## 11. COPYRIGHT AND LICENSE

Copyright (C) 2021-2024 Yves Guillemot

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
