
# Test QApplication
 
use Test;

use Qt::QtWidgets::QApplication;
use Qt::QtWidgets::QPushButton;

dies-ok({ my $obj = QPushButton.new("Text"); },
    "Can't create a QtObject without an existing QApplication");

dies-ok({ temp $*ERR = open :w, $*SPEC.devnull;   # Get rid of error message
          my $app = QApplication.new(42); },
    "Cant't create QApplication with wrong arguments");

lives-ok({ my $app = QApplication.new("name"); },
    "Create QApplication");

dies-ok({ my $app = QApplication.new; },
    "Can't have more than one QApplication");

lives-ok({ my $obj = QPushButton.new("Text"); },
    "Can create a QtObject when QApplication exists");

done-testing;  # optional with 'plan'
