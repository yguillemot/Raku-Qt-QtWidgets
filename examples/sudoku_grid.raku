

#     An example using a QGrid layout
#
#     It shows a sudoku grid and allows the user to enter one digit
#     in each of its cell.
#
#     It's only a sudoku editor example, not a sudoku solver.




use Qt::QtWidgets;
use Qt::QtWidgets::QAction;
use Qt::QtWidgets::QApplication;
use Qt::QtWidgets::QBrush;
use Qt::QtWidgets::QColor;
use Qt::QtWidgets::QGridLayout;
use Qt::QtWidgets::QLabel;
use Qt::QtWidgets::QLayout;
use Qt::QtWidgets::QMenu;
use Qt::QtWidgets::QMouseEvent;
use Qt::QtWidgets::QPaintEvent;
use Qt::QtWidgets::QPainter;
use Qt::QtWidgets::QPen;
use Qt::QtWidgets::QPoint;
use Qt::QtWidgets::QResizeEvent;
use Qt::QtWidgets::QWidget;
use Qt::QtWidgets::Qt;




my constant H = 30;     # Minimal/initial height of a cell
my constant W = 30;     # Minimal/initial width of a cell
my constant S = 2;      # Margins and spacings between cells and blocks

my constant PSB = 16;       # PointSizeBase of the cell values

my @cells[9, 9];  # The array of all the Cell objects : the whole sudoku grid

# The three arrays of sets of the sudoku.
# Each cell is part of one line, one column and one block.
# Each element of the sets is bind to an element of @cells.
#
# @cell[$l; $c] is part of:
#   - @lines[$l]
#   - @colums[$c]
#   - @blocks[3*($l/3).Int + ($c/3).Int]
#
my @lines;
my @columns;
my @blocks;


# A menu proposing a list of values to fill a cell
class Menu is QMenu
{
    # Lists of values and associated actions
    has @.values;
    has QAction @!actions;
    
    submethod TWEAK {
        self.QMenu::subClass: "Select value";
        
        @!actions.push: self.addAction("Clear");
        for @!values.sort { @!actions.push: self.addAction: ~$_ }
    }
    
    method exec(QPoint $ev --> Int) {
        my $action = self.QMenu::exec($ev);
        
        return !$action.address
            ?? -1                           # return -1 if nothing selected
            !! $action.text eq "Clear"
                ?? 0                        # return 0 if "clear" selected
                !! +$action.text;           # else return the selected number
    }
}

# A cell of the sudoku grid
class Cell is QWidget
{
    has QColor $.color;     # Background color of the cell
    has Str $.text;         # Text inside the cell
    
    has Int $.lig;          # Line index
    has Int $.col;          # Column index
    
    has $!w0;               # Initial width of the cell
    has $!h0;               # Initial height of the cell
    
    has Bool $!failure = False; # Can't find any value satisfying the board
    
    submethod TWEAK {
        self.QWidget::subClass;         # Initialize Qt object
        @cells[$!lig; $!col] = self;    # Copy reference in grid
    }
    
    # Called each time the cell needs to be drawn
    method paintEvent(QPaintEvent $ev)
    {

        # Select the background color
        my QColor $backgroundColor;
        if !?$.text && !usableValues($!lig, $!col).elems {
            # Red if no value is possible
            $backgroundColor = QColor.new(Qt::red);
        } else {
            $backgroundColor = self.color;
        }

        # Paint the cell
        my $painter = QPainter.new();
        $painter.begin(self);
            # Background brush
            my $brush = QBrush.new($backgroundColor, Qt::SolidPattern);
            $painter.setBrush($brush);
            
            # No border : same color for pen and brush
            my $pen = QPen($backgroundColor);
            $painter.setPen($pen);

            # Paint the cell rectangle
            $painter.drawRect(0, 0, $ev.rect.width, $ev.rect.height);
            
            # Text color
            $pen.setColor(QColor(Qt::black)); # Foreground color
            $painter.setPen($pen);

            # Text font
            $painter.setFont: self.font;

            # Draw the text
            $painter.drawText($ev.rect, Qt::AlignCenter, self.text);
        $painter.end();
    }

    # Handle mouse press event
    method mousePressEvent(QMouseEvent $ev)
    {
        # Get possible values
        my $values = usableValues($!lig, $!col);
        
        # Create a menu with the list of possible values
        my $menu = Menu.new(values => @$values);

        # Show the menu and get user choice
        my $a = $menu.exec(self.mapToGlobal(QPoint.new(0,0)));
        
        # No choice done
        return if $a == -1;   # Esc pressed
        
        # Set $!text to the choosen value
        $!text = !$a ?? "" !! ~$a;

        # Redraw the cell
        self.update;
        
        # Look if some cells have no possible value
        lookForFailures;
    }
    
    # This method is called when the widget is resized
    method resizeEvent(QResizeEvent $re)
    {
        if ($re.oldSize.width == -1) && ($re.oldSize.height == -1) {
            # First resize event (when the windows is opened):
            # Memorize the initial size of the label
            $!w0 = $re.size.width;
            $!h0 = $re.size.height;
            
            # Initial font size
            self.font.setPointSize(PSB);
        } else {
            # Next resize event: compute a new point size
            # to have the text fitting the window
            my $w1 = $re.size.width;
            my $h1 = $re.size.height;
            my $p = PSB * $h1 / $!h0;
            
            # Then update the font size
            self.font.setPointSize($p.Int);
        }
    }
    
    method bind(@lst) {
        my $v := $!text;
        @lst[@lst.elems] := $v;
    }
    
    # Look if some value may be found for this cell
    method check {
        return if ?self.text; # Do nothing if the cell has a value
        if !usableValues($!lig, $!col).elems {
            # No possible value found
            # Set up the failure failure flag if needed
            if !$!failure {
                $!failure = True;
                self.update;
            }
        } else {
            # Possible value found
            # Remove the failure failure flag if needed
            if $!failure {
                $!failure = False;
                self.update;
            }
        }
    }
}

# A widget with a colored background
class ColoredWidget is QWidget
{
    has QColor $.color;
    
    submethod TWEAK {
        self.QWidget::subClass;
    }
    
    method paintEvent(QPaintEvent $ev)
    {
        my $painter = QPainter.new();
        $painter.begin(self);
            my $brush = QBrush.new(self.color, Qt::SolidPattern);
            my $pen = QPen.new(self.color);
            $painter.setBrush($brush);
            $painter.setPen($pen);
            $painter.drawRect(0, 0, $ev.rect.width, $ev.rect.height);
        $painter.end();
    }
}

# A block of 9 cells
class Block is ColoredWidget
{
    
    has Int $.blockLine;        # Line of the block in the grid
    has Int $.blockColumn;      # Line of the block in the grid
    has QColor $.cellColor;     # Color of the cells of the block
    
    has QGridLayout $!grid;     # Layout inside the block
    has Cell @!cells;           # List of the cells
    
    submethod TWEAK
    {
        $!grid = QGridLayout.new;
#         $!grid.setSizeConstraint: QLayout::SetMaximumSize;
        $!grid.setContentsMargins(S, S, S, S);
        $!grid.setSpacing(S);
        self.setLayout: $!grid;

        for (0..2) X (0..2) -> ($il, $ic) {
            my $l = 3 * $!blockLine + $il;
            my $c = 3 * $!blockColumn + $ic;
            my $cell = Cell.new: color => $!cellColor,
                               lig => $l,
                               col => $c,
                               text => "";
            $cell.setMinimumSize(W, H);
            @!cells.push: $cell;
            $!grid.addWidget: $cell, $l, $c;
        }
    }
}

# The whole grid of 9 blocks
class Sudoku-grid is ColoredWidget
{
    has QColor $.cellColor;     # Color of the cells of the block

    has QGridLayout $!grid;     # Layout inside the block
    has Block @!blocks;         # List of the blocks
    
    submethod TWEAK
    {
        $!grid = QGridLayout.new;
        $!grid.setContentsMargins(S, S, S, S);
        $!grid.setSpacing(S);
        self.setLayout: $!grid;

        for (0..2) X (0..2) -> ($bl, $bc) {
            my $block = Block.new:
                color => self.color, 
                cellColor => self.cellColor,
                blockLine => $bl,
                blockColumn => $bc;
            @!blocks.push: $block;
            
            $!grid.addWidget: $block, $bl, $bc;
        }
    }
}


# Return the sequence of the possible values in the cell ($l, $c)
sub usableValues(Int $l, Int $c --> Seq)
{
    # Compute the block index from the board line and column
    my $iBlock = 3 * ($l / 3).Int + ($c / 3).Int;

    # Values already used in current line, column and block
    my $inLine = @lines[$l];
    my $inColumn = @columns[$c];
    my $inBlock = @blocks[$iBlock];

    # Values which are not in line, not in column and not in block
    my $used = (1..9)>>.Str (-) ($inLine (|) $inColumn (|) $inBlock);
    return $used.keys;
}


# Check all the cells for failure (i.e. no possible value)
sub lookForFailures     # scanBoard ?
{
    for (0..8) X (0..8) -> ($l, $c) {
        @cells[$l; $c].check;
    }
}


#######################################################""
# Main program

# Create the application
my $qApp = QApplication.new;

# Create the sudoku grid with all its subobjects (of which all the cells)
my $sudoku = Sudoku-grid.new:
        cellColor => QColor.new(240, 240, 250),   # Color of the cells
        color => QColor.new: Qt::lightGray;       # Color between the cells


# Clear value in all cells and bind the sets with the cells of the grid:

# Bind the lines
for (0..8) -> $l {
    my @line = ();
    for (0..8) -> $c {
        @cells[$l; $c].bind: @line;
    }
    @lines.push: @line;
}

# Bind the columnns
for (0..8) -> $c {
    my @column = ();
    for (0..8) -> $l {
        @cells[$l; $c].bind: @column;
    }
    @columns.push: @column;
}

# Bind the blocks
for (0..8) -> $iblk {
    my @block = ();
    my $blkl = ($iblk / 3).Int;
    my $blkc = $iblk % 3;
    for (0..8) -> $icell {
        my $cell-l = ($icell / 3).Int;
        my $cell-c = $icell % 3;
        my $l = 3 * $blkl + $cell-l;
        my $c = 3 * $blkc + $cell-c;
        @cells[$l; $c].bind: @block;
    }
    @blocks.push: @block;
}


# Set the sudoku grid visible
$sudoku.show;

# Run the application
$qApp.exec;

# say "--------------------------------------------------------------------";
#
# say "L : ", @lines;
# say "C : ", @columns;
# say "B : ", @blocks;
