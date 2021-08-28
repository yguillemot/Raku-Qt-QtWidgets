 
# Basic tests
 
use v6;
use Test;
 
if ?%*ENV<AUTHOR_TESTING> {
    require Test::META <&meta-ok>;
    meta-ok;
}     
 
use-ok "Qt::QtWidgets";
 
use-ok "Qt::QtWidgets::QAbstractButton";
use-ok "Qt::QtWidgets::QAbstractScrollArea";
use-ok "Qt::QtWidgets::QAbstractSlider";
use-ok "Qt::QtWidgets::QAction";
use-ok "Qt::QtWidgets::QBoxLayout";
use-ok "Qt::QtWidgets::QBrush";
use-ok "Qt::QtWidgets::QCheckBox";
use-ok "Qt::QtWidgets::QCloseEvent";
use-ok "Qt::QtWidgets::QColor";
use-ok "Qt::QtWidgets::QCoreApplication";
use-ok "Qt::QtWidgets::QDial";
use-ok "Qt::QtWidgets::QDialog";
use-ok "Qt::QtWidgets::QEvent";
use-ok "Qt::QtWidgets::QFileDialog";
use-ok "Qt::QtWidgets::QFont";
use-ok "Qt::QtWidgets::QFrame";
use-ok "Qt::QtWidgets::QGroupBox";
use-ok "Qt::QtWidgets::QGuiApplication";
use-ok "Qt::QtWidgets::QHBoxLayout";
use-ok "Qt::QtWidgets::QImage";
use-ok "Qt::QtWidgets::QInputEvent";
use-ok "Qt::QtWidgets::QLabel";
use-ok "Qt::QtWidgets::QLayout";
use-ok "Qt::QtWidgets::QLayoutItem";
use-ok "Qt::QtWidgets::QLineEdit";
use-ok "Qt::QtWidgets::QMenu";
use-ok "Qt::QtWidgets::QMessageBox";
use-ok "Qt::QtWidgets::QMouseEvent";
use-ok "Qt::QtWidgets::QPaintDevice";
use-ok "Qt::QtWidgets::QPaintEvent";
use-ok "Qt::QtWidgets::QPainter";
use-ok "Qt::QtWidgets::QPen";
use-ok "Qt::QtWidgets::QPoint";
use-ok "Qt::QtWidgets::QPointF";
use-ok "Qt::QtWidgets::QPushButton";
use-ok "Qt::QtWidgets::QRadioButton";
use-ok "Qt::QtWidgets::QRect";
use-ok "Qt::QtWidgets::QRegion";
use-ok "Qt::QtWidgets::QResizeEvent";
use-ok "Qt::QtWidgets::QSize";
use-ok "Qt::QtWidgets::QSlider";
use-ok "Qt::QtWidgets::QTextEdit";
use-ok "Qt::QtWidgets::QTimer";
use-ok "Qt::QtWidgets::QVBoxLayout";
use-ok "Qt::QtWidgets::QWidget";
use-ok "Qt::QtWidgets::Qt";

done-testing;

