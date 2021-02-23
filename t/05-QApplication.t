
# Test QApplication
 
use Test;

#plan 6;

use Qt::QtWidgets;

dies-ok({ my $obj = QPushButton.new("Text"); },
        "Can't create a QtObject without an existing QApplication");

dies-ok({ my $app = QApplication.new(42); },
        "Cant't create QApplication with wrong arguments");

lives-ok({ my $app = QApplication.new("name"); },
        "Create QApplication");

dies-ok({ my $app = QApplication.new; },
        "Can't have more than one QApplication");

lives-ok({ my $obj = QPushButton.new("Text"); },
        "Can create a QtObject when QApplication exists");

done-testing;  # optional with 'plan'
