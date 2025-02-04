

Class QAbstractButton
---------------------
	imported by
		use Qt::QtWidgets::QAbstractButton;

	inherits QWidget

	inherited by QCheckBox, QPushButton, QRadioButton, QToolButton


WARNING: This class has no constructor. So it can't be used to create an object explicitely.

#### Method activateWindow()
	inherited from QWidget
	calls Qt method void activateWindow()

#### Method click()
	[slot] 
	calls Qt method void click()

#### Method clicked(Bool $checked = False)
	[signal] 
	calls Qt method void clicked(bool checked = false)

#### Method closeEvent(QCloseEvent $event)
	[virtual] [protected] inherited from QWidget
	called as Qt method void closeEvent(QCloseEvent* event)

#### Method contentsRect( --> QRect)
	inherited from QWidget
	calls Qt method QRect contentsRect()

#### Method enterEvent(QEvent $event)
	[virtual] [protected] inherited from QWidget
	called as Qt method void enterEvent(QEvent* event)

#### Method font( --> QFont)
	inherited from QWidget
	calls Qt method QFont & font()

#### Method hasHeightForWidth( --> Bool)
	[virtual] inherited from QWidget
	called as Qt method bool hasHeightForWidth()

#### Method hasMouseTracking( --> Bool)
	inherited from QWidget
	calls Qt method bool hasMouseTracking()

#### Method height( --> Int)
	inherited from QWidget
	calls Qt method int height()

#### Method heightForWidth(Int $arg1 --> Int)
	[virtual] inherited from QWidget
	called as Qt method int heightForWidth(int arg1)

#### Method hide()
	[slot] inherited from QWidget
	calls Qt method void hide()

#### Method isActiveWindow( --> Bool)
	inherited from QWidget
	calls Qt method bool isActiveWindow()

#### Method isCheckable( --> Bool)
	calls Qt method bool isCheckable()

#### Method isChecked( --> Bool)
	calls Qt method bool isChecked()

#### Method isDown( --> Bool)
	calls Qt method bool isDown()

#### Method leaveEvent(QEvent $event)
	[virtual] [protected] inherited from QWidget
	called as Qt method void leaveEvent(QEvent* event)

#### Method mapFrom(QWidget $arg1, QPoint $arg2 --> QPoint)
	inherited from QWidget
	calls Qt method QPoint mapFrom(const QWidget* arg1, const QPoint& arg2)

#### Method mapFromGlobal(QPoint $arg1 --> QPoint)
	inherited from QWidget
	calls Qt method QPoint mapFromGlobal(const QPoint& arg1)

#### Method mapFromParent(QPoint $arg1 --> QPoint)
	inherited from QWidget
	calls Qt method QPoint mapFromParent(const QPoint& arg1)

#### Method mapTo(QWidget $arg1, QPoint $arg2 --> QPoint)
	inherited from QWidget
	calls Qt method QPoint mapTo(const QWidget* arg1, const QPoint& arg2)

#### Method mapToGlobal(QPoint $arg1 --> QPoint)
	inherited from QWidget
	calls Qt method QPoint mapToGlobal(const QPoint& arg1)

#### Method mapToParent(QPoint $arg1 --> QPoint)
	inherited from QWidget
	calls Qt method QPoint mapToParent(const QPoint& arg1)

#### Method mouseMoveEvent(QMouseEvent $event)
	[virtual] [protected] inherited from QWidget
	called as Qt method void mouseMoveEvent(QMouseEvent* event)

#### Method mousePressEvent(QMouseEvent $event)
	[virtual] [protected] inherited from QWidget
	called as Qt method void mousePressEvent(QMouseEvent* event)

#### Method mouseReleaseEvent(QMouseEvent $event)
	[virtual] [protected] inherited from QWidget
	called as Qt method void mouseReleaseEvent(QMouseEvent* event)

#### Method nextCheckState()
	[virtual] [protected] 
	called as Qt method void nextCheckState()

#### Method paintEvent(QPaintEvent $event)
	[virtual] [protected] inherited from QWidget
	called as Qt method void paintEvent(QPaintEvent* event)

#### Method pressed()
	[signal] 
	calls Qt method void pressed()

#### Method released()
	[signal] 
	calls Qt method void released()

#### Method render(QPaintDevice $target, QPoint $targetOffset = QPoint.new(), QRegion $sourceRegion = QRegion.new(), Int $renderFlags = RenderFlags(DrawWindowBackground +| DrawChildren))
	inherited from QWidget
	calls Qt method void render(QPaintDevice* target, const QPoint& targetOffset = QPoint(), const QRegion& sourceRegion = QRegion(), RenderFlags renderFlags = RenderFlags(DrawWindowBackground | DrawChildren))

#### Method repaint()
	[slot] inherited from QWidget
	calls Qt method void repaint()

#### Method repaint(Int $x, Int $y, Int $w, Int $h)
	inherited from QWidget
	calls Qt method void repaint(int x, int y, int w, int h)

#### Method resizeEvent(QResizeEvent $event)
	[virtual] [protected] inherited from QWidget
	called as Qt method void resizeEvent(QResizeEvent* event)

#### Method setAutoExclusive(Bool $arg1)
	calls Qt method void setAutoExclusive(bool arg1)

#### Method setCheckable(Bool $arg1)
	calls Qt method void setCheckable(bool arg1)

#### Method setChecked(Bool $arg1)
	[slot] 
	calls Qt method void setChecked(bool arg1)

#### Method setDisabled(Bool $arg1)
	[slot] inherited from QWidget
	calls Qt method void setDisabled(bool arg1)

#### Method setDown(Bool $arg1)
	calls Qt method void setDown(bool arg1)

#### Method setFixedHeight(Int $h)
	inherited from QWidget
	calls Qt method void setFixedHeight(int h)

#### Method setFixedSize(Int $w, Int $h)
	inherited from QWidget
	calls Qt method void setFixedSize(int w, int h)

#### Method setFixedWidth(Int $w)
	inherited from QWidget
	calls Qt method void setFixedWidth(int w)

#### Method setFont(QFont $arg1)
	inherited from QWidget
	calls Qt method void setFont(const QFont& arg1)

#### Method setLayout(QLayout $arg1)
	inherited from QWidget
	calls Qt method void setLayout(QLayout* arg1)

#### Method setMaximumHeight(Int $maxh)
	inherited from QWidget
	calls Qt method void setMaximumHeight(int maxh)

#### Method setMaximumSize(Int $maxw, Int $maxh)
	inherited from QWidget
	calls Qt method void setMaximumSize(int maxw, int maxh)

#### Method setMaximumWidth(Int $maxw)
	inherited from QWidget
	calls Qt method void setMaximumWidth(int maxw)

#### Method setMinimumHeight(Int $minh)
	inherited from QWidget
	calls Qt method void setMinimumHeight(int minh)

#### Method setMinimumSize(Int $minw, Int $minh)
	inherited from QWidget
	calls Qt method void setMinimumSize(int minw, int minh)

#### Method setMinimumWidth(Int $minw)
	inherited from QWidget
	calls Qt method void setMinimumWidth(int minw)

#### Method setMouseTracking(Bool $enable)
	inherited from QWidget
	calls Qt method void setMouseTracking(bool enable)

#### Method setSizePolicy(QSizePolicy::Policy $horizontal, QSizePolicy::Policy $vertical)
	inherited from QWidget
	calls Qt method void setSizePolicy(QSizePolicy::Policy horizontal, QSizePolicy::Policy vertical)

#### Method setText(Str $text)
	calls Qt method void setText(const QString& text)

#### Method setToolTip(Str $arg1)
	inherited from QWidget
	calls Qt method void setToolTip(const QString& arg1)

#### Method setWindowTitle(Str $arg1)
	[slot] inherited from QWidget
	calls Qt method void setWindowTitle(const QString& arg1)

#### Method show()
	[slot] inherited from QWidget
	calls Qt method void show()

#### Method text( --> Str)
	calls Qt method QString text()

#### Method toggle()
	[slot] 
	calls Qt method void toggle()

#### Method toggled(Bool $checked)
	[signal] 
	calls Qt method void toggled(bool checked)

#### Method update(Int $x, Int $y, Int $w, Int $h)
	inherited from QWidget
	calls Qt method void update(int x, int y, int w, int h)

#### Method update()
	[slot] inherited from QWidget
	calls Qt method void update()

#### Method width( --> Int)
	inherited from QWidget
	calls Qt method int width()


Class QAbstractGraphicsShapeItem
--------------------------------
	imported by
		use Qt::QtWidgets::QAbstractGraphicsShapeItem;

	inherits QGraphicsItem

	inherited by QGraphicsEllipseItem, QGraphicsPathItem, QGraphicsRectItem, QGraphicsSimpleTextItem


WARNING: This class has no constructor. So it can't be used to create an object explicitely.

#### Method brush( --> QBrush)
	calls Qt method QBrush brush()

#### Method childrenBoundingRect( --> QRectF)
	inherited from QGraphicsItem
	calls Qt method QRectF childrenBoundingRect()

#### Method contains(QPointF $point --> Bool)
	[virtual] inherited from QGraphicsItem
	called as Qt method bool contains(const QPointF& point)

#### Method ensureVisible(QRectF $rect = QRectF.new(), Int $xmargin = 50, Int $ymargin = 50)
	inherited from QGraphicsItem
	calls Qt method void ensureVisible(const QRectF& rect = QRectF(), int xmargin = 50, int ymargin = 50)

#### Method ensureVisible(Real $x, Real $y, Real $w, Real $h, Int $xmargin = 50, Int $ymargin = 50)
	inherited from QGraphicsItem
	calls Qt method void ensureVisible(qreal x, qreal y, qreal w, qreal h, int xmargin = 50, int ymargin = 50)

#### Method hide()
	inherited from QGraphicsItem
	calls Qt method void hide()

#### Method pen( --> QPen)
	calls Qt method QPen pen()

#### Method prepareGeometryChange()
	[protected] inherited from QGraphicsItem
	calls Qt method void prepareGeometryChange()

#### Method sceneBoundingRect( --> QRectF)
	inherited from QGraphicsItem
	calls Qt method QRectF sceneBoundingRect()

#### Method setBrush(QBrush $brush)
	calls Qt method void setBrush(const QBrush& brush)

#### Method setEnabled(Bool $enabled)
	inherited from QGraphicsItem
	calls Qt method void setEnabled(bool enabled)

#### Method setParentItem(QGraphicsItem $parent)
	inherited from QGraphicsItem
	calls Qt method void setParentItem(QGraphicsItem* parent)

#### Method setPen(QPen $pen)
	calls Qt method void setPen(const QPen& pen)

#### Method setPos(QPointF $pos)
	inherited from QGraphicsItem
	calls Qt method void setPos(const QPointF& pos)

#### Method setPos(Real $x, Real $y)
	inherited from QGraphicsItem
	calls Qt method void setPos(qreal x, qreal y)

#### Method setX(Real $x)
	inherited from QGraphicsItem
	calls Qt method void setX(qreal x)

#### Method setY(Real $y)
	inherited from QGraphicsItem
	calls Qt method void setY(qreal y)

#### Method setZValue(Real $z)
	inherited from QGraphicsItem
	calls Qt method void setZValue(qreal z)

#### Method show()
	inherited from QGraphicsItem
	calls Qt method void show()

#### Method x( --> Real)
	inherited from QGraphicsItem
	calls Qt method qreal x()

#### Method y( --> Real)
	inherited from QGraphicsItem
	calls Qt method qreal y()

#### Method zValue( --> Real)
	inherited from QGraphicsItem
	calls Qt method qreal zValue()


Class QAbstractScrollArea
-------------------------
	imported by
		use Qt::QtWidgets::QAbstractScrollArea;

	inherits QFrame

	inherited by QGraphicsView, QTextEdit


WARNING: This class has no constructor. So it can't be used to create an object explicitely.

#### Method activateWindow()
	inherited from QWidget
	calls Qt method void activateWindow()

#### Method closeEvent(QCloseEvent $event)
	[virtual] [protected] inherited from QWidget
	called as Qt method void closeEvent(QCloseEvent* event)

#### Method contentsRect( --> QRect)
	inherited from QWidget
	calls Qt method QRect contentsRect()

#### Method enterEvent(QEvent $event)
	[virtual] [protected] inherited from QWidget
	called as Qt method void enterEvent(QEvent* event)

#### Method font( --> QFont)
	inherited from QWidget
	calls Qt method QFont & font()

#### Method frameRect( --> QRect)
	inherited from QFrame
	calls Qt method QRect frameRect()

#### Method frameShadow( --> QFrame::Shadow)
	inherited from QFrame
	calls Qt method Shadow frameShadow()

#### Method frameShape( --> QFrame::Shape)
	inherited from QFrame
	calls Qt method Shape frameShape()

#### Method frameStyle( --> Int)
	inherited from QFrame
	calls Qt method int frameStyle()

#### Method frameWidth( --> Int)
	inherited from QFrame
	calls Qt method int frameWidth()

#### Method hasHeightForWidth( --> Bool)
	[virtual] inherited from QWidget
	called as Qt method bool hasHeightForWidth()

#### Method hasMouseTracking( --> Bool)
	inherited from QWidget
	calls Qt method bool hasMouseTracking()

#### Method height( --> Int)
	inherited from QWidget
	calls Qt method int height()

#### Method heightForWidth(Int $arg1 --> Int)
	[virtual] inherited from QWidget
	called as Qt method int heightForWidth(int arg1)

#### Method hide()
	[slot] inherited from QWidget
	calls Qt method void hide()

#### Method isActiveWindow( --> Bool)
	inherited from QWidget
	calls Qt method bool isActiveWindow()

#### Method leaveEvent(QEvent $event)
	[virtual] [protected] inherited from QWidget
	called as Qt method void leaveEvent(QEvent* event)

#### Method lineWidth( --> Int)
	inherited from QFrame
	calls Qt method int lineWidth()

#### Method mapFrom(QWidget $arg1, QPoint $arg2 --> QPoint)
	inherited from QWidget
	calls Qt method QPoint mapFrom(const QWidget* arg1, const QPoint& arg2)

#### Method mapFromGlobal(QPoint $arg1 --> QPoint)
	inherited from QWidget
	calls Qt method QPoint mapFromGlobal(const QPoint& arg1)

#### Method mapFromParent(QPoint $arg1 --> QPoint)
	inherited from QWidget
	calls Qt method QPoint mapFromParent(const QPoint& arg1)

#### Method mapTo(QWidget $arg1, QPoint $arg2 --> QPoint)
	inherited from QWidget
	calls Qt method QPoint mapTo(const QWidget* arg1, const QPoint& arg2)

#### Method mapToGlobal(QPoint $arg1 --> QPoint)
	inherited from QWidget
	calls Qt method QPoint mapToGlobal(const QPoint& arg1)

#### Method mapToParent(QPoint $arg1 --> QPoint)
	inherited from QWidget
	calls Qt method QPoint mapToParent(const QPoint& arg1)

#### Method midLineWidth( --> Int)
	inherited from QFrame
	calls Qt method int midLineWidth()

#### Method mouseMoveEvent(QMouseEvent $event)
	[virtual] [protected] inherited from QWidget
	called as Qt method void mouseMoveEvent(QMouseEvent* event)

#### Method mousePressEvent(QMouseEvent $event)
	[virtual] [protected] inherited from QWidget
	called as Qt method void mousePressEvent(QMouseEvent* event)

#### Method mouseReleaseEvent(QMouseEvent $event)
	[virtual] [protected] inherited from QWidget
	called as Qt method void mouseReleaseEvent(QMouseEvent* event)

#### Method paintEvent(QPaintEvent $event)
	[virtual] [protected] inherited from QWidget
	called as Qt method void paintEvent(QPaintEvent* event)

#### Method render(QPaintDevice $target, QPoint $targetOffset = QPoint.new(), QRegion $sourceRegion = QRegion.new(), Int $renderFlags = RenderFlags(DrawWindowBackground +| DrawChildren))
	inherited from QWidget
	calls Qt method void render(QPaintDevice* target, const QPoint& targetOffset = QPoint(), const QRegion& sourceRegion = QRegion(), RenderFlags renderFlags = RenderFlags(DrawWindowBackground | DrawChildren))

#### Method repaint(Int $x, Int $y, Int $w, Int $h)
	inherited from QWidget
	calls Qt method void repaint(int x, int y, int w, int h)

#### Method repaint()
	[slot] inherited from QWidget
	calls Qt method void repaint()

#### Method resizeEvent(QResizeEvent $event)
	[virtual] [protected] inherited from QWidget
	called as Qt method void resizeEvent(QResizeEvent* event)

#### Method setDisabled(Bool $arg1)
	[slot] inherited from QWidget
	calls Qt method void setDisabled(bool arg1)

#### Method setFixedHeight(Int $h)
	inherited from QWidget
	calls Qt method void setFixedHeight(int h)

#### Method setFixedSize(Int $w, Int $h)
	inherited from QWidget
	calls Qt method void setFixedSize(int w, int h)

#### Method setFixedWidth(Int $w)
	inherited from QWidget
	calls Qt method void setFixedWidth(int w)

#### Method setFont(QFont $arg1)
	inherited from QWidget
	calls Qt method void setFont(const QFont& arg1)

#### Method setFrameRect(QRect $arg1)
	inherited from QFrame
	calls Qt method void setFrameRect(const QRect& arg1)

#### Method setFrameShadow(QFrame::Shadow $arg1)
	inherited from QFrame
	calls Qt method void setFrameShadow(Shadow arg1)

#### Method setFrameShape(QFrame::Shape $arg1)
	inherited from QFrame
	calls Qt method void setFrameShape(Shape arg1)

#### Method setFrameStyle(Int $arg1)
	inherited from QFrame
	calls Qt method void setFrameStyle(int arg1)

#### Method setLayout(QLayout $arg1)
	inherited from QWidget
	calls Qt method void setLayout(QLayout* arg1)

#### Method setLineWidth(Int $arg1)
	inherited from QFrame
	calls Qt method void setLineWidth(int arg1)

#### Method setMaximumHeight(Int $maxh)
	inherited from QWidget
	calls Qt method void setMaximumHeight(int maxh)

#### Method setMaximumSize(Int $maxw, Int $maxh)
	inherited from QWidget
	calls Qt method void setMaximumSize(int maxw, int maxh)

#### Method setMaximumWidth(Int $maxw)
	inherited from QWidget
	calls Qt method void setMaximumWidth(int maxw)

#### Method setMidLineWidth(Int $arg1)
	inherited from QFrame
	calls Qt method void setMidLineWidth(int arg1)

#### Method setMinimumHeight(Int $minh)
	inherited from QWidget
	calls Qt method void setMinimumHeight(int minh)

#### Method setMinimumSize(Int $minw, Int $minh)
	inherited from QWidget
	calls Qt method void setMinimumSize(int minw, int minh)

#### Method setMinimumWidth(Int $minw)
	inherited from QWidget
	calls Qt method void setMinimumWidth(int minw)

#### Method setMouseTracking(Bool $enable)
	inherited from QWidget
	calls Qt method void setMouseTracking(bool enable)

#### Method setSizePolicy(QSizePolicy::Policy $horizontal, QSizePolicy::Policy $vertical)
	inherited from QWidget
	calls Qt method void setSizePolicy(QSizePolicy::Policy horizontal, QSizePolicy::Policy vertical)

#### Method setToolTip(Str $arg1)
	inherited from QWidget
	calls Qt method void setToolTip(const QString& arg1)

#### Method setWindowTitle(Str $arg1)
	[slot] inherited from QWidget
	calls Qt method void setWindowTitle(const QString& arg1)

#### Method show()
	[slot] inherited from QWidget
	calls Qt method void show()

#### Method sizeHint( --> QSize)
	[override] inherited from QFrame
	calls Qt method QSize sizeHint()

#### Method update(Int $x, Int $y, Int $w, Int $h)
	inherited from QWidget
	calls Qt method void update(int x, int y, int w, int h)

#### Method update()
	[slot] inherited from QWidget
	calls Qt method void update()

#### Method width( --> Int)
	inherited from QWidget
	calls Qt method int width()


Class QAbstractSlider
---------------------
	imported by
		use Qt::QtWidgets::QAbstractSlider;

	inherits QWidget

	inherited by QDial, QSlider


WARNING: This class has no constructor. So it can't be used to create an object explicitely.

#### Method activateWindow()
	inherited from QWidget
	calls Qt method void activateWindow()

#### Method closeEvent(QCloseEvent $event)
	[virtual] [protected] inherited from QWidget
	called as Qt method void closeEvent(QCloseEvent* event)

#### Method contentsRect( --> QRect)
	inherited from QWidget
	calls Qt method QRect contentsRect()

#### Method enterEvent(QEvent $event)
	[virtual] [protected] inherited from QWidget
	called as Qt method void enterEvent(QEvent* event)

#### Method font( --> QFont)
	inherited from QWidget
	calls Qt method QFont & font()

#### Method hasHeightForWidth( --> Bool)
	[virtual] inherited from QWidget
	called as Qt method bool hasHeightForWidth()

#### Method hasMouseTracking( --> Bool)
	inherited from QWidget
	calls Qt method bool hasMouseTracking()

#### Method hasTracking( --> Bool)
	calls Qt method bool hasTracking()

#### Method height( --> Int)
	inherited from QWidget
	calls Qt method int height()

#### Method heightForWidth(Int $arg1 --> Int)
	[virtual] inherited from QWidget
	called as Qt method int heightForWidth(int arg1)

#### Method hide()
	[slot] inherited from QWidget
	calls Qt method void hide()

#### Method invertedAppearance( --> Bool)
	calls Qt method bool invertedAppearance()

#### Method invertedControls( --> Bool)
	calls Qt method bool invertedControls()

#### Method isActiveWindow( --> Bool)
	inherited from QWidget
	calls Qt method bool isActiveWindow()

#### Method leaveEvent(QEvent $event)
	[virtual] [protected] inherited from QWidget
	called as Qt method void leaveEvent(QEvent* event)

#### Method mapFrom(QWidget $arg1, QPoint $arg2 --> QPoint)
	inherited from QWidget
	calls Qt method QPoint mapFrom(const QWidget* arg1, const QPoint& arg2)

#### Method mapFromGlobal(QPoint $arg1 --> QPoint)
	inherited from QWidget
	calls Qt method QPoint mapFromGlobal(const QPoint& arg1)

#### Method mapFromParent(QPoint $arg1 --> QPoint)
	inherited from QWidget
	calls Qt method QPoint mapFromParent(const QPoint& arg1)

#### Method mapTo(QWidget $arg1, QPoint $arg2 --> QPoint)
	inherited from QWidget
	calls Qt method QPoint mapTo(const QWidget* arg1, const QPoint& arg2)

#### Method mapToGlobal(QPoint $arg1 --> QPoint)
	inherited from QWidget
	calls Qt method QPoint mapToGlobal(const QPoint& arg1)

#### Method mapToParent(QPoint $arg1 --> QPoint)
	inherited from QWidget
	calls Qt method QPoint mapToParent(const QPoint& arg1)

#### Method maximum( --> Int)
	calls Qt method int maximum()

#### Method minimum( --> Int)
	calls Qt method int minimum()

#### Method mouseMoveEvent(QMouseEvent $event)
	[virtual] [protected] inherited from QWidget
	called as Qt method void mouseMoveEvent(QMouseEvent* event)

#### Method mousePressEvent(QMouseEvent $event)
	[virtual] [protected] inherited from QWidget
	called as Qt method void mousePressEvent(QMouseEvent* event)

#### Method mouseReleaseEvent(QMouseEvent $event)
	[virtual] [protected] inherited from QWidget
	called as Qt method void mouseReleaseEvent(QMouseEvent* event)

#### Method orientation( --> Qt::Orientation)
	calls Qt method Qt::Orientation orientation()

#### Method pageStep( --> Int)
	calls Qt method int pageStep()

#### Method paintEvent(QPaintEvent $event)
	[virtual] [protected] inherited from QWidget
	called as Qt method void paintEvent(QPaintEvent* event)

#### Method render(QPaintDevice $target, QPoint $targetOffset = QPoint.new(), QRegion $sourceRegion = QRegion.new(), Int $renderFlags = RenderFlags(DrawWindowBackground +| DrawChildren))
	inherited from QWidget
	calls Qt method void render(QPaintDevice* target, const QPoint& targetOffset = QPoint(), const QRegion& sourceRegion = QRegion(), RenderFlags renderFlags = RenderFlags(DrawWindowBackground | DrawChildren))

#### Method repaint(Int $x, Int $y, Int $w, Int $h)
	inherited from QWidget
	calls Qt method void repaint(int x, int y, int w, int h)

#### Method repaint()
	[slot] inherited from QWidget
	calls Qt method void repaint()

#### Method resizeEvent(QResizeEvent $event)
	[virtual] [protected] inherited from QWidget
	called as Qt method void resizeEvent(QResizeEvent* event)

#### Method setDisabled(Bool $arg1)
	[slot] inherited from QWidget
	calls Qt method void setDisabled(bool arg1)

#### Method setFixedHeight(Int $h)
	inherited from QWidget
	calls Qt method void setFixedHeight(int h)

#### Method setFixedSize(Int $w, Int $h)
	inherited from QWidget
	calls Qt method void setFixedSize(int w, int h)

#### Method setFixedWidth(Int $w)
	inherited from QWidget
	calls Qt method void setFixedWidth(int w)

#### Method setFont(QFont $arg1)
	inherited from QWidget
	calls Qt method void setFont(const QFont& arg1)

#### Method setInvertedAppearance(Bool $arg1)
	calls Qt method void setInvertedAppearance(bool arg1)

#### Method setInvertedControls(Bool $arg1)
	calls Qt method void setInvertedControls(bool arg1)

#### Method setLayout(QLayout $arg1)
	inherited from QWidget
	calls Qt method void setLayout(QLayout* arg1)

#### Method setMaximum(Int $arg1)
	calls Qt method void setMaximum(int arg1)

#### Method setMaximumHeight(Int $maxh)
	inherited from QWidget
	calls Qt method void setMaximumHeight(int maxh)

#### Method setMaximumSize(Int $maxw, Int $maxh)
	inherited from QWidget
	calls Qt method void setMaximumSize(int maxw, int maxh)

#### Method setMaximumWidth(Int $maxw)
	inherited from QWidget
	calls Qt method void setMaximumWidth(int maxw)

#### Method setMinimum(Int $arg1)
	calls Qt method void setMinimum(int arg1)

#### Method setMinimumHeight(Int $minh)
	inherited from QWidget
	calls Qt method void setMinimumHeight(int minh)

#### Method setMinimumSize(Int $minw, Int $minh)
	inherited from QWidget
	calls Qt method void setMinimumSize(int minw, int minh)

#### Method setMinimumWidth(Int $minw)
	inherited from QWidget
	calls Qt method void setMinimumWidth(int minw)

#### Method setMouseTracking(Bool $enable)
	inherited from QWidget
	calls Qt method void setMouseTracking(bool enable)

#### Method setOrientation(Qt::Orientation $arg1)
	[slot] 
	calls Qt method void setOrientation(Qt::Orientation arg1)

#### Method setPageStep(Int $arg1)
	calls Qt method void setPageStep(int arg1)

#### Method setRange(Int $min, Int $max)
	[slot] 
	calls Qt method void setRange(int min, int max)

#### Method setSingleStep(Int $arg1)
	calls Qt method void setSingleStep(int arg1)

#### Method setSizePolicy(QSizePolicy::Policy $horizontal, QSizePolicy::Policy $vertical)
	inherited from QWidget
	calls Qt method void setSizePolicy(QSizePolicy::Policy horizontal, QSizePolicy::Policy vertical)

#### Method setSliderDown(Bool $arg1)
	calls Qt method void setSliderDown(bool arg1)

#### Method setSliderPosition(Int $arg1)
	calls Qt method void setSliderPosition(int arg1)

#### Method setToolTip(Str $arg1)
	inherited from QWidget
	calls Qt method void setToolTip(const QString& arg1)

#### Method setTracking(Bool $enable)
	calls Qt method void setTracking(bool enable)

#### Method setValue(Int $arg1)
	[slot] 
	calls Qt method void setValue(int arg1)

#### Method setWindowTitle(Str $arg1)
	[slot] inherited from QWidget
	calls Qt method void setWindowTitle(const QString& arg1)

#### Method show()
	[slot] inherited from QWidget
	calls Qt method void show()

#### Method singleStep( --> Int)
	calls Qt method int singleStep()

#### Method sliderMoved(Int $position)
	[signal] 
	calls Qt method void sliderMoved(int position)

#### Method sliderPosition( --> Int)
	calls Qt method int sliderPosition()

#### Method sliderPressed()
	[signal] 
	calls Qt method void sliderPressed()

#### Method sliderReleased()
	[signal] 
	calls Qt method void sliderReleased()

#### Method update(Int $x, Int $y, Int $w, Int $h)
	inherited from QWidget
	calls Qt method void update(int x, int y, int w, int h)

#### Method update()
	[slot] inherited from QWidget
	calls Qt method void update()

#### Method value( --> Int)
	calls Qt method int value()

#### Method valueChanged(Int $value)
	[signal] 
	calls Qt method void valueChanged(int value)

#### Method width( --> Int)
	inherited from QWidget
	calls Qt method int width()


Class QAction
-------------
	imported by
		use Qt::QtWidgets::QAction;

	inherits QObject




#### Method QAction.new(QObject $parent = (QObject) --> QAction))
	calls Qt method  QAction(QObject* parent = nullptr)

#### Method setCheckable(Bool $arg1)
	calls Qt method void setCheckable(bool arg1)

#### Method setChecked(Bool $arg1)
	[slot] 
	calls Qt method void setChecked(bool arg1)

#### Method setDisabled(Bool $b)
	[slot] 
	calls Qt method void setDisabled(bool b)

#### Method setEnabled(Bool $arg1)
	[slot] 
	calls Qt method void setEnabled(bool arg1)

#### Method setToolTip(Str $tip)
	calls Qt method void setToolTip(const QString& tip)

#### Method text( --> Str)
	calls Qt method QString text()

#### Method trigger()
	[slot] 
	calls Qt method void trigger()

#### Method triggered(Bool $checked = False)
	[signal] 
	calls Qt method void triggered(bool checked = false)


Class QActionGroup
------------------
	imported by
		use Qt::QtWidgets::QActionGroup;

	inherits QObject




#### Method addAction(QAction $a --> QAction)
	calls Qt method QAction * addAction(QAction* a)

#### Method QActionGroup.new(QObject $parent --> QActionGroup))
	calls Qt method  QActionGroup(QObject* parent)


Class QBoxLayout
----------------
	imported by
		use Qt::QtWidgets::QBoxLayout;

	inherits QLayout

	inherited by QHBoxLayout, QVBoxLayout


WARNING: This class has no constructor. So it can't be used to create an object explicitely.

#### Method addLayout(QLayout $layout, Int $stretch = 0)
	calls Qt method void addLayout(QLayout* layout, int stretch = 0)

#### Method addWidget(QWidget $w)
	inherited from QLayout
	calls Qt method void addWidget(QWidget* w)

#### Method setAlignment(QWidget $w, Int $alignment --> Bool)
	inherited from QLayout
	calls Qt method bool setAlignment(QWidget* w, Qt::Alignment alignment)

#### Method setAlignment(QLayout $l, Int $alignment --> Bool)
	inherited from QLayout
	calls Qt method bool setAlignment(QLayout* l, Qt::Alignment alignment)

#### Method setContentsMargins(Int $left, Int $top, Int $right, Int $bottom)
	inherited from QLayout
	calls Qt method void setContentsMargins(int left, int top, int right, int bottom)

#### Method setSpacing(Int $spacing)
	calls Qt method void setSpacing(int spacing)

#### Method setStretch(Int $index, Int $stretch)
	calls Qt method void setStretch(int index, int stretch)

#### Method setStretchFactor(QLayout $l, Int $stretch --> Bool)
	calls Qt method bool setStretchFactor(QLayout* l, int stretch)

#### Method setStretchFactor(QWidget $w, Int $stretch --> Bool)
	calls Qt method bool setStretchFactor(QWidget* w, int stretch)

#### Method spacing( --> Int)
	calls Qt method int spacing()

#### Method stretch(Int $index --> Int)
	calls Qt method int stretch(int index)


Class QBrush
------------
	imported by
		use Qt::QtWidgets::QBrush;





#### Method QBrush.new( --> QBrush))
	calls Qt method  QBrush()

#### Method QBrush.new(QColor $color, Qt::BrushStyle $bs = Qt::SolidPattern --> QBrush))
	calls Qt method  QBrush(const QColor& color, Qt::BrushStyle bs = Qt::SolidPattern)

#### Method QBrush.new(Qt::BrushStyle $bs --> QBrush))
	calls Qt method  QBrush(Qt::BrushStyle bs)

#### Method setColor(QColor $color)
	calls Qt method void setColor(const QColor& color)

#### Method setStyle(Qt::BrushStyle $arg1)
	calls Qt method void setStyle(Qt::BrushStyle arg1)


Class QCheckBox
---------------
	imported by
		use Qt::QtWidgets::QCheckBox;

	inherits QAbstractButton




#### Method activateWindow()
	inherited from QWidget
	calls Qt method void activateWindow()

#### Method checkState( --> Qt::CheckState)
	calls Qt method Qt::CheckState checkState()

#### Method click()
	[slot] inherited from QAbstractButton
	calls Qt method void click()

#### Method clicked(Bool $checked = False)
	[signal] inherited from QAbstractButton
	calls Qt method void clicked(bool checked = false)

#### Method closeEvent(QCloseEvent $event)
	[virtual] [protected] inherited from QWidget
	called as Qt method void closeEvent(QCloseEvent* event)

#### Method contentsRect( --> QRect)
	inherited from QWidget
	calls Qt method QRect contentsRect()

#### Method QCheckBox.new(QWidget $parent = (QWidget) --> QCheckBox))
	calls Qt method  QCheckBox(QWidget* parent = nullptr)

#### Method QCheckBox.new(Str $text, QWidget $parent = (QWidget) --> QCheckBox))
	calls Qt method  QCheckBox(const QString& text, QWidget* parent = nullptr)

#### Method enterEvent(QEvent $event)
	[virtual] [protected] inherited from QWidget
	called as Qt method void enterEvent(QEvent* event)

#### Method font( --> QFont)
	inherited from QWidget
	calls Qt method QFont & font()

#### Method hasHeightForWidth( --> Bool)
	[virtual] inherited from QWidget
	called as Qt method bool hasHeightForWidth()

#### Method hasMouseTracking( --> Bool)
	inherited from QWidget
	calls Qt method bool hasMouseTracking()

#### Method height( --> Int)
	inherited from QWidget
	calls Qt method int height()

#### Method heightForWidth(Int $arg1 --> Int)
	[virtual] inherited from QWidget
	called as Qt method int heightForWidth(int arg1)

#### Method hide()
	[slot] inherited from QWidget
	calls Qt method void hide()

#### Method isActiveWindow( --> Bool)
	inherited from QWidget
	calls Qt method bool isActiveWindow()

#### Method isCheckable( --> Bool)
	inherited from QAbstractButton
	calls Qt method bool isCheckable()

#### Method isChecked( --> Bool)
	inherited from QAbstractButton
	calls Qt method bool isChecked()

#### Method isDown( --> Bool)
	inherited from QAbstractButton
	calls Qt method bool isDown()

#### Method isTristate( --> Bool)
	calls Qt method bool isTristate()

#### Method leaveEvent(QEvent $event)
	[virtual] [protected] inherited from QWidget
	called as Qt method void leaveEvent(QEvent* event)

#### Method mapFrom(QWidget $arg1, QPoint $arg2 --> QPoint)
	inherited from QWidget
	calls Qt method QPoint mapFrom(const QWidget* arg1, const QPoint& arg2)

#### Method mapFromGlobal(QPoint $arg1 --> QPoint)
	inherited from QWidget
	calls Qt method QPoint mapFromGlobal(const QPoint& arg1)

#### Method mapFromParent(QPoint $arg1 --> QPoint)
	inherited from QWidget
	calls Qt method QPoint mapFromParent(const QPoint& arg1)

#### Method mapTo(QWidget $arg1, QPoint $arg2 --> QPoint)
	inherited from QWidget
	calls Qt method QPoint mapTo(const QWidget* arg1, const QPoint& arg2)

#### Method mapToGlobal(QPoint $arg1 --> QPoint)
	inherited from QWidget
	calls Qt method QPoint mapToGlobal(const QPoint& arg1)

#### Method mapToParent(QPoint $arg1 --> QPoint)
	inherited from QWidget
	calls Qt method QPoint mapToParent(const QPoint& arg1)

#### Method mouseMoveEvent(QMouseEvent $event)
	[virtual] [protected] inherited from QWidget
	called as Qt method void mouseMoveEvent(QMouseEvent* event)

#### Method mousePressEvent(QMouseEvent $event)
	[virtual] [protected] inherited from QWidget
	called as Qt method void mousePressEvent(QMouseEvent* event)

#### Method mouseReleaseEvent(QMouseEvent $event)
	[virtual] [protected] inherited from QWidget
	called as Qt method void mouseReleaseEvent(QMouseEvent* event)

#### Method nextCheckState()
	[virtual] [protected] inherited from QAbstractButton
	called as Qt method void nextCheckState()

#### Method paintEvent(QPaintEvent $event)
	[virtual] [protected] inherited from QWidget
	called as Qt method void paintEvent(QPaintEvent* event)

#### Method pressed()
	[signal] inherited from QAbstractButton
	calls Qt method void pressed()

#### Method released()
	[signal] inherited from QAbstractButton
	calls Qt method void released()

#### Method render(QPaintDevice $target, QPoint $targetOffset = QPoint.new(), QRegion $sourceRegion = QRegion.new(), Int $renderFlags = RenderFlags(DrawWindowBackground +| DrawChildren))
	inherited from QWidget
	calls Qt method void render(QPaintDevice* target, const QPoint& targetOffset = QPoint(), const QRegion& sourceRegion = QRegion(), RenderFlags renderFlags = RenderFlags(DrawWindowBackground | DrawChildren))

#### Method repaint(Int $x, Int $y, Int $w, Int $h)
	inherited from QWidget
	calls Qt method void repaint(int x, int y, int w, int h)

#### Method repaint()
	[slot] inherited from QWidget
	calls Qt method void repaint()

#### Method resizeEvent(QResizeEvent $event)
	[virtual] [protected] inherited from QWidget
	called as Qt method void resizeEvent(QResizeEvent* event)

#### Method setAutoExclusive(Bool $arg1)
	inherited from QAbstractButton
	calls Qt method void setAutoExclusive(bool arg1)

#### Method setCheckState(Qt::CheckState $state)
	calls Qt method void setCheckState(Qt::CheckState state)

#### Method setCheckable(Bool $arg1)
	inherited from QAbstractButton
	calls Qt method void setCheckable(bool arg1)

#### Method setChecked(Bool $arg1)
	[slot] inherited from QAbstractButton
	calls Qt method void setChecked(bool arg1)

#### Method setDisabled(Bool $arg1)
	[slot] inherited from QWidget
	calls Qt method void setDisabled(bool arg1)

#### Method setDown(Bool $arg1)
	inherited from QAbstractButton
	calls Qt method void setDown(bool arg1)

#### Method setFixedHeight(Int $h)
	inherited from QWidget
	calls Qt method void setFixedHeight(int h)

#### Method setFixedSize(Int $w, Int $h)
	inherited from QWidget
	calls Qt method void setFixedSize(int w, int h)

#### Method setFixedWidth(Int $w)
	inherited from QWidget
	calls Qt method void setFixedWidth(int w)

#### Method setFont(QFont $arg1)
	inherited from QWidget
	calls Qt method void setFont(const QFont& arg1)

#### Method setLayout(QLayout $arg1)
	inherited from QWidget
	calls Qt method void setLayout(QLayout* arg1)

#### Method setMaximumHeight(Int $maxh)
	inherited from QWidget
	calls Qt method void setMaximumHeight(int maxh)

#### Method setMaximumSize(Int $maxw, Int $maxh)
	inherited from QWidget
	calls Qt method void setMaximumSize(int maxw, int maxh)

#### Method setMaximumWidth(Int $maxw)
	inherited from QWidget
	calls Qt method void setMaximumWidth(int maxw)

#### Method setMinimumHeight(Int $minh)
	inherited from QWidget
	calls Qt method void setMinimumHeight(int minh)

#### Method setMinimumSize(Int $minw, Int $minh)
	inherited from QWidget
	calls Qt method void setMinimumSize(int minw, int minh)

#### Method setMinimumWidth(Int $minw)
	inherited from QWidget
	calls Qt method void setMinimumWidth(int minw)

#### Method setMouseTracking(Bool $enable)
	inherited from QWidget
	calls Qt method void setMouseTracking(bool enable)

#### Method setSizePolicy(QSizePolicy::Policy $horizontal, QSizePolicy::Policy $vertical)
	inherited from QWidget
	calls Qt method void setSizePolicy(QSizePolicy::Policy horizontal, QSizePolicy::Policy vertical)

#### Method setText(Str $text)
	inherited from QAbstractButton
	calls Qt method void setText(const QString& text)

#### Method setToolTip(Str $arg1)
	inherited from QWidget
	calls Qt method void setToolTip(const QString& arg1)

#### Method setTristate(Bool $y = True)
	calls Qt method void setTristate(bool y = true)

#### Method setWindowTitle(Str $arg1)
	[slot] inherited from QWidget
	calls Qt method void setWindowTitle(const QString& arg1)

#### Method show()
	[slot] inherited from QWidget
	calls Qt method void show()

#### Method stateChanged(Int $arg1)
	[signal] 
	calls Qt method void stateChanged(int arg1)

#### Method text( --> Str)
	inherited from QAbstractButton
	calls Qt method QString text()

#### Method toggle()
	[slot] inherited from QAbstractButton
	calls Qt method void toggle()

#### Method toggled(Bool $checked)
	[signal] inherited from QAbstractButton
	calls Qt method void toggled(bool checked)

#### Method update()
	[slot] inherited from QWidget
	calls Qt method void update()

#### Method update(Int $x, Int $y, Int $w, Int $h)
	inherited from QWidget
	calls Qt method void update(int x, int y, int w, int h)

#### Method width( --> Int)
	inherited from QWidget
	calls Qt method int width()


Class QCloseEvent
-----------------
	imported by
		use Qt::QtWidgets::QCloseEvent;

	inherits QEvent




WARNING: This class has no constructor. So it can't be used to create an object explicitely.

#### Method accept()
	inherited from QEvent
	calls Qt method void accept()

#### Method ignore()
	inherited from QEvent
	calls Qt method void ignore()

#### Method isAccepted( --> Bool)
	inherited from QEvent
	calls Qt method bool isAccepted()

#### Method spontaneous( --> Bool)
	inherited from QEvent
	calls Qt method bool spontaneous()

#### Method type( --> QEvent::Type)
	inherited from QEvent
	calls Qt method Type type()


Class QColor
------------
	imported by
		use Qt::QtWidgets::QColor;





#### Method alpha( --> Int)
	calls Qt method int alpha()

#### Method blue( --> Int)
	calls Qt method int blue()

#### Method QColor.new(Int $r, Int $g, Int $b, Int $a = 255 --> QColor))
	calls Qt method  QColor(int r, int g, int b, int a = 255)

#### Method QColor.new(Qt::GlobalColor $color --> QColor))
	calls Qt method  QColor(Qt::GlobalColor color)

#### Method green( --> Int)
	calls Qt method int green()

#### Method red( --> Int)
	calls Qt method int red()


Class QContextMenuEvent
-----------------------
	imported by
		use Qt::QtWidgets::QContextMenuEvent;

	inherits QInputEvent




WARNING: This class has no constructor. So it can't be used to create an object explicitely.

#### Method accept()
	inherited from QEvent
	calls Qt method void accept()

#### Method ignore()
	inherited from QEvent
	calls Qt method void ignore()

#### Method isAccepted( --> Bool)
	inherited from QEvent
	calls Qt method bool isAccepted()

#### Method spontaneous( --> Bool)
	inherited from QEvent
	calls Qt method bool spontaneous()

#### Method type( --> QEvent::Type)
	inherited from QEvent
	calls Qt method Type type()


Class QCoreApplication
----------------------
	imported by
		use Qt::QtWidgets::QCoreApplication;

	inherits QObject

	inherited by QGuiApplication


WARNING: This class has no constructor. So it can't be used to create an object explicitely.

#### Method quit()
	[slot] [static] 
	calls Qt method void quit()

#### Method sendEvent(QObject $receiver, QEvent $event --> Bool)
	[static] 
	calls Qt method bool sendEvent(QObject* receiver, QEvent* event)


Class QDial
-----------
	imported by
		use Qt::QtWidgets::QDial;

	inherits QAbstractSlider




#### Method activateWindow()
	inherited from QWidget
	calls Qt method void activateWindow()

#### Method closeEvent(QCloseEvent $event)
	[virtual] [protected] inherited from QWidget
	called as Qt method void closeEvent(QCloseEvent* event)

#### Method contentsRect( --> QRect)
	inherited from QWidget
	calls Qt method QRect contentsRect()

#### Method QDial.new(QWidget $parent = (QWidget) --> QDial))
	calls Qt method  QDial(QWidget* parent = nullptr)

#### Method enterEvent(QEvent $event)
	[virtual] [protected] inherited from QWidget
	called as Qt method void enterEvent(QEvent* event)

#### Method font( --> QFont)
	inherited from QWidget
	calls Qt method QFont & font()

#### Method hasHeightForWidth( --> Bool)
	[virtual] inherited from QWidget
	called as Qt method bool hasHeightForWidth()

#### Method hasMouseTracking( --> Bool)
	inherited from QWidget
	calls Qt method bool hasMouseTracking()

#### Method hasTracking( --> Bool)
	inherited from QAbstractSlider
	calls Qt method bool hasTracking()

#### Method height( --> Int)
	inherited from QWidget
	calls Qt method int height()

#### Method heightForWidth(Int $arg1 --> Int)
	[virtual] inherited from QWidget
	called as Qt method int heightForWidth(int arg1)

#### Method hide()
	[slot] inherited from QWidget
	calls Qt method void hide()

#### Method invertedAppearance( --> Bool)
	inherited from QAbstractSlider
	calls Qt method bool invertedAppearance()

#### Method invertedControls( --> Bool)
	inherited from QAbstractSlider
	calls Qt method bool invertedControls()

#### Method isActiveWindow( --> Bool)
	inherited from QWidget
	calls Qt method bool isActiveWindow()

#### Method leaveEvent(QEvent $event)
	[virtual] [protected] inherited from QWidget
	called as Qt method void leaveEvent(QEvent* event)

#### Method mapFrom(QWidget $arg1, QPoint $arg2 --> QPoint)
	inherited from QWidget
	calls Qt method QPoint mapFrom(const QWidget* arg1, const QPoint& arg2)

#### Method mapFromGlobal(QPoint $arg1 --> QPoint)
	inherited from QWidget
	calls Qt method QPoint mapFromGlobal(const QPoint& arg1)

#### Method mapFromParent(QPoint $arg1 --> QPoint)
	inherited from QWidget
	calls Qt method QPoint mapFromParent(const QPoint& arg1)

#### Method mapTo(QWidget $arg1, QPoint $arg2 --> QPoint)
	inherited from QWidget
	calls Qt method QPoint mapTo(const QWidget* arg1, const QPoint& arg2)

#### Method mapToGlobal(QPoint $arg1 --> QPoint)
	inherited from QWidget
	calls Qt method QPoint mapToGlobal(const QPoint& arg1)

#### Method mapToParent(QPoint $arg1 --> QPoint)
	inherited from QWidget
	calls Qt method QPoint mapToParent(const QPoint& arg1)

#### Method maximum( --> Int)
	inherited from QAbstractSlider
	calls Qt method int maximum()

#### Method minimum( --> Int)
	inherited from QAbstractSlider
	calls Qt method int minimum()

#### Method mouseMoveEvent(QMouseEvent $event)
	[virtual] [protected] inherited from QWidget
	called as Qt method void mouseMoveEvent(QMouseEvent* event)

#### Method mousePressEvent(QMouseEvent $event)
	[virtual] [protected] inherited from QWidget
	called as Qt method void mousePressEvent(QMouseEvent* event)

#### Method mouseReleaseEvent(QMouseEvent $event)
	[virtual] [protected] inherited from QWidget
	called as Qt method void mouseReleaseEvent(QMouseEvent* event)

#### Method notchSize( --> Int)
	calls Qt method int notchSize()

#### Method notchTarget( --> Real)
	calls Qt method qreal notchTarget()

#### Method notchesVisible( --> Bool)
	calls Qt method bool notchesVisible()

#### Method orientation( --> Qt::Orientation)
	inherited from QAbstractSlider
	calls Qt method Qt::Orientation orientation()

#### Method pageStep( --> Int)
	inherited from QAbstractSlider
	calls Qt method int pageStep()

#### Method paintEvent(QPaintEvent $event)
	[virtual] [protected] inherited from QWidget
	called as Qt method void paintEvent(QPaintEvent* event)

#### Method render(QPaintDevice $target, QPoint $targetOffset = QPoint.new(), QRegion $sourceRegion = QRegion.new(), Int $renderFlags = RenderFlags(DrawWindowBackground +| DrawChildren))
	inherited from QWidget
	calls Qt method void render(QPaintDevice* target, const QPoint& targetOffset = QPoint(), const QRegion& sourceRegion = QRegion(), RenderFlags renderFlags = RenderFlags(DrawWindowBackground | DrawChildren))

#### Method repaint()
	[slot] inherited from QWidget
	calls Qt method void repaint()

#### Method repaint(Int $x, Int $y, Int $w, Int $h)
	inherited from QWidget
	calls Qt method void repaint(int x, int y, int w, int h)

#### Method resizeEvent(QResizeEvent $event)
	[virtual] [protected] inherited from QWidget
	called as Qt method void resizeEvent(QResizeEvent* event)

#### Method setDisabled(Bool $arg1)
	[slot] inherited from QWidget
	calls Qt method void setDisabled(bool arg1)

#### Method setFixedHeight(Int $h)
	inherited from QWidget
	calls Qt method void setFixedHeight(int h)

#### Method setFixedSize(Int $w, Int $h)
	inherited from QWidget
	calls Qt method void setFixedSize(int w, int h)

#### Method setFixedWidth(Int $w)
	inherited from QWidget
	calls Qt method void setFixedWidth(int w)

#### Method setFont(QFont $arg1)
	inherited from QWidget
	calls Qt method void setFont(const QFont& arg1)

#### Method setInvertedAppearance(Bool $arg1)
	inherited from QAbstractSlider
	calls Qt method void setInvertedAppearance(bool arg1)

#### Method setInvertedControls(Bool $arg1)
	inherited from QAbstractSlider
	calls Qt method void setInvertedControls(bool arg1)

#### Method setLayout(QLayout $arg1)
	inherited from QWidget
	calls Qt method void setLayout(QLayout* arg1)

#### Method setMaximum(Int $arg1)
	inherited from QAbstractSlider
	calls Qt method void setMaximum(int arg1)

#### Method setMaximumHeight(Int $maxh)
	inherited from QWidget
	calls Qt method void setMaximumHeight(int maxh)

#### Method setMaximumSize(Int $maxw, Int $maxh)
	inherited from QWidget
	calls Qt method void setMaximumSize(int maxw, int maxh)

#### Method setMaximumWidth(Int $maxw)
	inherited from QWidget
	calls Qt method void setMaximumWidth(int maxw)

#### Method setMinimum(Int $arg1)
	inherited from QAbstractSlider
	calls Qt method void setMinimum(int arg1)

#### Method setMinimumHeight(Int $minh)
	inherited from QWidget
	calls Qt method void setMinimumHeight(int minh)

#### Method setMinimumSize(Int $minw, Int $minh)
	inherited from QWidget
	calls Qt method void setMinimumSize(int minw, int minh)

#### Method setMinimumWidth(Int $minw)
	inherited from QWidget
	calls Qt method void setMinimumWidth(int minw)

#### Method setMouseTracking(Bool $enable)
	inherited from QWidget
	calls Qt method void setMouseTracking(bool enable)

#### Method setNotchTarget(Real $target)
	calls Qt method void setNotchTarget(double target)

#### Method setNotchesVisible(Bool $visible)
	[slot] 
	calls Qt method void setNotchesVisible(bool visible)

#### Method setOrientation(Qt::Orientation $arg1)
	[slot] inherited from QAbstractSlider
	calls Qt method void setOrientation(Qt::Orientation arg1)

#### Method setPageStep(Int $arg1)
	inherited from QAbstractSlider
	calls Qt method void setPageStep(int arg1)

#### Method setRange(Int $min, Int $max)
	[slot] inherited from QAbstractSlider
	calls Qt method void setRange(int min, int max)

#### Method setSingleStep(Int $arg1)
	inherited from QAbstractSlider
	calls Qt method void setSingleStep(int arg1)

#### Method setSizePolicy(QSizePolicy::Policy $horizontal, QSizePolicy::Policy $vertical)
	inherited from QWidget
	calls Qt method void setSizePolicy(QSizePolicy::Policy horizontal, QSizePolicy::Policy vertical)

#### Method setSliderDown(Bool $arg1)
	inherited from QAbstractSlider
	calls Qt method void setSliderDown(bool arg1)

#### Method setSliderPosition(Int $arg1)
	inherited from QAbstractSlider
	calls Qt method void setSliderPosition(int arg1)

#### Method setToolTip(Str $arg1)
	inherited from QWidget
	calls Qt method void setToolTip(const QString& arg1)

#### Method setTracking(Bool $enable)
	inherited from QAbstractSlider
	calls Qt method void setTracking(bool enable)

#### Method setValue(Int $arg1)
	[slot] inherited from QAbstractSlider
	calls Qt method void setValue(int arg1)

#### Method setWindowTitle(Str $arg1)
	[slot] inherited from QWidget
	calls Qt method void setWindowTitle(const QString& arg1)

#### Method setWrapping(Bool $on)
	[slot] 
	calls Qt method void setWrapping(bool on)

#### Method show()
	[slot] inherited from QWidget
	calls Qt method void show()

#### Method singleStep( --> Int)
	inherited from QAbstractSlider
	calls Qt method int singleStep()

#### Method sliderMoved(Int $position)
	[signal] inherited from QAbstractSlider
	calls Qt method void sliderMoved(int position)

#### Method sliderPosition( --> Int)
	inherited from QAbstractSlider
	calls Qt method int sliderPosition()

#### Method sliderPressed()
	[signal] inherited from QAbstractSlider
	calls Qt method void sliderPressed()

#### Method sliderReleased()
	[signal] inherited from QAbstractSlider
	calls Qt method void sliderReleased()

#### Method update(Int $x, Int $y, Int $w, Int $h)
	inherited from QWidget
	calls Qt method void update(int x, int y, int w, int h)

#### Method update()
	[slot] inherited from QWidget
	calls Qt method void update()

#### Method value( --> Int)
	inherited from QAbstractSlider
	calls Qt method int value()

#### Method valueChanged(Int $value)
	[signal] inherited from QAbstractSlider
	calls Qt method void valueChanged(int value)

#### Method width( --> Int)
	inherited from QWidget
	calls Qt method int width()

#### Method wrapping( --> Bool)
	calls Qt method bool wrapping()


Class QDialog
-------------
	imported by
		use Qt::QtWidgets::QDialog;

	inherits QWidget

	inherited by QFileDialog, QMessageBox


#### Method accept()
	[slot] [virtual] 
	called as Qt method void accept()

#### Method accepted()
	[signal] 
	calls Qt method void accepted()

#### Method activateWindow()
	inherited from QWidget
	calls Qt method void activateWindow()

#### Method adjustPosition(QWidget $arg1)
	[protected] 
	calls Qt method void adjustPosition(QWidget* arg1)

#### Method closeEvent(QCloseEvent $arg1)
	[virtual] [protected] [override] 
	called as Qt method void closeEvent(QCloseEvent* arg1)

#### Method contentsRect( --> QRect)
	inherited from QWidget
	calls Qt method QRect contentsRect()

#### Method QDialog.new(QWidget $parent = (QWidget), Int $f = Qt::WindowFlags() --> QDialog))
	calls Qt method  QDialog(QWidget* parent = nullptr, Qt::WindowFlags f = Qt::WindowFlags())

#### Method done(Int $arg1)
	[slot] [virtual] 
	called as Qt method void done(int arg1)

#### Method enterEvent(QEvent $event)
	[virtual] [protected] inherited from QWidget
	called as Qt method void enterEvent(QEvent* event)

#### Method exec( --> Int)
	[slot] [virtual] 
	called as Qt method int exec()

#### Method extension( --> QWidget)
	calls Qt method QWidget * extension()

#### Method finished(Int $result)
	[signal] 
	calls Qt method void finished(int result)

#### Method font( --> QFont)
	inherited from QWidget
	calls Qt method QFont & font()

#### Method hasHeightForWidth( --> Bool)
	[virtual] inherited from QWidget
	called as Qt method bool hasHeightForWidth()

#### Method hasMouseTracking( --> Bool)
	inherited from QWidget
	calls Qt method bool hasMouseTracking()

#### Method height( --> Int)
	inherited from QWidget
	calls Qt method int height()

#### Method heightForWidth(Int $arg1 --> Int)
	[virtual] inherited from QWidget
	called as Qt method int heightForWidth(int arg1)

#### Method hide()
	[slot] inherited from QWidget
	calls Qt method void hide()

#### Method isActiveWindow( --> Bool)
	inherited from QWidget
	calls Qt method bool isActiveWindow()

#### Method isSizeGripEnabled( --> Bool)
	calls Qt method bool isSizeGripEnabled()

#### Method keyPressEvent(QKeyEvent $arg1)
	[protected] [override] 
	calls Qt method void keyPressEvent(QKeyEvent* arg1)

#### Method leaveEvent(QEvent $event)
	[virtual] [protected] inherited from QWidget
	called as Qt method void leaveEvent(QEvent* event)

#### Method mapFrom(QWidget $arg1, QPoint $arg2 --> QPoint)
	inherited from QWidget
	calls Qt method QPoint mapFrom(const QWidget* arg1, const QPoint& arg2)

#### Method mapFromGlobal(QPoint $arg1 --> QPoint)
	inherited from QWidget
	calls Qt method QPoint mapFromGlobal(const QPoint& arg1)

#### Method mapFromParent(QPoint $arg1 --> QPoint)
	inherited from QWidget
	calls Qt method QPoint mapFromParent(const QPoint& arg1)

#### Method mapTo(QWidget $arg1, QPoint $arg2 --> QPoint)
	inherited from QWidget
	calls Qt method QPoint mapTo(const QWidget* arg1, const QPoint& arg2)

#### Method mapToGlobal(QPoint $arg1 --> QPoint)
	inherited from QWidget
	calls Qt method QPoint mapToGlobal(const QPoint& arg1)

#### Method mapToParent(QPoint $arg1 --> QPoint)
	inherited from QWidget
	calls Qt method QPoint mapToParent(const QPoint& arg1)

#### Method minimumSizeHint( --> QSize)
	[override] 
	calls Qt method QSize minimumSizeHint()

#### Method mouseMoveEvent(QMouseEvent $event)
	[virtual] [protected] inherited from QWidget
	called as Qt method void mouseMoveEvent(QMouseEvent* event)

#### Method mousePressEvent(QMouseEvent $event)
	[virtual] [protected] inherited from QWidget
	called as Qt method void mousePressEvent(QMouseEvent* event)

#### Method mouseReleaseEvent(QMouseEvent $event)
	[virtual] [protected] inherited from QWidget
	called as Qt method void mouseReleaseEvent(QMouseEvent* event)

#### Method open()
	[slot] [virtual] 
	called as Qt method void open()

#### Method orientation( --> Qt::Orientation)
	calls Qt method Qt::Orientation orientation()

#### Method paintEvent(QPaintEvent $event)
	[virtual] [protected] inherited from QWidget
	called as Qt method void paintEvent(QPaintEvent* event)

#### Method reject()
	[slot] [virtual] 
	called as Qt method void reject()

#### Method rejected()
	[signal] 
	calls Qt method void rejected()

#### Method render(QPaintDevice $target, QPoint $targetOffset = QPoint.new(), QRegion $sourceRegion = QRegion.new(), Int $renderFlags = RenderFlags(DrawWindowBackground +| DrawChildren))
	inherited from QWidget
	calls Qt method void render(QPaintDevice* target, const QPoint& targetOffset = QPoint(), const QRegion& sourceRegion = QRegion(), RenderFlags renderFlags = RenderFlags(DrawWindowBackground | DrawChildren))

#### Method repaint(Int $x, Int $y, Int $w, Int $h)
	inherited from QWidget
	calls Qt method void repaint(int x, int y, int w, int h)

#### Method repaint()
	[slot] inherited from QWidget
	calls Qt method void repaint()

#### Method resizeEvent(QResizeEvent $arg1)
	[virtual] [protected] [override] 
	called as Qt method void resizeEvent(QResizeEvent* arg1)

#### Method result( --> Int)
	calls Qt method int result()

#### Method setDisabled(Bool $arg1)
	[slot] inherited from QWidget
	calls Qt method void setDisabled(bool arg1)

#### Method setExtension(QWidget $extension)
	calls Qt method void setExtension(QWidget* extension)

#### Method setFixedHeight(Int $h)
	inherited from QWidget
	calls Qt method void setFixedHeight(int h)

#### Method setFixedSize(Int $w, Int $h)
	inherited from QWidget
	calls Qt method void setFixedSize(int w, int h)

#### Method setFixedWidth(Int $w)
	inherited from QWidget
	calls Qt method void setFixedWidth(int w)

#### Method setFont(QFont $arg1)
	inherited from QWidget
	calls Qt method void setFont(const QFont& arg1)

#### Method setLayout(QLayout $arg1)
	inherited from QWidget
	calls Qt method void setLayout(QLayout* arg1)

#### Method setMaximumHeight(Int $maxh)
	inherited from QWidget
	calls Qt method void setMaximumHeight(int maxh)

#### Method setMaximumSize(Int $maxw, Int $maxh)
	inherited from QWidget
	calls Qt method void setMaximumSize(int maxw, int maxh)

#### Method setMaximumWidth(Int $maxw)
	inherited from QWidget
	calls Qt method void setMaximumWidth(int maxw)

#### Method setMinimumHeight(Int $minh)
	inherited from QWidget
	calls Qt method void setMinimumHeight(int minh)

#### Method setMinimumSize(Int $minw, Int $minh)
	inherited from QWidget
	calls Qt method void setMinimumSize(int minw, int minh)

#### Method setMinimumWidth(Int $minw)
	inherited from QWidget
	calls Qt method void setMinimumWidth(int minw)

#### Method setModal(Bool $modal)
	calls Qt method void setModal(bool modal)

#### Method setMouseTracking(Bool $enable)
	inherited from QWidget
	calls Qt method void setMouseTracking(bool enable)

#### Method setOrientation(Qt::Orientation $orientation)
	calls Qt method void setOrientation(Qt::Orientation orientation)

#### Method setResult(Int $r)
	calls Qt method void setResult(int r)

#### Method setSizeGripEnabled(Bool $arg1)
	calls Qt method void setSizeGripEnabled(bool arg1)

#### Method setSizePolicy(QSizePolicy::Policy $horizontal, QSizePolicy::Policy $vertical)
	inherited from QWidget
	calls Qt method void setSizePolicy(QSizePolicy::Policy horizontal, QSizePolicy::Policy vertical)

#### Method setToolTip(Str $arg1)
	inherited from QWidget
	calls Qt method void setToolTip(const QString& arg1)

#### Method setVisible(Bool $visible)
	[override] 
	calls Qt method void setVisible(bool visible)

#### Method setWindowTitle(Str $arg1)
	[slot] inherited from QWidget
	calls Qt method void setWindowTitle(const QString& arg1)

#### Method show()
	[slot] inherited from QWidget
	calls Qt method void show()

#### Method update()
	[slot] inherited from QWidget
	calls Qt method void update()

#### Method update(Int $x, Int $y, Int $w, Int $h)
	inherited from QWidget
	calls Qt method void update(int x, int y, int w, int h)

#### Method width( --> Int)
	inherited from QWidget
	calls Qt method int width()


Class QDialogButtonBox
----------------------
	imported by
		use Qt::QtWidgets::QDialogButtonBox;

	inherits QWidget



    enum ButtonRole 
    enum StandardButton 

#### Method accepted()
	[signal] 
	calls Qt method void accepted()

#### Method activateWindow()
	inherited from QWidget
	calls Qt method void activateWindow()

#### Method addButton(QAbstractButton $button, QDialogButtonBox::ButtonRole $role)
	calls Qt method void addButton(QAbstractButton* button, ButtonRole role)

#### Method addButton(QDialogButtonBox::StandardButton $button --> QPushButton)
	calls Qt method QPushButton * addButton(StandardButton button)

#### Method addButton(Str $text, QDialogButtonBox::ButtonRole $role --> QPushButton)
	calls Qt method QPushButton * addButton(const QString& text, ButtonRole role)

#### Method button(QDialogButtonBox::StandardButton $which --> QPushButton)
	calls Qt method QPushButton * button(StandardButton which)

#### Method buttonRole(QAbstractButton $button --> QDialogButtonBox::ButtonRole)
	calls Qt method ButtonRole buttonRole(QAbstractButton* button)

#### Method centerButtons( --> Bool)
	calls Qt method bool centerButtons()

#### Method clear()
	calls Qt method void clear()

#### Method clicked(QAbstractButton $button)
	[signal] 
	calls Qt method void clicked(QAbstractButton* button)

#### Method closeEvent(QCloseEvent $event)
	[virtual] [protected] inherited from QWidget
	called as Qt method void closeEvent(QCloseEvent* event)

#### Method contentsRect( --> QRect)
	inherited from QWidget
	calls Qt method QRect contentsRect()

#### Method QDialogButtonBox.new(Qt::Orientation $orientation, QWidget $parent = (QWidget) --> QDialogButtonBox))
	calls Qt method  QDialogButtonBox(Qt::Orientation orientation, QWidget* parent = nullptr)

#### Method QDialogButtonBox.new(Int $buttons, QWidget $parent = (QWidget) --> QDialogButtonBox))
	calls Qt method  QDialogButtonBox(StandardButtons buttons, QWidget* parent = nullptr)

#### Method QDialogButtonBox.new(Int $buttons, Qt::Orientation $orientation, QWidget $parent = (QWidget) --> QDialogButtonBox))
	calls Qt method  QDialogButtonBox(StandardButtons buttons, Qt::Orientation orientation, QWidget* parent = nullptr)

#### Method QDialogButtonBox.new(QWidget $parent = (QWidget) --> QDialogButtonBox))
	calls Qt method  QDialogButtonBox(QWidget* parent = nullptr)

#### Method enterEvent(QEvent $event)
	[virtual] [protected] inherited from QWidget
	called as Qt method void enterEvent(QEvent* event)

#### Method font( --> QFont)
	inherited from QWidget
	calls Qt method QFont & font()

#### Method hasHeightForWidth( --> Bool)
	[virtual] inherited from QWidget
	called as Qt method bool hasHeightForWidth()

#### Method hasMouseTracking( --> Bool)
	inherited from QWidget
	calls Qt method bool hasMouseTracking()

#### Method height( --> Int)
	inherited from QWidget
	calls Qt method int height()

#### Method heightForWidth(Int $arg1 --> Int)
	[virtual] inherited from QWidget
	called as Qt method int heightForWidth(int arg1)

#### Method hide()
	[slot] inherited from QWidget
	calls Qt method void hide()

#### Method isActiveWindow( --> Bool)
	inherited from QWidget
	calls Qt method bool isActiveWindow()

#### Method leaveEvent(QEvent $event)
	[virtual] [protected] inherited from QWidget
	called as Qt method void leaveEvent(QEvent* event)

#### Method mapFrom(QWidget $arg1, QPoint $arg2 --> QPoint)
	inherited from QWidget
	calls Qt method QPoint mapFrom(const QWidget* arg1, const QPoint& arg2)

#### Method mapFromGlobal(QPoint $arg1 --> QPoint)
	inherited from QWidget
	calls Qt method QPoint mapFromGlobal(const QPoint& arg1)

#### Method mapFromParent(QPoint $arg1 --> QPoint)
	inherited from QWidget
	calls Qt method QPoint mapFromParent(const QPoint& arg1)

#### Method mapTo(QWidget $arg1, QPoint $arg2 --> QPoint)
	inherited from QWidget
	calls Qt method QPoint mapTo(const QWidget* arg1, const QPoint& arg2)

#### Method mapToGlobal(QPoint $arg1 --> QPoint)
	inherited from QWidget
	calls Qt method QPoint mapToGlobal(const QPoint& arg1)

#### Method mapToParent(QPoint $arg1 --> QPoint)
	inherited from QWidget
	calls Qt method QPoint mapToParent(const QPoint& arg1)

#### Method mouseMoveEvent(QMouseEvent $event)
	[virtual] [protected] inherited from QWidget
	called as Qt method void mouseMoveEvent(QMouseEvent* event)

#### Method mousePressEvent(QMouseEvent $event)
	[virtual] [protected] inherited from QWidget
	called as Qt method void mousePressEvent(QMouseEvent* event)

#### Method mouseReleaseEvent(QMouseEvent $event)
	[virtual] [protected] inherited from QWidget
	called as Qt method void mouseReleaseEvent(QMouseEvent* event)

#### Method orientation( --> Qt::Orientation)
	calls Qt method Qt::Orientation orientation()

#### Method paintEvent(QPaintEvent $event)
	[virtual] [protected] inherited from QWidget
	called as Qt method void paintEvent(QPaintEvent* event)

#### Method rejected()
	[signal] 
	calls Qt method void rejected()

#### Method removeButton(QAbstractButton $button)
	calls Qt method void removeButton(QAbstractButton* button)

#### Method render(QPaintDevice $target, QPoint $targetOffset = QPoint.new(), QRegion $sourceRegion = QRegion.new(), Int $renderFlags = RenderFlags(DrawWindowBackground +| DrawChildren))
	inherited from QWidget
	calls Qt method void render(QPaintDevice* target, const QPoint& targetOffset = QPoint(), const QRegion& sourceRegion = QRegion(), RenderFlags renderFlags = RenderFlags(DrawWindowBackground | DrawChildren))

#### Method repaint(Int $x, Int $y, Int $w, Int $h)
	inherited from QWidget
	calls Qt method void repaint(int x, int y, int w, int h)

#### Method repaint()
	[slot] inherited from QWidget
	calls Qt method void repaint()

#### Method resizeEvent(QResizeEvent $event)
	[virtual] [protected] inherited from QWidget
	called as Qt method void resizeEvent(QResizeEvent* event)

#### Method setCenterButtons(Bool $center)
	calls Qt method void setCenterButtons(bool center)

#### Method setDisabled(Bool $arg1)
	[slot] inherited from QWidget
	calls Qt method void setDisabled(bool arg1)

#### Method setFixedHeight(Int $h)
	inherited from QWidget
	calls Qt method void setFixedHeight(int h)

#### Method setFixedSize(Int $w, Int $h)
	inherited from QWidget
	calls Qt method void setFixedSize(int w, int h)

#### Method setFixedWidth(Int $w)
	inherited from QWidget
	calls Qt method void setFixedWidth(int w)

#### Method setFont(QFont $arg1)
	inherited from QWidget
	calls Qt method void setFont(const QFont& arg1)

#### Method setLayout(QLayout $arg1)
	inherited from QWidget
	calls Qt method void setLayout(QLayout* arg1)

#### Method setMaximumHeight(Int $maxh)
	inherited from QWidget
	calls Qt method void setMaximumHeight(int maxh)

#### Method setMaximumSize(Int $maxw, Int $maxh)
	inherited from QWidget
	calls Qt method void setMaximumSize(int maxw, int maxh)

#### Method setMaximumWidth(Int $maxw)
	inherited from QWidget
	calls Qt method void setMaximumWidth(int maxw)

#### Method setMinimumHeight(Int $minh)
	inherited from QWidget
	calls Qt method void setMinimumHeight(int minh)

#### Method setMinimumSize(Int $minw, Int $minh)
	inherited from QWidget
	calls Qt method void setMinimumSize(int minw, int minh)

#### Method setMinimumWidth(Int $minw)
	inherited from QWidget
	calls Qt method void setMinimumWidth(int minw)

#### Method setMouseTracking(Bool $enable)
	inherited from QWidget
	calls Qt method void setMouseTracking(bool enable)

#### Method setOrientation(Qt::Orientation $orientation)
	calls Qt method void setOrientation(Qt::Orientation orientation)

#### Method setSizePolicy(QSizePolicy::Policy $horizontal, QSizePolicy::Policy $vertical)
	inherited from QWidget
	calls Qt method void setSizePolicy(QSizePolicy::Policy horizontal, QSizePolicy::Policy vertical)

#### Method setStandardButtons(Int $buttons)
	calls Qt method void setStandardButtons(StandardButtons buttons)

#### Method setToolTip(Str $arg1)
	inherited from QWidget
	calls Qt method void setToolTip(const QString& arg1)

#### Method setWindowTitle(Str $arg1)
	[slot] inherited from QWidget
	calls Qt method void setWindowTitle(const QString& arg1)

#### Method show()
	[slot] inherited from QWidget
	calls Qt method void show()

#### Method standardButton(QAbstractButton $button --> QDialogButtonBox::StandardButton)
	calls Qt method StandardButton standardButton(QAbstractButton* button)

#### Method update()
	[slot] inherited from QWidget
	calls Qt method void update()

#### Method update(Int $x, Int $y, Int $w, Int $h)
	inherited from QWidget
	calls Qt method void update(int x, int y, int w, int h)

#### Method width( --> Int)
	inherited from QWidget
	calls Qt method int width()


Class QEvent
------------
	imported by
		use Qt::QtWidgets::QEvent;


	inherited by QCloseEvent, QGraphicsSceneEvent, QInputEvent, QPaintEvent, QResizeEvent, QTimerEvent

    enum Type 

#### Method accept()
	calls Qt method void accept()

#### Method QEvent.new(QEvent::Type $type --> QEvent))
	calls Qt method  QEvent(Type type)

#### Method QEvent.new(QEvent $other --> QEvent))
	calls Qt method  QEvent(const QEvent& other)

#### Method ignore()
	calls Qt method void ignore()

#### Method isAccepted( --> Bool)
	calls Qt method bool isAccepted()

#### Method spontaneous( --> Bool)
	calls Qt method bool spontaneous()

#### Method type( --> QEvent::Type)
	calls Qt method Type type()


Class QFileDialog
-----------------
	imported by
		use Qt::QtWidgets::QFileDialog;

	inherits QDialog



    enum Option 

WARNING: This class has no constructor. So it can't be used to create an object explicitely.

#### Method accept()
	[slot] [virtual] inherited from QDialog
	called as Qt method void accept()

#### Method accepted()
	[signal] inherited from QDialog
	calls Qt method void accepted()

#### Method activateWindow()
	inherited from QWidget
	calls Qt method void activateWindow()

#### Method adjustPosition(QWidget $arg1)
	[protected] inherited from QDialog
	calls Qt method void adjustPosition(QWidget* arg1)

#### Method closeEvent(QCloseEvent $event)
	[virtual] [protected] inherited from QWidget
	called as Qt method void closeEvent(QCloseEvent* event)

#### Method contentsRect( --> QRect)
	inherited from QWidget
	calls Qt method QRect contentsRect()

#### Method done(Int $arg1)
	[slot] [virtual] inherited from QDialog
	called as Qt method void done(int arg1)

#### Method enterEvent(QEvent $event)
	[virtual] [protected] inherited from QWidget
	called as Qt method void enterEvent(QEvent* event)

#### Method exec( --> Int)
	[slot] [virtual] inherited from QDialog
	called as Qt method int exec()

#### Method extension( --> QWidget)
	inherited from QDialog
	calls Qt method QWidget * extension()

#### Method finished(Int $result)
	[signal] inherited from QDialog
	calls Qt method void finished(int result)

#### Method font( --> QFont)
	inherited from QWidget
	calls Qt method QFont & font()

#### Method getOpenFileName(QWidget $parent = (QWidget), Str $caption = "", Str $dir = "", Str $filter = "", Str $selectedFilter = (Str), Int $options = Options() --> Str)
	[static] 
	calls Qt method QString getOpenFileName(QWidget* parent = nullptr, const QString& caption = QString(), const QString& dir = QString(), const QString& filter = QString(), QString* selectedFilter = nullptr, Options options = Options())

#### Method getSaveFileName(QWidget $parent = (QWidget), Str $caption = "", Str $dir = "", Str $filter = "", Str $selectedFilter = (Str), Int $options = Options() --> Str)
	[static] 
	calls Qt method QString getSaveFileName(QWidget* parent = nullptr, const QString& caption = QString(), const QString& dir = QString(), const QString& filter = QString(), QString* selectedFilter = nullptr, Options options = Options())

#### Method hasHeightForWidth( --> Bool)
	[virtual] inherited from QWidget
	called as Qt method bool hasHeightForWidth()

#### Method hasMouseTracking( --> Bool)
	inherited from QWidget
	calls Qt method bool hasMouseTracking()

#### Method height( --> Int)
	inherited from QWidget
	calls Qt method int height()

#### Method heightForWidth(Int $arg1 --> Int)
	[virtual] inherited from QWidget
	called as Qt method int heightForWidth(int arg1)

#### Method hide()
	[slot] inherited from QWidget
	calls Qt method void hide()

#### Method isActiveWindow( --> Bool)
	inherited from QWidget
	calls Qt method bool isActiveWindow()

#### Method isSizeGripEnabled( --> Bool)
	inherited from QDialog
	calls Qt method bool isSizeGripEnabled()

#### Method keyPressEvent(QKeyEvent $arg1)
	[protected] [override] inherited from QDialog
	calls Qt method void keyPressEvent(QKeyEvent* arg1)

#### Method leaveEvent(QEvent $event)
	[virtual] [protected] inherited from QWidget
	called as Qt method void leaveEvent(QEvent* event)

#### Method mapFrom(QWidget $arg1, QPoint $arg2 --> QPoint)
	inherited from QWidget
	calls Qt method QPoint mapFrom(const QWidget* arg1, const QPoint& arg2)

#### Method mapFromGlobal(QPoint $arg1 --> QPoint)
	inherited from QWidget
	calls Qt method QPoint mapFromGlobal(const QPoint& arg1)

#### Method mapFromParent(QPoint $arg1 --> QPoint)
	inherited from QWidget
	calls Qt method QPoint mapFromParent(const QPoint& arg1)

#### Method mapTo(QWidget $arg1, QPoint $arg2 --> QPoint)
	inherited from QWidget
	calls Qt method QPoint mapTo(const QWidget* arg1, const QPoint& arg2)

#### Method mapToGlobal(QPoint $arg1 --> QPoint)
	inherited from QWidget
	calls Qt method QPoint mapToGlobal(const QPoint& arg1)

#### Method mapToParent(QPoint $arg1 --> QPoint)
	inherited from QWidget
	calls Qt method QPoint mapToParent(const QPoint& arg1)

#### Method minimumSizeHint( --> QSize)
	[override] inherited from QDialog
	calls Qt method QSize minimumSizeHint()

#### Method mouseMoveEvent(QMouseEvent $event)
	[virtual] [protected] inherited from QWidget
	called as Qt method void mouseMoveEvent(QMouseEvent* event)

#### Method mousePressEvent(QMouseEvent $event)
	[virtual] [protected] inherited from QWidget
	called as Qt method void mousePressEvent(QMouseEvent* event)

#### Method mouseReleaseEvent(QMouseEvent $event)
	[virtual] [protected] inherited from QWidget
	called as Qt method void mouseReleaseEvent(QMouseEvent* event)

#### Method open()
	[slot] [virtual] inherited from QDialog
	called as Qt method void open()

#### Method orientation( --> Qt::Orientation)
	inherited from QDialog
	calls Qt method Qt::Orientation orientation()

#### Method paintEvent(QPaintEvent $event)
	[virtual] [protected] inherited from QWidget
	called as Qt method void paintEvent(QPaintEvent* event)

#### Method reject()
	[slot] [virtual] inherited from QDialog
	called as Qt method void reject()

#### Method rejected()
	[signal] inherited from QDialog
	calls Qt method void rejected()

#### Method render(QPaintDevice $target, QPoint $targetOffset = QPoint.new(), QRegion $sourceRegion = QRegion.new(), Int $renderFlags = RenderFlags(DrawWindowBackground +| DrawChildren))
	inherited from QWidget
	calls Qt method void render(QPaintDevice* target, const QPoint& targetOffset = QPoint(), const QRegion& sourceRegion = QRegion(), RenderFlags renderFlags = RenderFlags(DrawWindowBackground | DrawChildren))

#### Method repaint()
	[slot] inherited from QWidget
	calls Qt method void repaint()

#### Method repaint(Int $x, Int $y, Int $w, Int $h)
	inherited from QWidget
	calls Qt method void repaint(int x, int y, int w, int h)

#### Method resizeEvent(QResizeEvent $event)
	[virtual] [protected] inherited from QWidget
	called as Qt method void resizeEvent(QResizeEvent* event)

#### Method result( --> Int)
	inherited from QDialog
	calls Qt method int result()

#### Method setDisabled(Bool $arg1)
	[slot] inherited from QWidget
	calls Qt method void setDisabled(bool arg1)

#### Method setExtension(QWidget $extension)
	inherited from QDialog
	calls Qt method void setExtension(QWidget* extension)

#### Method setFixedHeight(Int $h)
	inherited from QWidget
	calls Qt method void setFixedHeight(int h)

#### Method setFixedSize(Int $w, Int $h)
	inherited from QWidget
	calls Qt method void setFixedSize(int w, int h)

#### Method setFixedWidth(Int $w)
	inherited from QWidget
	calls Qt method void setFixedWidth(int w)

#### Method setFont(QFont $arg1)
	inherited from QWidget
	calls Qt method void setFont(const QFont& arg1)

#### Method setLayout(QLayout $arg1)
	inherited from QWidget
	calls Qt method void setLayout(QLayout* arg1)

#### Method setMaximumHeight(Int $maxh)
	inherited from QWidget
	calls Qt method void setMaximumHeight(int maxh)

#### Method setMaximumSize(Int $maxw, Int $maxh)
	inherited from QWidget
	calls Qt method void setMaximumSize(int maxw, int maxh)

#### Method setMaximumWidth(Int $maxw)
	inherited from QWidget
	calls Qt method void setMaximumWidth(int maxw)

#### Method setMinimumHeight(Int $minh)
	inherited from QWidget
	calls Qt method void setMinimumHeight(int minh)

#### Method setMinimumSize(Int $minw, Int $minh)
	inherited from QWidget
	calls Qt method void setMinimumSize(int minw, int minh)

#### Method setMinimumWidth(Int $minw)
	inherited from QWidget
	calls Qt method void setMinimumWidth(int minw)

#### Method setModal(Bool $modal)
	inherited from QDialog
	calls Qt method void setModal(bool modal)

#### Method setMouseTracking(Bool $enable)
	inherited from QWidget
	calls Qt method void setMouseTracking(bool enable)

#### Method setOrientation(Qt::Orientation $orientation)
	inherited from QDialog
	calls Qt method void setOrientation(Qt::Orientation orientation)

#### Method setResult(Int $r)
	inherited from QDialog
	calls Qt method void setResult(int r)

#### Method setSizeGripEnabled(Bool $arg1)
	inherited from QDialog
	calls Qt method void setSizeGripEnabled(bool arg1)

#### Method setSizePolicy(QSizePolicy::Policy $horizontal, QSizePolicy::Policy $vertical)
	inherited from QWidget
	calls Qt method void setSizePolicy(QSizePolicy::Policy horizontal, QSizePolicy::Policy vertical)

#### Method setToolTip(Str $arg1)
	inherited from QWidget
	calls Qt method void setToolTip(const QString& arg1)

#### Method setVisible(Bool $visible)
	[override] inherited from QDialog
	calls Qt method void setVisible(bool visible)

#### Method setWindowTitle(Str $arg1)
	[slot] inherited from QWidget
	calls Qt method void setWindowTitle(const QString& arg1)

#### Method show()
	[slot] inherited from QWidget
	calls Qt method void show()

#### Method update(Int $x, Int $y, Int $w, Int $h)
	inherited from QWidget
	calls Qt method void update(int x, int y, int w, int h)

#### Method update()
	[slot] inherited from QWidget
	calls Qt method void update()

#### Method width( --> Int)
	inherited from QWidget
	calls Qt method int width()


Class QFont
-----------
	imported by
		use Qt::QtWidgets::QFont;





#### Method bold( --> Bool)
	calls Qt method bool bold()

#### Method QFont.new( --> QFont))
	calls Qt method  QFont()

#### Method italic( --> Bool)
	calls Qt method bool italic()

#### Method pointSize( --> Int)
	calls Qt method int pointSize()

#### Method setBold(Bool $arg1)
	calls Qt method void setBold(bool arg1)

#### Method setFamily(Str $arg1)
	calls Qt method void setFamily(const QString& arg1)

#### Method setItalic(Bool $b)
	calls Qt method void setItalic(bool b)

#### Method setPointSize(Int $arg1)
	calls Qt method void setPointSize(int arg1)

#### Method setStretch(Int $arg1)
	calls Qt method void setStretch(int arg1)

#### Method stretch( --> Int)
	calls Qt method int stretch()


Class QFrame
------------
	imported by
		use Qt::QtWidgets::QFrame;

	inherits QWidget

	inherited by QAbstractScrollArea, QLabel

    enum Shadow 
    enum Shape 

#### Method activateWindow()
	inherited from QWidget
	calls Qt method void activateWindow()

#### Method closeEvent(QCloseEvent $event)
	[virtual] [protected] inherited from QWidget
	called as Qt method void closeEvent(QCloseEvent* event)

#### Method contentsRect( --> QRect)
	inherited from QWidget
	calls Qt method QRect contentsRect()

#### Method QFrame.new(QWidget $parent = (QWidget), Int $f = Qt::WindowFlags() --> QFrame))
	calls Qt method  QFrame(QWidget* parent = nullptr, Qt::WindowFlags f = Qt::WindowFlags())

#### Method enterEvent(QEvent $event)
	[virtual] [protected] inherited from QWidget
	called as Qt method void enterEvent(QEvent* event)

#### Method font( --> QFont)
	inherited from QWidget
	calls Qt method QFont & font()

#### Method frameRect( --> QRect)
	calls Qt method QRect frameRect()

#### Method frameShadow( --> QFrame::Shadow)
	calls Qt method Shadow frameShadow()

#### Method frameShape( --> QFrame::Shape)
	calls Qt method Shape frameShape()

#### Method frameStyle( --> Int)
	calls Qt method int frameStyle()

#### Method frameWidth( --> Int)
	calls Qt method int frameWidth()

#### Method hasHeightForWidth( --> Bool)
	[virtual] inherited from QWidget
	called as Qt method bool hasHeightForWidth()

#### Method hasMouseTracking( --> Bool)
	inherited from QWidget
	calls Qt method bool hasMouseTracking()

#### Method height( --> Int)
	inherited from QWidget
	calls Qt method int height()

#### Method heightForWidth(Int $arg1 --> Int)
	[virtual] inherited from QWidget
	called as Qt method int heightForWidth(int arg1)

#### Method hide()
	[slot] inherited from QWidget
	calls Qt method void hide()

#### Method isActiveWindow( --> Bool)
	inherited from QWidget
	calls Qt method bool isActiveWindow()

#### Method leaveEvent(QEvent $event)
	[virtual] [protected] inherited from QWidget
	called as Qt method void leaveEvent(QEvent* event)

#### Method lineWidth( --> Int)
	calls Qt method int lineWidth()

#### Method mapFrom(QWidget $arg1, QPoint $arg2 --> QPoint)
	inherited from QWidget
	calls Qt method QPoint mapFrom(const QWidget* arg1, const QPoint& arg2)

#### Method mapFromGlobal(QPoint $arg1 --> QPoint)
	inherited from QWidget
	calls Qt method QPoint mapFromGlobal(const QPoint& arg1)

#### Method mapFromParent(QPoint $arg1 --> QPoint)
	inherited from QWidget
	calls Qt method QPoint mapFromParent(const QPoint& arg1)

#### Method mapTo(QWidget $arg1, QPoint $arg2 --> QPoint)
	inherited from QWidget
	calls Qt method QPoint mapTo(const QWidget* arg1, const QPoint& arg2)

#### Method mapToGlobal(QPoint $arg1 --> QPoint)
	inherited from QWidget
	calls Qt method QPoint mapToGlobal(const QPoint& arg1)

#### Method mapToParent(QPoint $arg1 --> QPoint)
	inherited from QWidget
	calls Qt method QPoint mapToParent(const QPoint& arg1)

#### Method midLineWidth( --> Int)
	calls Qt method int midLineWidth()

#### Method mouseMoveEvent(QMouseEvent $event)
	[virtual] [protected] inherited from QWidget
	called as Qt method void mouseMoveEvent(QMouseEvent* event)

#### Method mousePressEvent(QMouseEvent $event)
	[virtual] [protected] inherited from QWidget
	called as Qt method void mousePressEvent(QMouseEvent* event)

#### Method mouseReleaseEvent(QMouseEvent $event)
	[virtual] [protected] inherited from QWidget
	called as Qt method void mouseReleaseEvent(QMouseEvent* event)

#### Method paintEvent(QPaintEvent $event)
	[virtual] [protected] inherited from QWidget
	called as Qt method void paintEvent(QPaintEvent* event)

#### Method render(QPaintDevice $target, QPoint $targetOffset = QPoint.new(), QRegion $sourceRegion = QRegion.new(), Int $renderFlags = RenderFlags(DrawWindowBackground +| DrawChildren))
	inherited from QWidget
	calls Qt method void render(QPaintDevice* target, const QPoint& targetOffset = QPoint(), const QRegion& sourceRegion = QRegion(), RenderFlags renderFlags = RenderFlags(DrawWindowBackground | DrawChildren))

#### Method repaint(Int $x, Int $y, Int $w, Int $h)
	inherited from QWidget
	calls Qt method void repaint(int x, int y, int w, int h)

#### Method repaint()
	[slot] inherited from QWidget
	calls Qt method void repaint()

#### Method resizeEvent(QResizeEvent $event)
	[virtual] [protected] inherited from QWidget
	called as Qt method void resizeEvent(QResizeEvent* event)

#### Method setDisabled(Bool $arg1)
	[slot] inherited from QWidget
	calls Qt method void setDisabled(bool arg1)

#### Method setFixedHeight(Int $h)
	inherited from QWidget
	calls Qt method void setFixedHeight(int h)

#### Method setFixedSize(Int $w, Int $h)
	inherited from QWidget
	calls Qt method void setFixedSize(int w, int h)

#### Method setFixedWidth(Int $w)
	inherited from QWidget
	calls Qt method void setFixedWidth(int w)

#### Method setFont(QFont $arg1)
	inherited from QWidget
	calls Qt method void setFont(const QFont& arg1)

#### Method setFrameRect(QRect $arg1)
	calls Qt method void setFrameRect(const QRect& arg1)

#### Method setFrameShadow(QFrame::Shadow $arg1)
	calls Qt method void setFrameShadow(Shadow arg1)

#### Method setFrameShape(QFrame::Shape $arg1)
	calls Qt method void setFrameShape(Shape arg1)

#### Method setFrameStyle(Int $arg1)
	calls Qt method void setFrameStyle(int arg1)

#### Method setLayout(QLayout $arg1)
	inherited from QWidget
	calls Qt method void setLayout(QLayout* arg1)

#### Method setLineWidth(Int $arg1)
	calls Qt method void setLineWidth(int arg1)

#### Method setMaximumHeight(Int $maxh)
	inherited from QWidget
	calls Qt method void setMaximumHeight(int maxh)

#### Method setMaximumSize(Int $maxw, Int $maxh)
	inherited from QWidget
	calls Qt method void setMaximumSize(int maxw, int maxh)

#### Method setMaximumWidth(Int $maxw)
	inherited from QWidget
	calls Qt method void setMaximumWidth(int maxw)

#### Method setMidLineWidth(Int $arg1)
	calls Qt method void setMidLineWidth(int arg1)

#### Method setMinimumHeight(Int $minh)
	inherited from QWidget
	calls Qt method void setMinimumHeight(int minh)

#### Method setMinimumSize(Int $minw, Int $minh)
	inherited from QWidget
	calls Qt method void setMinimumSize(int minw, int minh)

#### Method setMinimumWidth(Int $minw)
	inherited from QWidget
	calls Qt method void setMinimumWidth(int minw)

#### Method setMouseTracking(Bool $enable)
	inherited from QWidget
	calls Qt method void setMouseTracking(bool enable)

#### Method setSizePolicy(QSizePolicy::Policy $horizontal, QSizePolicy::Policy $vertical)
	inherited from QWidget
	calls Qt method void setSizePolicy(QSizePolicy::Policy horizontal, QSizePolicy::Policy vertical)

#### Method setToolTip(Str $arg1)
	inherited from QWidget
	calls Qt method void setToolTip(const QString& arg1)

#### Method setWindowTitle(Str $arg1)
	[slot] inherited from QWidget
	calls Qt method void setWindowTitle(const QString& arg1)

#### Method show()
	[slot] inherited from QWidget
	calls Qt method void show()

#### Method sizeHint( --> QSize)
	[override] 
	calls Qt method QSize sizeHint()

#### Method update(Int $x, Int $y, Int $w, Int $h)
	inherited from QWidget
	calls Qt method void update(int x, int y, int w, int h)

#### Method update()
	[slot] inherited from QWidget
	calls Qt method void update()

#### Method width( --> Int)
	inherited from QWidget
	calls Qt method int width()


Class QGraphicsEllipseItem
--------------------------
	imported by
		use Qt::QtWidgets::QGraphicsEllipseItem;

	inherits QAbstractGraphicsShapeItem




#### Method boundingRect( --> QRectF)
	[virtual] [override] 
	called as Qt method QRectF boundingRect()

#### Method brush( --> QBrush)
	inherited from QAbstractGraphicsShapeItem
	calls Qt method QBrush brush()

#### Method childrenBoundingRect( --> QRectF)
	inherited from QGraphicsItem
	calls Qt method QRectF childrenBoundingRect()

#### Method contains(QPointF $point --> Bool)
	[virtual] [override] 
	called as Qt method bool contains(const QPointF& point)

#### Method QGraphicsEllipseItem.new(QGraphicsItem $parent = (QGraphicsItem) --> QGraphicsEllipseItem))
	calls Qt method  QGraphicsEllipseItem(QGraphicsItem* parent = nullptr)

#### Method QGraphicsEllipseItem.new(Real $x, Real $y, Real $w, Real $h, QGraphicsItem $parent = (QGraphicsItem) --> QGraphicsEllipseItem))
	calls Qt method  QGraphicsEllipseItem(qreal x, qreal y, qreal w, qreal h, QGraphicsItem* parent = nullptr)

#### Method QGraphicsEllipseItem.new(QRectF $rect, QGraphicsItem $parent = (QGraphicsItem) --> QGraphicsEllipseItem))
	calls Qt method  QGraphicsEllipseItem(const QRectF& rect, QGraphicsItem* parent = nullptr)

#### Method ensureVisible(QRectF $rect = QRectF.new(), Int $xmargin = 50, Int $ymargin = 50)
	inherited from QGraphicsItem
	calls Qt method void ensureVisible(const QRectF& rect = QRectF(), int xmargin = 50, int ymargin = 50)

#### Method ensureVisible(Real $x, Real $y, Real $w, Real $h, Int $xmargin = 50, Int $ymargin = 50)
	inherited from QGraphicsItem
	calls Qt method void ensureVisible(qreal x, qreal y, qreal w, qreal h, int xmargin = 50, int ymargin = 50)

#### Method hide()
	inherited from QGraphicsItem
	calls Qt method void hide()

#### Method pen( --> QPen)
	inherited from QAbstractGraphicsShapeItem
	calls Qt method QPen pen()

#### Method prepareGeometryChange()
	[protected] inherited from QGraphicsItem
	calls Qt method void prepareGeometryChange()

#### Method rect( --> QRectF)
	calls Qt method QRectF rect()

#### Method sceneBoundingRect( --> QRectF)
	inherited from QGraphicsItem
	calls Qt method QRectF sceneBoundingRect()

#### Method setBrush(QBrush $brush)
	inherited from QAbstractGraphicsShapeItem
	calls Qt method void setBrush(const QBrush& brush)

#### Method setEnabled(Bool $enabled)
	inherited from QGraphicsItem
	calls Qt method void setEnabled(bool enabled)

#### Method setParentItem(QGraphicsItem $parent)
	inherited from QGraphicsItem
	calls Qt method void setParentItem(QGraphicsItem* parent)

#### Method setPen(QPen $pen)
	inherited from QAbstractGraphicsShapeItem
	calls Qt method void setPen(const QPen& pen)

#### Method setPos(QPointF $pos)
	inherited from QGraphicsItem
	calls Qt method void setPos(const QPointF& pos)

#### Method setPos(Real $x, Real $y)
	inherited from QGraphicsItem
	calls Qt method void setPos(qreal x, qreal y)

#### Method setRect(Real $x, Real $y, Real $w, Real $h)
	calls Qt method void setRect(qreal x, qreal y, qreal w, qreal h)

#### Method setRect(QRectF $rect)
	calls Qt method void setRect(const QRectF& rect)

#### Method setSpanAngle(Int $angle)
	calls Qt method void setSpanAngle(int angle)

#### Method setStartAngle(Int $angle)
	calls Qt method void setStartAngle(int angle)

#### Method setX(Real $x)
	inherited from QGraphicsItem
	calls Qt method void setX(qreal x)

#### Method setY(Real $y)
	inherited from QGraphicsItem
	calls Qt method void setY(qreal y)

#### Method setZValue(Real $z)
	inherited from QGraphicsItem
	calls Qt method void setZValue(qreal z)

#### Method show()
	inherited from QGraphicsItem
	calls Qt method void show()

#### Method spanAngle( --> Int)
	calls Qt method int spanAngle()

#### Method startAngle( --> Int)
	calls Qt method int startAngle()

#### Method x( --> Real)
	inherited from QGraphicsItem
	calls Qt method qreal x()

#### Method y( --> Real)
	inherited from QGraphicsItem
	calls Qt method qreal y()

#### Method zValue( --> Real)
	inherited from QGraphicsItem
	calls Qt method qreal zValue()


Class QGraphicsItem
-------------------
	imported by
		use Qt::QtWidgets::QGraphicsItem;


	inherited by QAbstractGraphicsShapeItem, QGraphicsLineItem, QGraphicsObject, QGraphicsPixmapItem


WARNING: This class has no constructor. So it can't be used to create an object explicitely.

#### Method childrenBoundingRect( --> QRectF)
	calls Qt method QRectF childrenBoundingRect()

#### Method contains(QPointF $point --> Bool)
	[virtual] 
	called as Qt method bool contains(const QPointF& point)

#### Method ensureVisible(QRectF $rect = QRectF.new(), Int $xmargin = 50, Int $ymargin = 50)
	calls Qt method void ensureVisible(const QRectF& rect = QRectF(), int xmargin = 50, int ymargin = 50)

#### Method ensureVisible(Real $x, Real $y, Real $w, Real $h, Int $xmargin = 50, Int $ymargin = 50)
	calls Qt method void ensureVisible(qreal x, qreal y, qreal w, qreal h, int xmargin = 50, int ymargin = 50)

#### Method hide()
	calls Qt method void hide()

#### Method prepareGeometryChange()
	[protected] 
	calls Qt method void prepareGeometryChange()

#### Method sceneBoundingRect( --> QRectF)
	calls Qt method QRectF sceneBoundingRect()

#### Method setEnabled(Bool $enabled)
	calls Qt method void setEnabled(bool enabled)

#### Method setParentItem(QGraphicsItem $parent)
	calls Qt method void setParentItem(QGraphicsItem* parent)

#### Method setPos(Real $x, Real $y)
	calls Qt method void setPos(qreal x, qreal y)

#### Method setPos(QPointF $pos)
	calls Qt method void setPos(const QPointF& pos)

#### Method setX(Real $x)
	calls Qt method void setX(qreal x)

#### Method setY(Real $y)
	calls Qt method void setY(qreal y)

#### Method setZValue(Real $z)
	calls Qt method void setZValue(qreal z)

#### Method show()
	calls Qt method void show()

#### Method x( --> Real)
	calls Qt method qreal x()

#### Method y( --> Real)
	calls Qt method qreal y()

#### Method zValue( --> Real)
	calls Qt method qreal zValue()


Class QGraphicsLayoutItem
-------------------------
	imported by
		use Qt::QtWidgets::QGraphicsLayoutItem;


	inherited by QGraphicsWidget


WARNING: This class has no constructor. So it can't be used to create an object explicitely.


Class QGraphicsLineItem
-----------------------
	imported by
		use Qt::QtWidgets::QGraphicsLineItem;

	inherits QGraphicsItem




#### Method boundingRect( --> QRectF)
	[virtual] [override] 
	called as Qt method QRectF boundingRect()

#### Method childrenBoundingRect( --> QRectF)
	inherited from QGraphicsItem
	calls Qt method QRectF childrenBoundingRect()

#### Method contains(QPointF $point --> Bool)
	[virtual] [override] 
	called as Qt method bool contains(const QPointF& point)

#### Method QGraphicsLineItem.new(Real $x1, Real $y1, Real $x2, Real $y2, QGraphicsItem $parent = (QGraphicsItem) --> QGraphicsLineItem))
	calls Qt method  QGraphicsLineItem(qreal x1, qreal y1, qreal x2, qreal y2, QGraphicsItem* parent = nullptr)

#### Method ensureVisible(QRectF $rect = QRectF.new(), Int $xmargin = 50, Int $ymargin = 50)
	inherited from QGraphicsItem
	calls Qt method void ensureVisible(const QRectF& rect = QRectF(), int xmargin = 50, int ymargin = 50)

#### Method ensureVisible(Real $x, Real $y, Real $w, Real $h, Int $xmargin = 50, Int $ymargin = 50)
	inherited from QGraphicsItem
	calls Qt method void ensureVisible(qreal x, qreal y, qreal w, qreal h, int xmargin = 50, int ymargin = 50)

#### Method hide()
	inherited from QGraphicsItem
	calls Qt method void hide()

#### Method prepareGeometryChange()
	[protected] inherited from QGraphicsItem
	calls Qt method void prepareGeometryChange()

#### Method sceneBoundingRect( --> QRectF)
	inherited from QGraphicsItem
	calls Qt method QRectF sceneBoundingRect()

#### Method setEnabled(Bool $enabled)
	inherited from QGraphicsItem
	calls Qt method void setEnabled(bool enabled)

#### Method setLine(Real $x1, Real $y1, Real $x2, Real $y2)
	calls Qt method void setLine(qreal x1, qreal y1, qreal x2, qreal y2)

#### Method setParentItem(QGraphicsItem $parent)
	inherited from QGraphicsItem
	calls Qt method void setParentItem(QGraphicsItem* parent)

#### Method setPen(QPen $pen)
	calls Qt method void setPen(const QPen& pen)

#### Method setPos(QPointF $pos)
	inherited from QGraphicsItem
	calls Qt method void setPos(const QPointF& pos)

#### Method setPos(Real $x, Real $y)
	inherited from QGraphicsItem
	calls Qt method void setPos(qreal x, qreal y)

#### Method setX(Real $x)
	inherited from QGraphicsItem
	calls Qt method void setX(qreal x)

#### Method setY(Real $y)
	inherited from QGraphicsItem
	calls Qt method void setY(qreal y)

#### Method setZValue(Real $z)
	inherited from QGraphicsItem
	calls Qt method void setZValue(qreal z)

#### Method show()
	inherited from QGraphicsItem
	calls Qt method void show()

#### Method x( --> Real)
	inherited from QGraphicsItem
	calls Qt method qreal x()

#### Method y( --> Real)
	inherited from QGraphicsItem
	calls Qt method qreal y()

#### Method zValue( --> Real)
	inherited from QGraphicsItem
	calls Qt method qreal zValue()


Class QGraphicsObject
---------------------
	imported by
		use Qt::QtWidgets::QGraphicsObject;

	inherits QGraphicsItem
	inherits QObject

	inherited by QGraphicsTextItem, QGraphicsWidget


WARNING: This class has no constructor. So it can't be used to create an object explicitely.

#### Method childrenBoundingRect( --> QRectF)
	inherited from QGraphicsItem
	calls Qt method QRectF childrenBoundingRect()

#### Method contains(QPointF $point --> Bool)
	[virtual] inherited from QGraphicsItem
	called as Qt method bool contains(const QPointF& point)

#### Method ensureVisible(Real $x, Real $y, Real $w, Real $h, Int $xmargin = 50, Int $ymargin = 50)
	inherited from QGraphicsItem
	calls Qt method void ensureVisible(qreal x, qreal y, qreal w, qreal h, int xmargin = 50, int ymargin = 50)

#### Method ensureVisible(QRectF $rect = QRectF.new(), Int $xmargin = 50, Int $ymargin = 50)
	inherited from QGraphicsItem
	calls Qt method void ensureVisible(const QRectF& rect = QRectF(), int xmargin = 50, int ymargin = 50)

#### Method hide()
	inherited from QGraphicsItem
	calls Qt method void hide()

#### Method prepareGeometryChange()
	[protected] inherited from QGraphicsItem
	calls Qt method void prepareGeometryChange()

#### Method sceneBoundingRect( --> QRectF)
	inherited from QGraphicsItem
	calls Qt method QRectF sceneBoundingRect()

#### Method setEnabled(Bool $enabled)
	inherited from QGraphicsItem
	calls Qt method void setEnabled(bool enabled)

#### Method setParentItem(QGraphicsItem $parent)
	inherited from QGraphicsItem
	calls Qt method void setParentItem(QGraphicsItem* parent)

#### Method setPos(QPointF $pos)
	inherited from QGraphicsItem
	calls Qt method void setPos(const QPointF& pos)

#### Method setPos(Real $x, Real $y)
	inherited from QGraphicsItem
	calls Qt method void setPos(qreal x, qreal y)

#### Method setX(Real $x)
	inherited from QGraphicsItem
	calls Qt method void setX(qreal x)

#### Method setY(Real $y)
	inherited from QGraphicsItem
	calls Qt method void setY(qreal y)

#### Method setZValue(Real $z)
	inherited from QGraphicsItem
	calls Qt method void setZValue(qreal z)

#### Method show()
	inherited from QGraphicsItem
	calls Qt method void show()

#### Method x( --> Real)
	inherited from QGraphicsItem
	calls Qt method qreal x()

#### Method y( --> Real)
	inherited from QGraphicsItem
	calls Qt method qreal y()

#### Method zValue( --> Real)
	inherited from QGraphicsItem
	calls Qt method qreal zValue()


Class QGraphicsPathItem
-----------------------
	imported by
		use Qt::QtWidgets::QGraphicsPathItem;

	inherits QAbstractGraphicsShapeItem




WARNING: This class has no constructor. So it can't be used to create an object explicitely.

#### Method brush( --> QBrush)
	inherited from QAbstractGraphicsShapeItem
	calls Qt method QBrush brush()

#### Method childrenBoundingRect( --> QRectF)
	inherited from QGraphicsItem
	calls Qt method QRectF childrenBoundingRect()

#### Method contains(QPointF $point --> Bool)
	[virtual] inherited from QGraphicsItem
	called as Qt method bool contains(const QPointF& point)

#### Method ensureVisible(QRectF $rect = QRectF.new(), Int $xmargin = 50, Int $ymargin = 50)
	inherited from QGraphicsItem
	calls Qt method void ensureVisible(const QRectF& rect = QRectF(), int xmargin = 50, int ymargin = 50)

#### Method ensureVisible(Real $x, Real $y, Real $w, Real $h, Int $xmargin = 50, Int $ymargin = 50)
	inherited from QGraphicsItem
	calls Qt method void ensureVisible(qreal x, qreal y, qreal w, qreal h, int xmargin = 50, int ymargin = 50)

#### Method hide()
	inherited from QGraphicsItem
	calls Qt method void hide()

#### Method pen( --> QPen)
	inherited from QAbstractGraphicsShapeItem
	calls Qt method QPen pen()

#### Method prepareGeometryChange()
	[protected] inherited from QGraphicsItem
	calls Qt method void prepareGeometryChange()

#### Method sceneBoundingRect( --> QRectF)
	inherited from QGraphicsItem
	calls Qt method QRectF sceneBoundingRect()

#### Method setBrush(QBrush $brush)
	inherited from QAbstractGraphicsShapeItem
	calls Qt method void setBrush(const QBrush& brush)

#### Method setEnabled(Bool $enabled)
	inherited from QGraphicsItem
	calls Qt method void setEnabled(bool enabled)

#### Method setParentItem(QGraphicsItem $parent)
	inherited from QGraphicsItem
	calls Qt method void setParentItem(QGraphicsItem* parent)

#### Method setPen(QPen $pen)
	inherited from QAbstractGraphicsShapeItem
	calls Qt method void setPen(const QPen& pen)

#### Method setPos(QPointF $pos)
	inherited from QGraphicsItem
	calls Qt method void setPos(const QPointF& pos)

#### Method setPos(Real $x, Real $y)
	inherited from QGraphicsItem
	calls Qt method void setPos(qreal x, qreal y)

#### Method setX(Real $x)
	inherited from QGraphicsItem
	calls Qt method void setX(qreal x)

#### Method setY(Real $y)
	inherited from QGraphicsItem
	calls Qt method void setY(qreal y)

#### Method setZValue(Real $z)
	inherited from QGraphicsItem
	calls Qt method void setZValue(qreal z)

#### Method show()
	inherited from QGraphicsItem
	calls Qt method void show()

#### Method x( --> Real)
	inherited from QGraphicsItem
	calls Qt method qreal x()

#### Method y( --> Real)
	inherited from QGraphicsItem
	calls Qt method qreal y()

#### Method zValue( --> Real)
	inherited from QGraphicsItem
	calls Qt method qreal zValue()


Class QGraphicsPixmapItem
-------------------------
	imported by
		use Qt::QtWidgets::QGraphicsPixmapItem;

	inherits QGraphicsItem




WARNING: This class has no constructor. So it can't be used to create an object explicitely.

#### Method childrenBoundingRect( --> QRectF)
	inherited from QGraphicsItem
	calls Qt method QRectF childrenBoundingRect()

#### Method contains(QPointF $point --> Bool)
	[virtual] inherited from QGraphicsItem
	called as Qt method bool contains(const QPointF& point)

#### Method ensureVisible(Real $x, Real $y, Real $w, Real $h, Int $xmargin = 50, Int $ymargin = 50)
	inherited from QGraphicsItem
	calls Qt method void ensureVisible(qreal x, qreal y, qreal w, qreal h, int xmargin = 50, int ymargin = 50)

#### Method ensureVisible(QRectF $rect = QRectF.new(), Int $xmargin = 50, Int $ymargin = 50)
	inherited from QGraphicsItem
	calls Qt method void ensureVisible(const QRectF& rect = QRectF(), int xmargin = 50, int ymargin = 50)

#### Method hide()
	inherited from QGraphicsItem
	calls Qt method void hide()

#### Method prepareGeometryChange()
	[protected] inherited from QGraphicsItem
	calls Qt method void prepareGeometryChange()

#### Method sceneBoundingRect( --> QRectF)
	inherited from QGraphicsItem
	calls Qt method QRectF sceneBoundingRect()

#### Method setEnabled(Bool $enabled)
	inherited from QGraphicsItem
	calls Qt method void setEnabled(bool enabled)

#### Method setParentItem(QGraphicsItem $parent)
	inherited from QGraphicsItem
	calls Qt method void setParentItem(QGraphicsItem* parent)

#### Method setPos(Real $x, Real $y)
	inherited from QGraphicsItem
	calls Qt method void setPos(qreal x, qreal y)

#### Method setPos(QPointF $pos)
	inherited from QGraphicsItem
	calls Qt method void setPos(const QPointF& pos)

#### Method setX(Real $x)
	inherited from QGraphicsItem
	calls Qt method void setX(qreal x)

#### Method setY(Real $y)
	inherited from QGraphicsItem
	calls Qt method void setY(qreal y)

#### Method setZValue(Real $z)
	inherited from QGraphicsItem
	calls Qt method void setZValue(qreal z)

#### Method show()
	inherited from QGraphicsItem
	calls Qt method void show()

#### Method x( --> Real)
	inherited from QGraphicsItem
	calls Qt method qreal x()

#### Method y( --> Real)
	inherited from QGraphicsItem
	calls Qt method qreal y()

#### Method zValue( --> Real)
	inherited from QGraphicsItem
	calls Qt method qreal zValue()


Class QGraphicsProxyWidget
--------------------------
	imported by
		use Qt::QtWidgets::QGraphicsProxyWidget;

	inherits QGraphicsWidget




WARNING: This class has no constructor. So it can't be used to create an object explicitely.

#### Method childrenBoundingRect( --> QRectF)
	inherited from QGraphicsItem
	calls Qt method QRectF childrenBoundingRect()

#### Method contains(QPointF $point --> Bool)
	[virtual] inherited from QGraphicsItem
	called as Qt method bool contains(const QPointF& point)

#### Method ensureVisible(Real $x, Real $y, Real $w, Real $h, Int $xmargin = 50, Int $ymargin = 50)
	inherited from QGraphicsItem
	calls Qt method void ensureVisible(qreal x, qreal y, qreal w, qreal h, int xmargin = 50, int ymargin = 50)

#### Method ensureVisible(QRectF $rect = QRectF.new(), Int $xmargin = 50, Int $ymargin = 50)
	inherited from QGraphicsItem
	calls Qt method void ensureVisible(const QRectF& rect = QRectF(), int xmargin = 50, int ymargin = 50)

#### Method hide()
	inherited from QGraphicsItem
	calls Qt method void hide()

#### Method prepareGeometryChange()
	[protected] inherited from QGraphicsItem
	calls Qt method void prepareGeometryChange()

#### Method sceneBoundingRect( --> QRectF)
	inherited from QGraphicsItem
	calls Qt method QRectF sceneBoundingRect()

#### Method setEnabled(Bool $enabled)
	inherited from QGraphicsItem
	calls Qt method void setEnabled(bool enabled)

#### Method setParentItem(QGraphicsItem $parent)
	inherited from QGraphicsItem
	calls Qt method void setParentItem(QGraphicsItem* parent)

#### Method setPos(Real $x, Real $y)
	inherited from QGraphicsItem
	calls Qt method void setPos(qreal x, qreal y)

#### Method setPos(QPointF $pos)
	inherited from QGraphicsItem
	calls Qt method void setPos(const QPointF& pos)

#### Method setX(Real $x)
	inherited from QGraphicsItem
	calls Qt method void setX(qreal x)

#### Method setY(Real $y)
	inherited from QGraphicsItem
	calls Qt method void setY(qreal y)

#### Method setZValue(Real $z)
	inherited from QGraphicsItem
	calls Qt method void setZValue(qreal z)

#### Method show()
	inherited from QGraphicsItem
	calls Qt method void show()

#### Method x( --> Real)
	inherited from QGraphicsItem
	calls Qt method qreal x()

#### Method y( --> Real)
	inherited from QGraphicsItem
	calls Qt method qreal y()

#### Method zValue( --> Real)
	inherited from QGraphicsItem
	calls Qt method qreal zValue()


Class QGraphicsRectItem
-----------------------
	imported by
		use Qt::QtWidgets::QGraphicsRectItem;

	inherits QAbstractGraphicsShapeItem




#### Method boundingRect( --> QRectF)
	[virtual] [override] 
	called as Qt method QRectF boundingRect()

#### Method brush( --> QBrush)
	inherited from QAbstractGraphicsShapeItem
	calls Qt method QBrush brush()

#### Method childrenBoundingRect( --> QRectF)
	inherited from QGraphicsItem
	calls Qt method QRectF childrenBoundingRect()

#### Method contains(QPointF $point --> Bool)
	[virtual] [override] 
	called as Qt method bool contains(const QPointF& point)

#### Method QGraphicsRectItem.new(QGraphicsItem $parent = (QGraphicsItem) --> QGraphicsRectItem))
	calls Qt method  QGraphicsRectItem(QGraphicsItem* parent = nullptr)

#### Method QGraphicsRectItem.new(QRectF $rect, QGraphicsItem $parent = (QGraphicsItem) --> QGraphicsRectItem))
	calls Qt method  QGraphicsRectItem(const QRectF& rect, QGraphicsItem* parent = nullptr)

#### Method QGraphicsRectItem.new(Real $x, Real $y, Real $w, Real $h, QGraphicsItem $parent = (QGraphicsItem) --> QGraphicsRectItem))
	calls Qt method  QGraphicsRectItem(qreal x, qreal y, qreal w, qreal h, QGraphicsItem* parent = nullptr)

#### Method ensureVisible(QRectF $rect = QRectF.new(), Int $xmargin = 50, Int $ymargin = 50)
	inherited from QGraphicsItem
	calls Qt method void ensureVisible(const QRectF& rect = QRectF(), int xmargin = 50, int ymargin = 50)

#### Method ensureVisible(Real $x, Real $y, Real $w, Real $h, Int $xmargin = 50, Int $ymargin = 50)
	inherited from QGraphicsItem
	calls Qt method void ensureVisible(qreal x, qreal y, qreal w, qreal h, int xmargin = 50, int ymargin = 50)

#### Method hide()
	inherited from QGraphicsItem
	calls Qt method void hide()

#### Method pen( --> QPen)
	inherited from QAbstractGraphicsShapeItem
	calls Qt method QPen pen()

#### Method prepareGeometryChange()
	[protected] inherited from QGraphicsItem
	calls Qt method void prepareGeometryChange()

#### Method rect( --> QRectF)
	calls Qt method QRectF rect()

#### Method sceneBoundingRect( --> QRectF)
	inherited from QGraphicsItem
	calls Qt method QRectF sceneBoundingRect()

#### Method setBrush(QBrush $brush)
	inherited from QAbstractGraphicsShapeItem
	calls Qt method void setBrush(const QBrush& brush)

#### Method setEnabled(Bool $enabled)
	inherited from QGraphicsItem
	calls Qt method void setEnabled(bool enabled)

#### Method setParentItem(QGraphicsItem $parent)
	inherited from QGraphicsItem
	calls Qt method void setParentItem(QGraphicsItem* parent)

#### Method setPen(QPen $pen)
	inherited from QAbstractGraphicsShapeItem
	calls Qt method void setPen(const QPen& pen)

#### Method setPos(QPointF $pos)
	inherited from QGraphicsItem
	calls Qt method void setPos(const QPointF& pos)

#### Method setPos(Real $x, Real $y)
	inherited from QGraphicsItem
	calls Qt method void setPos(qreal x, qreal y)

#### Method setRect(QRectF $rect)
	calls Qt method void setRect(const QRectF& rect)

#### Method setRect(Real $x, Real $y, Real $w, Real $h)
	calls Qt method void setRect(qreal x, qreal y, qreal w, qreal h)

#### Method setX(Real $x)
	inherited from QGraphicsItem
	calls Qt method void setX(qreal x)

#### Method setY(Real $y)
	inherited from QGraphicsItem
	calls Qt method void setY(qreal y)

#### Method setZValue(Real $z)
	inherited from QGraphicsItem
	calls Qt method void setZValue(qreal z)

#### Method show()
	inherited from QGraphicsItem
	calls Qt method void show()

#### Method x( --> Real)
	inherited from QGraphicsItem
	calls Qt method qreal x()

#### Method y( --> Real)
	inherited from QGraphicsItem
	calls Qt method qreal y()

#### Method zValue( --> Real)
	inherited from QGraphicsItem
	calls Qt method qreal zValue()


Class QGraphicsScene
--------------------
	imported by
		use Qt::QtWidgets::QGraphicsScene;

	inherits QObject



    enum ItemIndexMethod 
    enum SceneLayer 

#### Method activePanel( --> QGraphicsItem)
	calls Qt method QGraphicsItem * activePanel()

#### Method activeWindow( --> QGraphicsWidget)
	calls Qt method QGraphicsWidget * activeWindow()

#### Method addEllipse(Real $x, Real $y, Real $w, Real $h, QPen $pen = QPen.new(), QBrush $brush = QBrush.new() --> QGraphicsEllipseItem)
	calls Qt method QGraphicsEllipseItem * addEllipse(qreal x, qreal y, qreal w, qreal h, const QPen& pen = QPen(), const QBrush& brush = QBrush())

#### Method addEllipse(QRectF $rect, QPen $pen = QPen.new(), QBrush $brush = QBrush.new() --> QGraphicsEllipseItem)
	calls Qt method QGraphicsEllipseItem * addEllipse(const QRectF& rect, const QPen& pen = QPen(), const QBrush& brush = QBrush())

#### Method addItem(QGraphicsItem $item)
	calls Qt method void addItem(QGraphicsItem* item)

#### Method addLine(Real $x1, Real $y1, Real $x2, Real $y2, QPen $pen = QPen.new() --> QGraphicsLineItem)
	calls Qt method QGraphicsLineItem * addLine(qreal x1, qreal y1, qreal x2, qreal y2, const QPen& pen = QPen())

#### Method addLine(QLineF $line, QPen $pen = QPen.new() --> QGraphicsLineItem)
	calls Qt method QGraphicsLineItem * addLine(const QLineF& line, const QPen& pen = QPen())

#### Method addPath(QPainterPath $path, QPen $pen = QPen.new(), QBrush $brush = QBrush.new() --> QGraphicsPathItem)
	calls Qt method QGraphicsPathItem * addPath(const QPainterPath& path, const QPen& pen = QPen(), const QBrush& brush = QBrush())

#### Method addPixmap(QPixmap $pixmap --> QGraphicsPixmapItem)
	calls Qt method QGraphicsPixmapItem * addPixmap(const QPixmap& pixmap)

#### Method addRect(Real $x, Real $y, Real $w, Real $h, QPen $pen = QPen.new(), QBrush $brush = QBrush.new() --> QGraphicsRectItem)
	calls Qt method QGraphicsRectItem * addRect(qreal x, qreal y, qreal w, qreal h, const QPen& pen = QPen(), const QBrush& brush = QBrush())

#### Method addRect(QRectF $rect, QPen $pen = QPen.new(), QBrush $brush = QBrush.new() --> QGraphicsRectItem)
	calls Qt method QGraphicsRectItem * addRect(const QRectF& rect, const QPen& pen = QPen(), const QBrush& brush = QBrush())

#### Method addSimpleText(Str $text, QFont $font = QFont.new() --> QGraphicsSimpleTextItem)
	calls Qt method QGraphicsSimpleTextItem * addSimpleText(const QString& text, const QFont& font = QFont())

#### Method addText(Str $text, QFont $font = QFont.new() --> QGraphicsTextItem)
	calls Qt method QGraphicsTextItem * addText(const QString& text, const QFont& font = QFont())

#### Method addWidget(QWidget $widget, Int $wFlags = Qt::WindowFlags() --> QGraphicsProxyWidget)
	calls Qt method QGraphicsProxyWidget * addWidget(QWidget* widget, Qt::WindowFlags wFlags = Qt::WindowFlags())

#### Method advance()
	[slot] 
	calls Qt method void advance()

#### Method backgroundBrush( --> QBrush)
	calls Qt method QBrush backgroundBrush()

#### Method QGraphicsScene.new(Real $x, Real $y, Real $width, Real $height, QObject $parent = (QObject) --> QGraphicsScene))
	calls Qt method  QGraphicsScene(qreal x, qreal y, qreal width, qreal height, QObject* parent = nullptr)

#### Method QGraphicsScene.new(QObject $parent = (QObject) --> QGraphicsScene))
	calls Qt method  QGraphicsScene(QObject* parent = nullptr)

#### Method height( --> Real)
	calls Qt method qreal height()

#### Method isSortCacheEnabled( --> Bool)
	calls Qt method bool isSortCacheEnabled()

#### Method itemIndexMethod( --> QGraphicsScene::ItemIndexMethod)
	calls Qt method ItemIndexMethod itemIndexMethod()

#### Method itemsBoundingRect( --> QRectF)
	calls Qt method QRectF itemsBoundingRect()

#### Method keyPressEvent(QKeyEvent $event)
	[virtual] [protected] 
	called as Qt method void keyPressEvent(QKeyEvent* event)

#### Method keyReleaseEvent(QKeyEvent $event)
	[virtual] [protected] 
	called as Qt method void keyReleaseEvent(QKeyEvent* event)

#### Method minimumRenderSize( --> Real)
	calls Qt method qreal minimumRenderSize()

#### Method mouseDoubleClickEvent(QGraphicsSceneMouseEvent $event)
	[virtual] [protected] 
	called as Qt method void mouseDoubleClickEvent(QGraphicsSceneMouseEvent* event)

#### Method mouseGrabberItem( --> QGraphicsItem)
	calls Qt method QGraphicsItem * mouseGrabberItem()

#### Method sceneRect( --> QRectF)
	calls Qt method QRectF sceneRect()

#### Method width( --> Real)
	calls Qt method qreal width()


Class QGraphicsSceneEvent
-------------------------
	imported by
		use Qt::QtWidgets::QGraphicsSceneEvent;

	inherits QEvent

	inherited by QGraphicsSceneMouseEvent


WARNING: This class has no constructor. So it can't be used to create an object explicitely.

#### Method accept()
	inherited from QEvent
	calls Qt method void accept()

#### Method ignore()
	inherited from QEvent
	calls Qt method void ignore()

#### Method isAccepted( --> Bool)
	inherited from QEvent
	calls Qt method bool isAccepted()

#### Method spontaneous( --> Bool)
	inherited from QEvent
	calls Qt method bool spontaneous()

#### Method type( --> QEvent::Type)
	inherited from QEvent
	calls Qt method Type type()


Class QGraphicsSceneMouseEvent
------------------------------
	imported by
		use Qt::QtWidgets::QGraphicsSceneMouseEvent;

	inherits QGraphicsSceneEvent




WARNING: This class has no constructor. So it can't be used to create an object explicitely.

#### Method accept()
	inherited from QEvent
	calls Qt method void accept()

#### Method ignore()
	inherited from QEvent
	calls Qt method void ignore()

#### Method isAccepted( --> Bool)
	inherited from QEvent
	calls Qt method bool isAccepted()

#### Method spontaneous( --> Bool)
	inherited from QEvent
	calls Qt method bool spontaneous()

#### Method type( --> QEvent::Type)
	inherited from QEvent
	calls Qt method Type type()


Class QGraphicsSimpleTextItem
-----------------------------
	imported by
		use Qt::QtWidgets::QGraphicsSimpleTextItem;

	inherits QAbstractGraphicsShapeItem




#### Method boundingRect( --> QRectF)
	[virtual] [override] 
	called as Qt method QRectF boundingRect()

#### Method brush( --> QBrush)
	inherited from QAbstractGraphicsShapeItem
	calls Qt method QBrush brush()

#### Method childrenBoundingRect( --> QRectF)
	inherited from QGraphicsItem
	calls Qt method QRectF childrenBoundingRect()

#### Method contains(QPointF $point --> Bool)
	[virtual] inherited from QGraphicsItem
	called as Qt method bool contains(const QPointF& point)

#### Method QGraphicsSimpleTextItem.new(Str $text, QGraphicsItem $parent = (QGraphicsItem) --> QGraphicsSimpleTextItem))
	calls Qt method  QGraphicsSimpleTextItem(const QString& text, QGraphicsItem* parent = nullptr)

#### Method QGraphicsSimpleTextItem.new(QGraphicsItem $parent = (QGraphicsItem) --> QGraphicsSimpleTextItem))
	calls Qt method  QGraphicsSimpleTextItem(QGraphicsItem* parent = nullptr)

#### Method ensureVisible(Real $x, Real $y, Real $w, Real $h, Int $xmargin = 50, Int $ymargin = 50)
	inherited from QGraphicsItem
	calls Qt method void ensureVisible(qreal x, qreal y, qreal w, qreal h, int xmargin = 50, int ymargin = 50)

#### Method ensureVisible(QRectF $rect = QRectF.new(), Int $xmargin = 50, Int $ymargin = 50)
	inherited from QGraphicsItem
	calls Qt method void ensureVisible(const QRectF& rect = QRectF(), int xmargin = 50, int ymargin = 50)

#### Method font( --> QFont)
	calls Qt method QFont font()

#### Method hide()
	inherited from QGraphicsItem
	calls Qt method void hide()

#### Method pen( --> QPen)
	inherited from QAbstractGraphicsShapeItem
	calls Qt method QPen pen()

#### Method prepareGeometryChange()
	[protected] inherited from QGraphicsItem
	calls Qt method void prepareGeometryChange()

#### Method sceneBoundingRect( --> QRectF)
	inherited from QGraphicsItem
	calls Qt method QRectF sceneBoundingRect()

#### Method setBrush(QBrush $brush)
	inherited from QAbstractGraphicsShapeItem
	calls Qt method void setBrush(const QBrush& brush)

#### Method setEnabled(Bool $enabled)
	inherited from QGraphicsItem
	calls Qt method void setEnabled(bool enabled)

#### Method setFont(QFont $font)
	calls Qt method void setFont(const QFont& font)

#### Method setParentItem(QGraphicsItem $parent)
	inherited from QGraphicsItem
	calls Qt method void setParentItem(QGraphicsItem* parent)

#### Method setPen(QPen $pen)
	inherited from QAbstractGraphicsShapeItem
	calls Qt method void setPen(const QPen& pen)

#### Method setPos(Real $x, Real $y)
	inherited from QGraphicsItem
	calls Qt method void setPos(qreal x, qreal y)

#### Method setPos(QPointF $pos)
	inherited from QGraphicsItem
	calls Qt method void setPos(const QPointF& pos)

#### Method setText(Str $text)
	calls Qt method void setText(const QString& text)

#### Method setX(Real $x)
	inherited from QGraphicsItem
	calls Qt method void setX(qreal x)

#### Method setY(Real $y)
	inherited from QGraphicsItem
	calls Qt method void setY(qreal y)

#### Method setZValue(Real $z)
	inherited from QGraphicsItem
	calls Qt method void setZValue(qreal z)

#### Method show()
	inherited from QGraphicsItem
	calls Qt method void show()

#### Method text( --> Str)
	calls Qt method QString text()

#### Method x( --> Real)
	inherited from QGraphicsItem
	calls Qt method qreal x()

#### Method y( --> Real)
	inherited from QGraphicsItem
	calls Qt method qreal y()

#### Method zValue( --> Real)
	inherited from QGraphicsItem
	calls Qt method qreal zValue()


Class QGraphicsTextItem
-----------------------
	imported by
		use Qt::QtWidgets::QGraphicsTextItem;

	inherits QGraphicsObject




#### Method adjustSize()
	calls Qt method void adjustSize()

#### Method boundingRect( --> QRectF)
	[virtual] [override] 
	called as Qt method QRectF boundingRect()

#### Method childrenBoundingRect( --> QRectF)
	inherited from QGraphicsItem
	calls Qt method QRectF childrenBoundingRect()

#### Method contains(QPointF $point --> Bool)
	[virtual] inherited from QGraphicsItem
	called as Qt method bool contains(const QPointF& point)

#### Method QGraphicsTextItem.new(QGraphicsItem $parent = (QGraphicsItem) --> QGraphicsTextItem))
	calls Qt method  QGraphicsTextItem(QGraphicsItem* parent = nullptr)

#### Method QGraphicsTextItem.new(Str $text, QGraphicsItem $parent = (QGraphicsItem) --> QGraphicsTextItem))
	calls Qt method  QGraphicsTextItem(const QString& text, QGraphicsItem* parent = nullptr)

#### Method ensureVisible(Real $x, Real $y, Real $w, Real $h, Int $xmargin = 50, Int $ymargin = 50)
	inherited from QGraphicsItem
	calls Qt method void ensureVisible(qreal x, qreal y, qreal w, qreal h, int xmargin = 50, int ymargin = 50)

#### Method ensureVisible(QRectF $rect = QRectF.new(), Int $xmargin = 50, Int $ymargin = 50)
	inherited from QGraphicsItem
	calls Qt method void ensureVisible(const QRectF& rect = QRectF(), int xmargin = 50, int ymargin = 50)

#### Method font( --> QFont)
	calls Qt method QFont font()

#### Method hide()
	inherited from QGraphicsItem
	calls Qt method void hide()

#### Method prepareGeometryChange()
	[protected] inherited from QGraphicsItem
	calls Qt method void prepareGeometryChange()

#### Method sceneBoundingRect( --> QRectF)
	inherited from QGraphicsItem
	calls Qt method QRectF sceneBoundingRect()

#### Method setEnabled(Bool $enabled)
	inherited from QGraphicsItem
	calls Qt method void setEnabled(bool enabled)

#### Method setFont(QFont $font)
	calls Qt method void setFont(const QFont& font)

#### Method setParentItem(QGraphicsItem $parent)
	inherited from QGraphicsItem
	calls Qt method void setParentItem(QGraphicsItem* parent)

#### Method setPlainText(Str $text)
	calls Qt method void setPlainText(const QString& text)

#### Method setPos(Real $x, Real $y)
	inherited from QGraphicsItem
	calls Qt method void setPos(qreal x, qreal y)

#### Method setPos(QPointF $pos)
	inherited from QGraphicsItem
	calls Qt method void setPos(const QPointF& pos)

#### Method setX(Real $x)
	inherited from QGraphicsItem
	calls Qt method void setX(qreal x)

#### Method setY(Real $y)
	inherited from QGraphicsItem
	calls Qt method void setY(qreal y)

#### Method setZValue(Real $z)
	inherited from QGraphicsItem
	calls Qt method void setZValue(qreal z)

#### Method show()
	inherited from QGraphicsItem
	calls Qt method void show()

#### Method x( --> Real)
	inherited from QGraphicsItem
	calls Qt method qreal x()

#### Method y( --> Real)
	inherited from QGraphicsItem
	calls Qt method qreal y()

#### Method zValue( --> Real)
	inherited from QGraphicsItem
	calls Qt method qreal zValue()


Class QGraphicsView
-------------------
	imported by
		use Qt::QtWidgets::QGraphicsView;

	inherits QAbstractScrollArea




#### Method activateWindow()
	inherited from QWidget
	calls Qt method void activateWindow()

#### Method backgroundBrush( --> QBrush)
	calls Qt method QBrush backgroundBrush()

#### Method centerOn(QPointF $pos)
	calls Qt method void centerOn(const QPointF& pos)

#### Method centerOn(Real $x, Real $y)
	calls Qt method void centerOn(qreal x, qreal y)

#### Method centerOn(QGraphicsItem $item)
	calls Qt method void centerOn(const QGraphicsItem* item)

#### Method closeEvent(QCloseEvent $event)
	[virtual] [protected] inherited from QWidget
	called as Qt method void closeEvent(QCloseEvent* event)

#### Method contentsRect( --> QRect)
	inherited from QWidget
	calls Qt method QRect contentsRect()

#### Method contextMenuEvent(QContextMenuEvent $event)
	[protected] [override] 
	calls Qt method void contextMenuEvent(QContextMenuEvent* event)

#### Method QGraphicsView.new(QGraphicsScene $scene, QWidget $parent = (QWidget) --> QGraphicsView))
	calls Qt method  QGraphicsView(QGraphicsScene* scene, QWidget* parent = nullptr)

#### Method QGraphicsView.new(QWidget $parent = (QWidget) --> QGraphicsView))
	calls Qt method  QGraphicsView(QWidget* parent = nullptr)

#### Method drawBackground(QPainter $painter, QRectF $rect)
	[virtual] [protected] 
	called as Qt method void drawBackground(QPainter* painter, const QRectF& rect)

#### Method drawForeground(QPainter $painter, QRectF $rect)
	[virtual] [protected] 
	called as Qt method void drawForeground(QPainter* painter, const QRectF& rect)

#### Method ensureVisible(Real $x, Real $y, Real $w, Real $h, Int $xmargin = 50, Int $ymargin = 50)
	calls Qt method void ensureVisible(qreal x, qreal y, qreal w, qreal h, int xmargin = 50, int ymargin = 50)

#### Method ensureVisible(QRectF $rect, Int $xmargin = 50, Int $ymargin = 50)
	calls Qt method void ensureVisible(const QRectF& rect, int xmargin = 50, int ymargin = 50)

#### Method ensureVisible(QGraphicsItem $item, Int $xmargin = 50, Int $ymargin = 50)
	calls Qt method void ensureVisible(const QGraphicsItem* item, int xmargin = 50, int ymargin = 50)

#### Method enterEvent(QEvent $event)
	[virtual] [protected] inherited from QWidget
	called as Qt method void enterEvent(QEvent* event)

#### Method event(QEvent $event --> Bool)
	[protected] [override] 
	calls Qt method bool event(QEvent* event)

#### Method fitInView(Real $x, Real $y, Real $w, Real $h, Qt::AspectRatioMode $aspectRadioMode = Qt::IgnoreAspectRatio)
	calls Qt method void fitInView(qreal x, qreal y, qreal w, qreal h, Qt::AspectRatioMode aspectRadioMode = Qt::IgnoreAspectRatio)

#### Method fitInView(QRectF $rect, Qt::AspectRatioMode $aspectRadioMode = Qt::IgnoreAspectRatio)
	calls Qt method void fitInView(const QRectF& rect, Qt::AspectRatioMode aspectRadioMode = Qt::IgnoreAspectRatio)

#### Method font( --> QFont)
	inherited from QWidget
	calls Qt method QFont & font()

#### Method frameRect( --> QRect)
	inherited from QFrame
	calls Qt method QRect frameRect()

#### Method frameShadow( --> QFrame::Shadow)
	inherited from QFrame
	calls Qt method Shadow frameShadow()

#### Method frameShape( --> QFrame::Shape)
	inherited from QFrame
	calls Qt method Shape frameShape()

#### Method frameStyle( --> Int)
	inherited from QFrame
	calls Qt method int frameStyle()

#### Method frameWidth( --> Int)
	inherited from QFrame
	calls Qt method int frameWidth()

#### Method hasHeightForWidth( --> Bool)
	[virtual] inherited from QWidget
	called as Qt method bool hasHeightForWidth()

#### Method hasMouseTracking( --> Bool)
	inherited from QWidget
	calls Qt method bool hasMouseTracking()

#### Method height( --> Int)
	inherited from QWidget
	calls Qt method int height()

#### Method heightForWidth(Int $arg1 --> Int)
	[virtual] inherited from QWidget
	called as Qt method int heightForWidth(int arg1)

#### Method hide()
	[slot] inherited from QWidget
	calls Qt method void hide()

#### Method invalidateScene(QRectF $rect = QRectF.new(), Int $layers = QGraphicsScene::AllLayers)
	[slot] 
	calls Qt method void invalidateScene(const QRectF& rect = QRectF(), QGraphicsScene::SceneLayers layers = QGraphicsScene::AllLayers)

#### Method isActiveWindow( --> Bool)
	inherited from QWidget
	calls Qt method bool isActiveWindow()

#### Method isInteractive( --> Bool)
	calls Qt method bool isInteractive()

#### Method isTransformed( --> Bool)
	calls Qt method bool isTransformed()

#### Method itemAt(Int $x, Int $y --> QGraphicsItem)
	calls Qt method QGraphicsItem * itemAt(int x, int y)

#### Method itemAt(QPoint $pos --> QGraphicsItem)
	calls Qt method QGraphicsItem * itemAt(const QPoint& pos)

#### Method keyPressEvent(QKeyEvent $event)
	[protected] [override] 
	calls Qt method void keyPressEvent(QKeyEvent* event)

#### Method keyReleaseEvent(QKeyEvent $event)
	[protected] [override] 
	calls Qt method void keyReleaseEvent(QKeyEvent* event)

#### Method leaveEvent(QEvent $event)
	[virtual] [protected] inherited from QWidget
	called as Qt method void leaveEvent(QEvent* event)

#### Method lineWidth( --> Int)
	inherited from QFrame
	calls Qt method int lineWidth()

#### Method mapFrom(QWidget $arg1, QPoint $arg2 --> QPoint)
	inherited from QWidget
	calls Qt method QPoint mapFrom(const QWidget* arg1, const QPoint& arg2)

#### Method mapFromGlobal(QPoint $arg1 --> QPoint)
	inherited from QWidget
	calls Qt method QPoint mapFromGlobal(const QPoint& arg1)

#### Method mapFromParent(QPoint $arg1 --> QPoint)
	inherited from QWidget
	calls Qt method QPoint mapFromParent(const QPoint& arg1)

#### Method mapFromScene(QPointF $point --> QPoint)
	calls Qt method QPoint mapFromScene(const QPointF& point)

#### Method mapTo(QWidget $arg1, QPoint $arg2 --> QPoint)
	inherited from QWidget
	calls Qt method QPoint mapTo(const QWidget* arg1, const QPoint& arg2)

#### Method mapToGlobal(QPoint $arg1 --> QPoint)
	inherited from QWidget
	calls Qt method QPoint mapToGlobal(const QPoint& arg1)

#### Method mapToParent(QPoint $arg1 --> QPoint)
	inherited from QWidget
	calls Qt method QPoint mapToParent(const QPoint& arg1)

#### Method midLineWidth( --> Int)
	inherited from QFrame
	calls Qt method int midLineWidth()

#### Method mouseMoveEvent(QMouseEvent $event)
	[virtual] [protected] inherited from QWidget
	called as Qt method void mouseMoveEvent(QMouseEvent* event)

#### Method mousePressEvent(QMouseEvent $event)
	[virtual] [protected] inherited from QWidget
	called as Qt method void mousePressEvent(QMouseEvent* event)

#### Method mouseReleaseEvent(QMouseEvent $event)
	[virtual] [protected] inherited from QWidget
	called as Qt method void mouseReleaseEvent(QMouseEvent* event)

#### Method paintEvent(QPaintEvent $event)
	[virtual] [protected] inherited from QWidget
	called as Qt method void paintEvent(QPaintEvent* event)

#### Method render(QPaintDevice $target, QPoint $targetOffset = QPoint.new(), QRegion $sourceRegion = QRegion.new(), Int $renderFlags = RenderFlags(DrawWindowBackground +| DrawChildren))
	inherited from QWidget
	calls Qt method void render(QPaintDevice* target, const QPoint& targetOffset = QPoint(), const QRegion& sourceRegion = QRegion(), RenderFlags renderFlags = RenderFlags(DrawWindowBackground | DrawChildren))

#### Method repaint(Int $x, Int $y, Int $w, Int $h)
	inherited from QWidget
	calls Qt method void repaint(int x, int y, int w, int h)

#### Method repaint()
	[slot] inherited from QWidget
	calls Qt method void repaint()

#### Method resizeEvent(QResizeEvent $event)
	[virtual] [protected] inherited from QWidget
	called as Qt method void resizeEvent(QResizeEvent* event)

#### Method scene( --> QGraphicsScene)
	calls Qt method QGraphicsScene * scene()

#### Method sceneRect( --> QRectF)
	calls Qt method QRectF sceneRect()

#### Method setDisabled(Bool $arg1)
	[slot] inherited from QWidget
	calls Qt method void setDisabled(bool arg1)

#### Method setFixedHeight(Int $h)
	inherited from QWidget
	calls Qt method void setFixedHeight(int h)

#### Method setFixedSize(Int $w, Int $h)
	inherited from QWidget
	calls Qt method void setFixedSize(int w, int h)

#### Method setFixedWidth(Int $w)
	inherited from QWidget
	calls Qt method void setFixedWidth(int w)

#### Method setFont(QFont $arg1)
	inherited from QWidget
	calls Qt method void setFont(const QFont& arg1)

#### Method setFrameRect(QRect $arg1)
	inherited from QFrame
	calls Qt method void setFrameRect(const QRect& arg1)

#### Method setFrameShadow(QFrame::Shadow $arg1)
	inherited from QFrame
	calls Qt method void setFrameShadow(Shadow arg1)

#### Method setFrameShape(QFrame::Shape $arg1)
	inherited from QFrame
	calls Qt method void setFrameShape(Shape arg1)

#### Method setFrameStyle(Int $arg1)
	inherited from QFrame
	calls Qt method void setFrameStyle(int arg1)

#### Method setLayout(QLayout $arg1)
	inherited from QWidget
	calls Qt method void setLayout(QLayout* arg1)

#### Method setLineWidth(Int $arg1)
	inherited from QFrame
	calls Qt method void setLineWidth(int arg1)

#### Method setMaximumHeight(Int $maxh)
	inherited from QWidget
	calls Qt method void setMaximumHeight(int maxh)

#### Method setMaximumSize(Int $maxw, Int $maxh)
	inherited from QWidget
	calls Qt method void setMaximumSize(int maxw, int maxh)

#### Method setMaximumWidth(Int $maxw)
	inherited from QWidget
	calls Qt method void setMaximumWidth(int maxw)

#### Method setMidLineWidth(Int $arg1)
	inherited from QFrame
	calls Qt method void setMidLineWidth(int arg1)

#### Method setMinimumHeight(Int $minh)
	inherited from QWidget
	calls Qt method void setMinimumHeight(int minh)

#### Method setMinimumSize(Int $minw, Int $minh)
	inherited from QWidget
	calls Qt method void setMinimumSize(int minw, int minh)

#### Method setMinimumWidth(Int $minw)
	inherited from QWidget
	calls Qt method void setMinimumWidth(int minw)

#### Method setMouseTracking(Bool $enable)
	inherited from QWidget
	calls Qt method void setMouseTracking(bool enable)

#### Method setScene(QGraphicsScene $scene)
	calls Qt method void setScene(QGraphicsScene* scene)

#### Method setSceneRect(Real $x, Real $y, Real $w, Real $h)
	calls Qt method void setSceneRect(qreal x, qreal y, qreal w, qreal h)

#### Method setSceneRect(QRectF $rect)
	calls Qt method void setSceneRect(const QRectF& rect)

#### Method setSizePolicy(QSizePolicy::Policy $horizontal, QSizePolicy::Policy $vertical)
	inherited from QWidget
	calls Qt method void setSizePolicy(QSizePolicy::Policy horizontal, QSizePolicy::Policy vertical)

#### Method setToolTip(Str $arg1)
	inherited from QWidget
	calls Qt method void setToolTip(const QString& arg1)

#### Method setWindowTitle(Str $arg1)
	[slot] inherited from QWidget
	calls Qt method void setWindowTitle(const QString& arg1)

#### Method show()
	[slot] inherited from QWidget
	calls Qt method void show()

#### Method sizeHint( --> QSize)
	[override] 
	calls Qt method QSize sizeHint()

#### Method update()
	[slot] inherited from QWidget
	calls Qt method void update()

#### Method update(Int $x, Int $y, Int $w, Int $h)
	inherited from QWidget
	calls Qt method void update(int x, int y, int w, int h)

#### Method width( --> Int)
	inherited from QWidget
	calls Qt method int width()


Class QGraphicsWidget
---------------------
	imported by
		use Qt::QtWidgets::QGraphicsWidget;

	inherits QGraphicsLayoutItem
	inherits QGraphicsObject

	inherited by QGraphicsProxyWidget


WARNING: This class has no constructor. So it can't be used to create an object explicitely.

#### Method childrenBoundingRect( --> QRectF)
	inherited from QGraphicsItem
	calls Qt method QRectF childrenBoundingRect()

#### Method contains(QPointF $point --> Bool)
	[virtual] inherited from QGraphicsItem
	called as Qt method bool contains(const QPointF& point)

#### Method ensureVisible(QRectF $rect = QRectF.new(), Int $xmargin = 50, Int $ymargin = 50)
	inherited from QGraphicsItem
	calls Qt method void ensureVisible(const QRectF& rect = QRectF(), int xmargin = 50, int ymargin = 50)

#### Method ensureVisible(Real $x, Real $y, Real $w, Real $h, Int $xmargin = 50, Int $ymargin = 50)
	inherited from QGraphicsItem
	calls Qt method void ensureVisible(qreal x, qreal y, qreal w, qreal h, int xmargin = 50, int ymargin = 50)

#### Method hide()
	inherited from QGraphicsItem
	calls Qt method void hide()

#### Method prepareGeometryChange()
	[protected] inherited from QGraphicsItem
	calls Qt method void prepareGeometryChange()

#### Method sceneBoundingRect( --> QRectF)
	inherited from QGraphicsItem
	calls Qt method QRectF sceneBoundingRect()

#### Method setEnabled(Bool $enabled)
	inherited from QGraphicsItem
	calls Qt method void setEnabled(bool enabled)

#### Method setParentItem(QGraphicsItem $parent)
	inherited from QGraphicsItem
	calls Qt method void setParentItem(QGraphicsItem* parent)

#### Method setPos(Real $x, Real $y)
	inherited from QGraphicsItem
	calls Qt method void setPos(qreal x, qreal y)

#### Method setPos(QPointF $pos)
	inherited from QGraphicsItem
	calls Qt method void setPos(const QPointF& pos)

#### Method setX(Real $x)
	inherited from QGraphicsItem
	calls Qt method void setX(qreal x)

#### Method setY(Real $y)
	inherited from QGraphicsItem
	calls Qt method void setY(qreal y)

#### Method setZValue(Real $z)
	inherited from QGraphicsItem
	calls Qt method void setZValue(qreal z)

#### Method show()
	inherited from QGraphicsItem
	calls Qt method void show()

#### Method x( --> Real)
	inherited from QGraphicsItem
	calls Qt method qreal x()

#### Method y( --> Real)
	inherited from QGraphicsItem
	calls Qt method qreal y()

#### Method zValue( --> Real)
	inherited from QGraphicsItem
	calls Qt method qreal zValue()


Class QGridLayout
-----------------
	imported by
		use Qt::QtWidgets::QGridLayout;

	inherits QLayout




#### Method addLayout(QLayout $arg1, Int $row, Int $column, Int $rowSpan, Int $columnSpan, Int $arg6 = Qt::Alignment())
	calls Qt method void addLayout(QLayout* arg1, int row, int column, int rowSpan, int columnSpan, Qt::Alignment arg6 = Qt::Alignment())

#### Method addLayout(QLayout $arg1, Int $row, Int $column, Int $arg4 = Qt::Alignment())
	calls Qt method void addLayout(QLayout* arg1, int row, int column, Qt::Alignment arg4 = Qt::Alignment())

#### Method addWidget(QWidget $w)
	inherited from QLayout
	calls Qt method void addWidget(QWidget* w)

#### Method addWidget(QWidget $arg1, Int $row, Int $column, Int $rowSpan, Int $columnSpan, Int $arg6 = Qt::Alignment())
	calls Qt method void addWidget(QWidget* arg1, int row, int column, int rowSpan, int columnSpan, Qt::Alignment arg6 = Qt::Alignment())

#### Method addWidget(QWidget $arg1, Int $row, Int $column, Int $arg4 = Qt::Alignment())
	calls Qt method void addWidget(QWidget* arg1, int row, int column, Qt::Alignment arg4 = Qt::Alignment())

#### Method cellRect(Int $row, Int $column --> QRect)
	calls Qt method QRect cellRect(int row, int column)

#### Method columnCount( --> Int)
	calls Qt method int columnCount()

#### Method columnMinimumWidth(Int $column --> Int)
	calls Qt method int columnMinimumWidth(int column)

#### Method columnStretch(Int $column --> Int)
	calls Qt method int columnStretch(int column)

#### Method QGridLayout.new( --> QGridLayout))
	calls Qt method  QGridLayout()

#### Method QGridLayout.new(QWidget $parent --> QGridLayout))
	calls Qt method  QGridLayout(QWidget* parent)

#### Method horizontalSpacing( --> Int)
	calls Qt method int horizontalSpacing()

#### Method rowCount( --> Int)
	calls Qt method int rowCount()

#### Method rowMinimumHeight(Int $row --> Int)
	calls Qt method int rowMinimumHeight(int row)

#### Method rowStretch(Int $row --> Int)
	calls Qt method int rowStretch(int row)

#### Method setAlignment(QWidget $w, Int $alignment --> Bool)
	inherited from QLayout
	calls Qt method bool setAlignment(QWidget* w, Qt::Alignment alignment)

#### Method setAlignment(QLayout $l, Int $alignment --> Bool)
	inherited from QLayout
	calls Qt method bool setAlignment(QLayout* l, Qt::Alignment alignment)

#### Method setColumnMinimumWidth(Int $column, Int $minSize)
	calls Qt method void setColumnMinimumWidth(int column, int minSize)

#### Method setColumnStretch(Int $column, Int $stretch)
	calls Qt method void setColumnStretch(int column, int stretch)

#### Method setContentsMargins(Int $left, Int $top, Int $right, Int $bottom)
	inherited from QLayout
	calls Qt method void setContentsMargins(int left, int top, int right, int bottom)

#### Method setHorizontalSpacing(Int $spacing)
	calls Qt method void setHorizontalSpacing(int spacing)

#### Method setRowMinimumHeight(Int $row, Int $minSize)
	calls Qt method void setRowMinimumHeight(int row, int minSize)

#### Method setRowStretch(Int $row, Int $stretch)
	calls Qt method void setRowStretch(int row, int stretch)

#### Method setSpacing(Int $spacing)
	calls Qt method void setSpacing(int spacing)

#### Method setVerticalSpacing(Int $spacing)
	calls Qt method void setVerticalSpacing(int spacing)

#### Method spacing( --> Int)
	calls Qt method int spacing()

#### Method verticalSpacing( --> Int)
	calls Qt method int verticalSpacing()


Class QGroupBox
---------------
	imported by
		use Qt::QtWidgets::QGroupBox;

	inherits QWidget




#### Method activateWindow()
	inherited from QWidget
	calls Qt method void activateWindow()

#### Method clicked(Bool $checked = False)
	[signal] 
	calls Qt method void clicked(bool checked = false)

#### Method closeEvent(QCloseEvent $event)
	[virtual] [protected] inherited from QWidget
	called as Qt method void closeEvent(QCloseEvent* event)

#### Method contentsRect( --> QRect)
	inherited from QWidget
	calls Qt method QRect contentsRect()

#### Method QGroupBox.new(Str $title, QWidget $parent = (QWidget) --> QGroupBox))
	calls Qt method  QGroupBox(const QString& title, QWidget* parent = nullptr)

#### Method QGroupBox.new(QWidget $parent = (QWidget) --> QGroupBox))
	calls Qt method  QGroupBox(QWidget* parent = nullptr)

#### Method enterEvent(QEvent $event)
	[virtual] [protected] inherited from QWidget
	called as Qt method void enterEvent(QEvent* event)

#### Method font( --> QFont)
	inherited from QWidget
	calls Qt method QFont & font()

#### Method hasHeightForWidth( --> Bool)
	[virtual] inherited from QWidget
	called as Qt method bool hasHeightForWidth()

#### Method hasMouseTracking( --> Bool)
	inherited from QWidget
	calls Qt method bool hasMouseTracking()

#### Method height( --> Int)
	inherited from QWidget
	calls Qt method int height()

#### Method heightForWidth(Int $arg1 --> Int)
	[virtual] inherited from QWidget
	called as Qt method int heightForWidth(int arg1)

#### Method hide()
	[slot] inherited from QWidget
	calls Qt method void hide()

#### Method isActiveWindow( --> Bool)
	inherited from QWidget
	calls Qt method bool isActiveWindow()

#### Method isCheckable( --> Bool)
	calls Qt method bool isCheckable()

#### Method isChecked( --> Bool)
	calls Qt method bool isChecked()

#### Method isFlat( --> Bool)
	calls Qt method bool isFlat()

#### Method leaveEvent(QEvent $event)
	[virtual] [protected] inherited from QWidget
	called as Qt method void leaveEvent(QEvent* event)

#### Method mapFrom(QWidget $arg1, QPoint $arg2 --> QPoint)
	inherited from QWidget
	calls Qt method QPoint mapFrom(const QWidget* arg1, const QPoint& arg2)

#### Method mapFromGlobal(QPoint $arg1 --> QPoint)
	inherited from QWidget
	calls Qt method QPoint mapFromGlobal(const QPoint& arg1)

#### Method mapFromParent(QPoint $arg1 --> QPoint)
	inherited from QWidget
	calls Qt method QPoint mapFromParent(const QPoint& arg1)

#### Method mapTo(QWidget $arg1, QPoint $arg2 --> QPoint)
	inherited from QWidget
	calls Qt method QPoint mapTo(const QWidget* arg1, const QPoint& arg2)

#### Method mapToGlobal(QPoint $arg1 --> QPoint)
	inherited from QWidget
	calls Qt method QPoint mapToGlobal(const QPoint& arg1)

#### Method mapToParent(QPoint $arg1 --> QPoint)
	inherited from QWidget
	calls Qt method QPoint mapToParent(const QPoint& arg1)

#### Method mouseMoveEvent(QMouseEvent $event)
	[virtual] [protected] inherited from QWidget
	called as Qt method void mouseMoveEvent(QMouseEvent* event)

#### Method mousePressEvent(QMouseEvent $event)
	[virtual] [protected] inherited from QWidget
	called as Qt method void mousePressEvent(QMouseEvent* event)

#### Method mouseReleaseEvent(QMouseEvent $event)
	[virtual] [protected] inherited from QWidget
	called as Qt method void mouseReleaseEvent(QMouseEvent* event)

#### Method paintEvent(QPaintEvent $event)
	[virtual] [protected] inherited from QWidget
	called as Qt method void paintEvent(QPaintEvent* event)

#### Method render(QPaintDevice $target, QPoint $targetOffset = QPoint.new(), QRegion $sourceRegion = QRegion.new(), Int $renderFlags = RenderFlags(DrawWindowBackground +| DrawChildren))
	inherited from QWidget
	calls Qt method void render(QPaintDevice* target, const QPoint& targetOffset = QPoint(), const QRegion& sourceRegion = QRegion(), RenderFlags renderFlags = RenderFlags(DrawWindowBackground | DrawChildren))

#### Method repaint(Int $x, Int $y, Int $w, Int $h)
	inherited from QWidget
	calls Qt method void repaint(int x, int y, int w, int h)

#### Method repaint()
	[slot] inherited from QWidget
	calls Qt method void repaint()

#### Method resizeEvent(QResizeEvent $event)
	[virtual] [protected] inherited from QWidget
	called as Qt method void resizeEvent(QResizeEvent* event)

#### Method setAlignment(Int $alignment)
	calls Qt method void setAlignment(int alignment)

#### Method setCheckable(Bool $checkable)
	calls Qt method void setCheckable(bool checkable)

#### Method setChecked(Bool $checked)
	[slot] 
	calls Qt method void setChecked(bool checked)

#### Method setDisabled(Bool $arg1)
	[slot] inherited from QWidget
	calls Qt method void setDisabled(bool arg1)

#### Method setFixedHeight(Int $h)
	inherited from QWidget
	calls Qt method void setFixedHeight(int h)

#### Method setFixedSize(Int $w, Int $h)
	inherited from QWidget
	calls Qt method void setFixedSize(int w, int h)

#### Method setFixedWidth(Int $w)
	inherited from QWidget
	calls Qt method void setFixedWidth(int w)

#### Method setFlat(Bool $flat)
	calls Qt method void setFlat(bool flat)

#### Method setFont(QFont $arg1)
	inherited from QWidget
	calls Qt method void setFont(const QFont& arg1)

#### Method setLayout(QLayout $arg1)
	inherited from QWidget
	calls Qt method void setLayout(QLayout* arg1)

#### Method setMaximumHeight(Int $maxh)
	inherited from QWidget
	calls Qt method void setMaximumHeight(int maxh)

#### Method setMaximumSize(Int $maxw, Int $maxh)
	inherited from QWidget
	calls Qt method void setMaximumSize(int maxw, int maxh)

#### Method setMaximumWidth(Int $maxw)
	inherited from QWidget
	calls Qt method void setMaximumWidth(int maxw)

#### Method setMinimumHeight(Int $minh)
	inherited from QWidget
	calls Qt method void setMinimumHeight(int minh)

#### Method setMinimumSize(Int $minw, Int $minh)
	inherited from QWidget
	calls Qt method void setMinimumSize(int minw, int minh)

#### Method setMinimumWidth(Int $minw)
	inherited from QWidget
	calls Qt method void setMinimumWidth(int minw)

#### Method setMouseTracking(Bool $enable)
	inherited from QWidget
	calls Qt method void setMouseTracking(bool enable)

#### Method setSizePolicy(QSizePolicy::Policy $horizontal, QSizePolicy::Policy $vertical)
	inherited from QWidget
	calls Qt method void setSizePolicy(QSizePolicy::Policy horizontal, QSizePolicy::Policy vertical)

#### Method setTitle(Str $title)
	calls Qt method void setTitle(const QString& title)

#### Method setToolTip(Str $arg1)
	inherited from QWidget
	calls Qt method void setToolTip(const QString& arg1)

#### Method setWindowTitle(Str $arg1)
	[slot] inherited from QWidget
	calls Qt method void setWindowTitle(const QString& arg1)

#### Method show()
	[slot] inherited from QWidget
	calls Qt method void show()

#### Method title( --> Str)
	calls Qt method QString title()

#### Method toggled(Bool $arg1)
	[signal] 
	calls Qt method void toggled(bool arg1)

#### Method update()
	[slot] inherited from QWidget
	calls Qt method void update()

#### Method update(Int $x, Int $y, Int $w, Int $h)
	inherited from QWidget
	calls Qt method void update(int x, int y, int w, int h)

#### Method width( --> Int)
	inherited from QWidget
	calls Qt method int width()


Class QGuiApplication
---------------------
	imported by
		use Qt::QtWidgets::QGuiApplication;

	inherits QCoreApplication




WARNING: This class has no constructor. So it can't be used to create an object explicitely.

#### Method quit()
	[slot] [static] inherited from QCoreApplication
	calls Qt method void quit()

#### Method sendEvent(QObject $receiver, QEvent $event --> Bool)
	[static] inherited from QCoreApplication
	calls Qt method bool sendEvent(QObject* receiver, QEvent* event)


Class QHBoxLayout
-----------------
	imported by
		use Qt::QtWidgets::QHBoxLayout;

	inherits QBoxLayout




#### Method addLayout(QLayout $layout, Int $stretch = 0)
	inherited from QBoxLayout
	calls Qt method void addLayout(QLayout* layout, int stretch = 0)

#### Method addWidget(QWidget $w)
	inherited from QLayout
	calls Qt method void addWidget(QWidget* w)

#### Method QHBoxLayout.new( --> QHBoxLayout))
	calls Qt method  QHBoxLayout()

#### Method setAlignment(QWidget $w, Int $alignment --> Bool)
	inherited from QLayout
	calls Qt method bool setAlignment(QWidget* w, Qt::Alignment alignment)

#### Method setAlignment(QLayout $l, Int $alignment --> Bool)
	inherited from QLayout
	calls Qt method bool setAlignment(QLayout* l, Qt::Alignment alignment)

#### Method setContentsMargins(Int $left, Int $top, Int $right, Int $bottom)
	inherited from QLayout
	calls Qt method void setContentsMargins(int left, int top, int right, int bottom)

#### Method setSpacing(Int $spacing)
	inherited from QBoxLayout
	calls Qt method void setSpacing(int spacing)

#### Method setStretch(Int $index, Int $stretch)
	inherited from QBoxLayout
	calls Qt method void setStretch(int index, int stretch)

#### Method setStretchFactor(QWidget $w, Int $stretch --> Bool)
	inherited from QBoxLayout
	calls Qt method bool setStretchFactor(QWidget* w, int stretch)

#### Method setStretchFactor(QLayout $l, Int $stretch --> Bool)
	inherited from QBoxLayout
	calls Qt method bool setStretchFactor(QLayout* l, int stretch)

#### Method spacing( --> Int)
	inherited from QBoxLayout
	calls Qt method int spacing()

#### Method stretch(Int $index --> Int)
	inherited from QBoxLayout
	calls Qt method int stretch(int index)


Class QImage
------------
	imported by
		use Qt::QtWidgets::QImage;

	inherits QPaintDevice



    enum Format 

#### Method QImage.new(Int $width, Int $height, QImage::Format $format --> QImage))
	calls Qt method  QImage(int width, int height, Format format)

#### Method fill(QColor $color)
	calls Qt method void fill(const QColor& color)

#### Method height( --> Int)
	calls Qt method int height()

#### Method pixelColor(Int $x, Int $y --> QColor)
	calls Qt method QColor pixelColor(int x, int y)

#### Method width( --> Int)
	calls Qt method int width()


Class QInputEvent
-----------------
	imported by
		use Qt::QtWidgets::QInputEvent;

	inherits QEvent

	inherited by QContextMenuEvent, QKeyEvent, QMouseEvent


WARNING: This class has no constructor. So it can't be used to create an object explicitely.

#### Method accept()
	inherited from QEvent
	calls Qt method void accept()

#### Method ignore()
	inherited from QEvent
	calls Qt method void ignore()

#### Method isAccepted( --> Bool)
	inherited from QEvent
	calls Qt method bool isAccepted()

#### Method spontaneous( --> Bool)
	inherited from QEvent
	calls Qt method bool spontaneous()

#### Method type( --> QEvent::Type)
	inherited from QEvent
	calls Qt method Type type()


Class QKeyEvent
---------------
	imported by
		use Qt::QtWidgets::QKeyEvent;

	inherits QInputEvent




WARNING: This class has no constructor. So it can't be used to create an object explicitely.

#### Method accept()
	inherited from QEvent
	calls Qt method void accept()

#### Method ignore()
	inherited from QEvent
	calls Qt method void ignore()

#### Method isAccepted( --> Bool)
	inherited from QEvent
	calls Qt method bool isAccepted()

#### Method spontaneous( --> Bool)
	inherited from QEvent
	calls Qt method bool spontaneous()

#### Method type( --> QEvent::Type)
	inherited from QEvent
	calls Qt method Type type()


Class QLabel
------------
	imported by
		use Qt::QtWidgets::QLabel;

	inherits QFrame




#### Method activateWindow()
	inherited from QWidget
	calls Qt method void activateWindow()

#### Method clear()
	[slot] 
	calls Qt method void clear()

#### Method closeEvent(QCloseEvent $event)
	[virtual] [protected] inherited from QWidget
	called as Qt method void closeEvent(QCloseEvent* event)

#### Method contentsRect( --> QRect)
	inherited from QWidget
	calls Qt method QRect contentsRect()

#### Method QLabel.new(Str $text, QWidget $parent = (QWidget), Int $f = Qt::WindowFlags() --> QLabel))
	calls Qt method  QLabel(const QString& text, QWidget* parent = nullptr, Qt::WindowFlags f = Qt::WindowFlags())

#### Method QLabel.new(QWidget $parent = (QWidget), Int $f = Qt::WindowFlags() --> QLabel))
	calls Qt method  QLabel(QWidget* parent = nullptr, Qt::WindowFlags f = Qt::WindowFlags())

#### Method enterEvent(QEvent $event)
	[virtual] [protected] inherited from QWidget
	called as Qt method void enterEvent(QEvent* event)

#### Method font( --> QFont)
	inherited from QWidget
	calls Qt method QFont & font()

#### Method frameRect( --> QRect)
	inherited from QFrame
	calls Qt method QRect frameRect()

#### Method frameShadow( --> QFrame::Shadow)
	inherited from QFrame
	calls Qt method Shadow frameShadow()

#### Method frameShape( --> QFrame::Shape)
	inherited from QFrame
	calls Qt method Shape frameShape()

#### Method frameStyle( --> Int)
	inherited from QFrame
	calls Qt method int frameStyle()

#### Method frameWidth( --> Int)
	inherited from QFrame
	calls Qt method int frameWidth()

#### Method hasHeightForWidth( --> Bool)
	[virtual] inherited from QWidget
	called as Qt method bool hasHeightForWidth()

#### Method hasMouseTracking( --> Bool)
	inherited from QWidget
	calls Qt method bool hasMouseTracking()

#### Method height( --> Int)
	inherited from QWidget
	calls Qt method int height()

#### Method heightForWidth(Int $arg1 --> Int)
	[virtual] inherited from QWidget
	called as Qt method int heightForWidth(int arg1)

#### Method hide()
	[slot] inherited from QWidget
	calls Qt method void hide()

#### Method isActiveWindow( --> Bool)
	inherited from QWidget
	calls Qt method bool isActiveWindow()

#### Method leaveEvent(QEvent $event)
	[virtual] [protected] inherited from QWidget
	called as Qt method void leaveEvent(QEvent* event)

#### Method lineWidth( --> Int)
	inherited from QFrame
	calls Qt method int lineWidth()

#### Method mapFrom(QWidget $arg1, QPoint $arg2 --> QPoint)
	inherited from QWidget
	calls Qt method QPoint mapFrom(const QWidget* arg1, const QPoint& arg2)

#### Method mapFromGlobal(QPoint $arg1 --> QPoint)
	inherited from QWidget
	calls Qt method QPoint mapFromGlobal(const QPoint& arg1)

#### Method mapFromParent(QPoint $arg1 --> QPoint)
	inherited from QWidget
	calls Qt method QPoint mapFromParent(const QPoint& arg1)

#### Method mapTo(QWidget $arg1, QPoint $arg2 --> QPoint)
	inherited from QWidget
	calls Qt method QPoint mapTo(const QWidget* arg1, const QPoint& arg2)

#### Method mapToGlobal(QPoint $arg1 --> QPoint)
	inherited from QWidget
	calls Qt method QPoint mapToGlobal(const QPoint& arg1)

#### Method mapToParent(QPoint $arg1 --> QPoint)
	inherited from QWidget
	calls Qt method QPoint mapToParent(const QPoint& arg1)

#### Method midLineWidth( --> Int)
	inherited from QFrame
	calls Qt method int midLineWidth()

#### Method mouseMoveEvent(QMouseEvent $event)
	[virtual] [protected] inherited from QWidget
	called as Qt method void mouseMoveEvent(QMouseEvent* event)

#### Method mousePressEvent(QMouseEvent $event)
	[virtual] [protected] inherited from QWidget
	called as Qt method void mousePressEvent(QMouseEvent* event)

#### Method mouseReleaseEvent(QMouseEvent $event)
	[virtual] [protected] inherited from QWidget
	called as Qt method void mouseReleaseEvent(QMouseEvent* event)

#### Method paintEvent(QPaintEvent $event)
	[virtual] [protected] inherited from QWidget
	called as Qt method void paintEvent(QPaintEvent* event)

#### Method render(QPaintDevice $target, QPoint $targetOffset = QPoint.new(), QRegion $sourceRegion = QRegion.new(), Int $renderFlags = RenderFlags(DrawWindowBackground +| DrawChildren))
	inherited from QWidget
	calls Qt method void render(QPaintDevice* target, const QPoint& targetOffset = QPoint(), const QRegion& sourceRegion = QRegion(), RenderFlags renderFlags = RenderFlags(DrawWindowBackground | DrawChildren))

#### Method repaint(Int $x, Int $y, Int $w, Int $h)
	inherited from QWidget
	calls Qt method void repaint(int x, int y, int w, int h)

#### Method repaint()
	[slot] inherited from QWidget
	calls Qt method void repaint()

#### Method resizeEvent(QResizeEvent $event)
	[virtual] [protected] inherited from QWidget
	called as Qt method void resizeEvent(QResizeEvent* event)

#### Method setAlignment(Int $arg1)
	calls Qt method void setAlignment(Qt::Alignment arg1)

#### Method setDisabled(Bool $arg1)
	[slot] inherited from QWidget
	calls Qt method void setDisabled(bool arg1)

#### Method setFixedHeight(Int $h)
	inherited from QWidget
	calls Qt method void setFixedHeight(int h)

#### Method setFixedSize(Int $w, Int $h)
	inherited from QWidget
	calls Qt method void setFixedSize(int w, int h)

#### Method setFixedWidth(Int $w)
	inherited from QWidget
	calls Qt method void setFixedWidth(int w)

#### Method setFont(QFont $arg1)
	inherited from QWidget
	calls Qt method void setFont(const QFont& arg1)

#### Method setFrameRect(QRect $arg1)
	inherited from QFrame
	calls Qt method void setFrameRect(const QRect& arg1)

#### Method setFrameShadow(QFrame::Shadow $arg1)
	inherited from QFrame
	calls Qt method void setFrameShadow(Shadow arg1)

#### Method setFrameShape(QFrame::Shape $arg1)
	inherited from QFrame
	calls Qt method void setFrameShape(Shape arg1)

#### Method setFrameStyle(Int $arg1)
	inherited from QFrame
	calls Qt method void setFrameStyle(int arg1)

#### Method setLayout(QLayout $arg1)
	inherited from QWidget
	calls Qt method void setLayout(QLayout* arg1)

#### Method setLineWidth(Int $arg1)
	inherited from QFrame
	calls Qt method void setLineWidth(int arg1)

#### Method setMargin(Int $arg1)
	calls Qt method void setMargin(int arg1)

#### Method setMaximumHeight(Int $maxh)
	inherited from QWidget
	calls Qt method void setMaximumHeight(int maxh)

#### Method setMaximumSize(Int $maxw, Int $maxh)
	inherited from QWidget
	calls Qt method void setMaximumSize(int maxw, int maxh)

#### Method setMaximumWidth(Int $maxw)
	inherited from QWidget
	calls Qt method void setMaximumWidth(int maxw)

#### Method setMidLineWidth(Int $arg1)
	inherited from QFrame
	calls Qt method void setMidLineWidth(int arg1)

#### Method setMinimumHeight(Int $minh)
	inherited from QWidget
	calls Qt method void setMinimumHeight(int minh)

#### Method setMinimumSize(Int $minw, Int $minh)
	inherited from QWidget
	calls Qt method void setMinimumSize(int minw, int minh)

#### Method setMinimumWidth(Int $minw)
	inherited from QWidget
	calls Qt method void setMinimumWidth(int minw)

#### Method setMouseTracking(Bool $enable)
	inherited from QWidget
	calls Qt method void setMouseTracking(bool enable)

#### Method setSizePolicy(QSizePolicy::Policy $horizontal, QSizePolicy::Policy $vertical)
	inherited from QWidget
	calls Qt method void setSizePolicy(QSizePolicy::Policy horizontal, QSizePolicy::Policy vertical)

#### Method setText(Str $arg1)
	[slot] 
	calls Qt method void setText(const QString& arg1)

#### Method setTextFormat(Qt::TextFormat $arg1)
	calls Qt method void setTextFormat(Qt::TextFormat arg1)

#### Method setToolTip(Str $arg1)
	inherited from QWidget
	calls Qt method void setToolTip(const QString& arg1)

#### Method setWindowTitle(Str $arg1)
	[slot] inherited from QWidget
	calls Qt method void setWindowTitle(const QString& arg1)

#### Method show()
	[slot] inherited from QWidget
	calls Qt method void show()

#### Method sizeHint( --> QSize)
	[override] inherited from QFrame
	calls Qt method QSize sizeHint()

#### Method text( --> Str)
	calls Qt method QString text()

#### Method update()
	[slot] inherited from QWidget
	calls Qt method void update()

#### Method update(Int $x, Int $y, Int $w, Int $h)
	inherited from QWidget
	calls Qt method void update(int x, int y, int w, int h)

#### Method width( --> Int)
	inherited from QWidget
	calls Qt method int width()


Class QLayout
-------------
	imported by
		use Qt::QtWidgets::QLayout;

	inherits QLayoutItem
	inherits QObject

	inherited by QBoxLayout, QGridLayout


WARNING: This class has no constructor. So it can't be used to create an object explicitely.

#### Method addWidget(QWidget $w)
	calls Qt method void addWidget(QWidget* w)

#### Method setAlignment(QWidget $w, Int $alignment --> Bool)
	calls Qt method bool setAlignment(QWidget* w, Qt::Alignment alignment)

#### Method setAlignment(QLayout $l, Int $alignment --> Bool)
	calls Qt method bool setAlignment(QLayout* l, Qt::Alignment alignment)

#### Method setContentsMargins(Int $left, Int $top, Int $right, Int $bottom)
	calls Qt method void setContentsMargins(int left, int top, int right, int bottom)


Class QLayoutItem
-----------------
	imported by
		use Qt::QtWidgets::QLayoutItem;


	inherited by QLayout


WARNING: This class has no constructor. So it can't be used to create an object explicitely.


Class QLineEdit
---------------
	imported by
		use Qt::QtWidgets::QLineEdit;

	inherits QWidget




#### Method activateWindow()
	inherited from QWidget
	calls Qt method void activateWindow()

#### Method clear()
	[slot] 
	calls Qt method void clear()

#### Method closeEvent(QCloseEvent $event)
	[virtual] [protected] inherited from QWidget
	called as Qt method void closeEvent(QCloseEvent* event)

#### Method contentsRect( --> QRect)
	inherited from QWidget
	calls Qt method QRect contentsRect()

#### Method QLineEdit.new(Str $arg1, QWidget $parent = (QWidget) --> QLineEdit))
	calls Qt method  QLineEdit(const QString& arg1, QWidget* parent = nullptr)

#### Method QLineEdit.new(QWidget $parent = (QWidget) --> QLineEdit))
	calls Qt method  QLineEdit(QWidget* parent = nullptr)

#### Method editingFinished()
	[signal] 
	calls Qt method void editingFinished()

#### Method enterEvent(QEvent $event)
	[virtual] [protected] inherited from QWidget
	called as Qt method void enterEvent(QEvent* event)

#### Method font( --> QFont)
	inherited from QWidget
	calls Qt method QFont & font()

#### Method hasHeightForWidth( --> Bool)
	[virtual] inherited from QWidget
	called as Qt method bool hasHeightForWidth()

#### Method hasMouseTracking( --> Bool)
	inherited from QWidget
	calls Qt method bool hasMouseTracking()

#### Method height( --> Int)
	inherited from QWidget
	calls Qt method int height()

#### Method heightForWidth(Int $arg1 --> Int)
	[virtual] inherited from QWidget
	called as Qt method int heightForWidth(int arg1)

#### Method hide()
	[slot] inherited from QWidget
	calls Qt method void hide()

#### Method isActiveWindow( --> Bool)
	inherited from QWidget
	calls Qt method bool isActiveWindow()

#### Method leaveEvent(QEvent $event)
	[virtual] [protected] inherited from QWidget
	called as Qt method void leaveEvent(QEvent* event)

#### Method mapFrom(QWidget $arg1, QPoint $arg2 --> QPoint)
	inherited from QWidget
	calls Qt method QPoint mapFrom(const QWidget* arg1, const QPoint& arg2)

#### Method mapFromGlobal(QPoint $arg1 --> QPoint)
	inherited from QWidget
	calls Qt method QPoint mapFromGlobal(const QPoint& arg1)

#### Method mapFromParent(QPoint $arg1 --> QPoint)
	inherited from QWidget
	calls Qt method QPoint mapFromParent(const QPoint& arg1)

#### Method mapTo(QWidget $arg1, QPoint $arg2 --> QPoint)
	inherited from QWidget
	calls Qt method QPoint mapTo(const QWidget* arg1, const QPoint& arg2)

#### Method mapToGlobal(QPoint $arg1 --> QPoint)
	inherited from QWidget
	calls Qt method QPoint mapToGlobal(const QPoint& arg1)

#### Method mapToParent(QPoint $arg1 --> QPoint)
	inherited from QWidget
	calls Qt method QPoint mapToParent(const QPoint& arg1)

#### Method mouseMoveEvent(QMouseEvent $event)
	[virtual] [protected] inherited from QWidget
	called as Qt method void mouseMoveEvent(QMouseEvent* event)

#### Method mousePressEvent(QMouseEvent $event)
	[virtual] [protected] inherited from QWidget
	called as Qt method void mousePressEvent(QMouseEvent* event)

#### Method mouseReleaseEvent(QMouseEvent $event)
	[virtual] [protected] inherited from QWidget
	called as Qt method void mouseReleaseEvent(QMouseEvent* event)

#### Method paintEvent(QPaintEvent $event)
	[virtual] [protected] inherited from QWidget
	called as Qt method void paintEvent(QPaintEvent* event)

#### Method render(QPaintDevice $target, QPoint $targetOffset = QPoint.new(), QRegion $sourceRegion = QRegion.new(), Int $renderFlags = RenderFlags(DrawWindowBackground +| DrawChildren))
	inherited from QWidget
	calls Qt method void render(QPaintDevice* target, const QPoint& targetOffset = QPoint(), const QRegion& sourceRegion = QRegion(), RenderFlags renderFlags = RenderFlags(DrawWindowBackground | DrawChildren))

#### Method repaint(Int $x, Int $y, Int $w, Int $h)
	inherited from QWidget
	calls Qt method void repaint(int x, int y, int w, int h)

#### Method repaint()
	[slot] inherited from QWidget
	calls Qt method void repaint()

#### Method resizeEvent(QResizeEvent $event)
	[virtual] [protected] inherited from QWidget
	called as Qt method void resizeEvent(QResizeEvent* event)

#### Method returnPressed()
	[signal] 
	calls Qt method void returnPressed()

#### Method setAlignment(Int $flag)
	calls Qt method void setAlignment(Qt::Alignment flag)

#### Method setDisabled(Bool $arg1)
	[slot] inherited from QWidget
	calls Qt method void setDisabled(bool arg1)

#### Method setFixedHeight(Int $h)
	inherited from QWidget
	calls Qt method void setFixedHeight(int h)

#### Method setFixedSize(Int $w, Int $h)
	inherited from QWidget
	calls Qt method void setFixedSize(int w, int h)

#### Method setFixedWidth(Int $w)
	inherited from QWidget
	calls Qt method void setFixedWidth(int w)

#### Method setFont(QFont $arg1)
	inherited from QWidget
	calls Qt method void setFont(const QFont& arg1)

#### Method setLayout(QLayout $arg1)
	inherited from QWidget
	calls Qt method void setLayout(QLayout* arg1)

#### Method setMaximumHeight(Int $maxh)
	inherited from QWidget
	calls Qt method void setMaximumHeight(int maxh)

#### Method setMaximumSize(Int $maxw, Int $maxh)
	inherited from QWidget
	calls Qt method void setMaximumSize(int maxw, int maxh)

#### Method setMaximumWidth(Int $maxw)
	inherited from QWidget
	calls Qt method void setMaximumWidth(int maxw)

#### Method setMinimumHeight(Int $minh)
	inherited from QWidget
	calls Qt method void setMinimumHeight(int minh)

#### Method setMinimumSize(Int $minw, Int $minh)
	inherited from QWidget
	calls Qt method void setMinimumSize(int minw, int minh)

#### Method setMinimumWidth(Int $minw)
	inherited from QWidget
	calls Qt method void setMinimumWidth(int minw)

#### Method setMouseTracking(Bool $enable)
	inherited from QWidget
	calls Qt method void setMouseTracking(bool enable)

#### Method setSizePolicy(QSizePolicy::Policy $horizontal, QSizePolicy::Policy $vertical)
	inherited from QWidget
	calls Qt method void setSizePolicy(QSizePolicy::Policy horizontal, QSizePolicy::Policy vertical)

#### Method setText(Str $arg1)
	[slot] 
	calls Qt method void setText(const QString& arg1)

#### Method setToolTip(Str $arg1)
	inherited from QWidget
	calls Qt method void setToolTip(const QString& arg1)

#### Method setWindowTitle(Str $arg1)
	[slot] inherited from QWidget
	calls Qt method void setWindowTitle(const QString& arg1)

#### Method show()
	[slot] inherited from QWidget
	calls Qt method void show()

#### Method text( --> Str)
	calls Qt method QString text()

#### Method update()
	[slot] inherited from QWidget
	calls Qt method void update()

#### Method update(Int $x, Int $y, Int $w, Int $h)
	inherited from QWidget
	calls Qt method void update(int x, int y, int w, int h)

#### Method width( --> Int)
	inherited from QWidget
	calls Qt method int width()


Class QLineF
------------
	imported by
		use Qt::QtWidgets::QLineF;





WARNING: This class has no constructor. So it can't be used to create an object explicitely.


Class QMainWindow
-----------------
	imported by
		use Qt::QtWidgets::QMainWindow;

	inherits QWidget




#### Method activateWindow()
	inherited from QWidget
	calls Qt method void activateWindow()

#### Method addToolBar(Qt::ToolBarArea $area, QToolBar $toolbar)
	calls Qt method void addToolBar(Qt::ToolBarArea area, QToolBar* toolbar)

#### Method addToolBar(QToolBar $toolbar)
	calls Qt method void addToolBar(QToolBar* toolbar)

#### Method addToolBar(Str $title --> QToolBar)
	calls Qt method QToolBar * addToolBar(const QString& title)

#### Method centralWidget( --> QWidget)
	calls Qt method QWidget * centralWidget()

#### Method closeEvent(QCloseEvent $event)
	[virtual] [protected] inherited from QWidget
	called as Qt method void closeEvent(QCloseEvent* event)

#### Method contentsRect( --> QRect)
	inherited from QWidget
	calls Qt method QRect contentsRect()

#### Method QMainWindow.new(QWidget $parent = (QWidget), Int $flags = Qt::WindowFlags() --> QMainWindow))
	calls Qt method  QMainWindow(QWidget* parent = nullptr, Qt::WindowFlags flags = Qt::WindowFlags())

#### Method enterEvent(QEvent $event)
	[virtual] [protected] inherited from QWidget
	called as Qt method void enterEvent(QEvent* event)

#### Method event(QEvent $event --> Bool)
	[protected] [override] 
	calls Qt method bool event(QEvent* event)

#### Method font( --> QFont)
	inherited from QWidget
	calls Qt method QFont & font()

#### Method hasHeightForWidth( --> Bool)
	[virtual] inherited from QWidget
	called as Qt method bool hasHeightForWidth()

#### Method hasMouseTracking( --> Bool)
	inherited from QWidget
	calls Qt method bool hasMouseTracking()

#### Method height( --> Int)
	inherited from QWidget
	calls Qt method int height()

#### Method heightForWidth(Int $arg1 --> Int)
	[virtual] inherited from QWidget
	called as Qt method int heightForWidth(int arg1)

#### Method hide()
	[slot] inherited from QWidget
	calls Qt method void hide()

#### Method iconSize( --> QSize)
	calls Qt method QSize iconSize()

#### Method iconSizeChanged(QSize $iconSize)
	[signal] 
	calls Qt method void iconSizeChanged(const QSize& iconSize)

#### Method insertToolBar(QToolBar $before, QToolBar $toolbar)
	calls Qt method void insertToolBar(QToolBar* before, QToolBar* toolbar)

#### Method insertToolBarBreak(QToolBar $before)
	calls Qt method void insertToolBarBreak(QToolBar* before)

#### Method isActiveWindow( --> Bool)
	inherited from QWidget
	calls Qt method bool isActiveWindow()

#### Method leaveEvent(QEvent $event)
	[virtual] [protected] inherited from QWidget
	called as Qt method void leaveEvent(QEvent* event)

#### Method mapFrom(QWidget $arg1, QPoint $arg2 --> QPoint)
	inherited from QWidget
	calls Qt method QPoint mapFrom(const QWidget* arg1, const QPoint& arg2)

#### Method mapFromGlobal(QPoint $arg1 --> QPoint)
	inherited from QWidget
	calls Qt method QPoint mapFromGlobal(const QPoint& arg1)

#### Method mapFromParent(QPoint $arg1 --> QPoint)
	inherited from QWidget
	calls Qt method QPoint mapFromParent(const QPoint& arg1)

#### Method mapTo(QWidget $arg1, QPoint $arg2 --> QPoint)
	inherited from QWidget
	calls Qt method QPoint mapTo(const QWidget* arg1, const QPoint& arg2)

#### Method mapToGlobal(QPoint $arg1 --> QPoint)
	inherited from QWidget
	calls Qt method QPoint mapToGlobal(const QPoint& arg1)

#### Method mapToParent(QPoint $arg1 --> QPoint)
	inherited from QWidget
	calls Qt method QPoint mapToParent(const QPoint& arg1)

#### Method menuBar( --> QMenuBar)
	calls Qt method QMenuBar * menuBar()

#### Method menuWidget( --> QWidget)
	calls Qt method QWidget * menuWidget()

#### Method mouseMoveEvent(QMouseEvent $event)
	[virtual] [protected] inherited from QWidget
	called as Qt method void mouseMoveEvent(QMouseEvent* event)

#### Method mousePressEvent(QMouseEvent $event)
	[virtual] [protected] inherited from QWidget
	called as Qt method void mousePressEvent(QMouseEvent* event)

#### Method mouseReleaseEvent(QMouseEvent $event)
	[virtual] [protected] inherited from QWidget
	called as Qt method void mouseReleaseEvent(QMouseEvent* event)

#### Method paintEvent(QPaintEvent $event)
	[virtual] [protected] inherited from QWidget
	called as Qt method void paintEvent(QPaintEvent* event)

#### Method removeToolBar(QToolBar $toolbar)
	calls Qt method void removeToolBar(QToolBar* toolbar)

#### Method removeToolBarBreak(QToolBar $before)
	calls Qt method void removeToolBarBreak(QToolBar* before)

#### Method render(QPaintDevice $target, QPoint $targetOffset = QPoint.new(), QRegion $sourceRegion = QRegion.new(), Int $renderFlags = RenderFlags(DrawWindowBackground +| DrawChildren))
	inherited from QWidget
	calls Qt method void render(QPaintDevice* target, const QPoint& targetOffset = QPoint(), const QRegion& sourceRegion = QRegion(), RenderFlags renderFlags = RenderFlags(DrawWindowBackground | DrawChildren))

#### Method repaint(Int $x, Int $y, Int $w, Int $h)
	inherited from QWidget
	calls Qt method void repaint(int x, int y, int w, int h)

#### Method repaint()
	[slot] inherited from QWidget
	calls Qt method void repaint()

#### Method resizeEvent(QResizeEvent $event)
	[virtual] [protected] inherited from QWidget
	called as Qt method void resizeEvent(QResizeEvent* event)

#### Method setCentralWidget(QWidget $widget)
	calls Qt method void setCentralWidget(QWidget* widget)

#### Method setDisabled(Bool $arg1)
	[slot] inherited from QWidget
	calls Qt method void setDisabled(bool arg1)

#### Method setDocumentMode(Bool $enabled)
	calls Qt method void setDocumentMode(bool enabled)

#### Method setFixedHeight(Int $h)
	inherited from QWidget
	calls Qt method void setFixedHeight(int h)

#### Method setFixedSize(Int $w, Int $h)
	inherited from QWidget
	calls Qt method void setFixedSize(int w, int h)

#### Method setFixedWidth(Int $w)
	inherited from QWidget
	calls Qt method void setFixedWidth(int w)

#### Method setFont(QFont $arg1)
	inherited from QWidget
	calls Qt method void setFont(const QFont& arg1)

#### Method setIconSize(QSize $iconSize)
	calls Qt method void setIconSize(const QSize& iconSize)

#### Method setLayout(QLayout $arg1)
	inherited from QWidget
	calls Qt method void setLayout(QLayout* arg1)

#### Method setMaximumHeight(Int $maxh)
	inherited from QWidget
	calls Qt method void setMaximumHeight(int maxh)

#### Method setMaximumSize(Int $maxw, Int $maxh)
	inherited from QWidget
	calls Qt method void setMaximumSize(int maxw, int maxh)

#### Method setMaximumWidth(Int $maxw)
	inherited from QWidget
	calls Qt method void setMaximumWidth(int maxw)

#### Method setMenuBar(QMenuBar $menubar)
	calls Qt method void setMenuBar(QMenuBar* menubar)

#### Method setMenuWidget(QWidget $menubar)
	calls Qt method void setMenuWidget(QWidget* menubar)

#### Method setMinimumHeight(Int $minh)
	inherited from QWidget
	calls Qt method void setMinimumHeight(int minh)

#### Method setMinimumSize(Int $minw, Int $minh)
	inherited from QWidget
	calls Qt method void setMinimumSize(int minw, int minh)

#### Method setMinimumWidth(Int $minw)
	inherited from QWidget
	calls Qt method void setMinimumWidth(int minw)

#### Method setMouseTracking(Bool $enable)
	inherited from QWidget
	calls Qt method void setMouseTracking(bool enable)

#### Method setSizePolicy(QSizePolicy::Policy $horizontal, QSizePolicy::Policy $vertical)
	inherited from QWidget
	calls Qt method void setSizePolicy(QSizePolicy::Policy horizontal, QSizePolicy::Policy vertical)

#### Method setStatusBar(QStatusBar $statusbar)
	calls Qt method void setStatusBar(QStatusBar* statusbar)

#### Method setToolTip(Str $arg1)
	inherited from QWidget
	calls Qt method void setToolTip(const QString& arg1)

#### Method setWindowTitle(Str $arg1)
	[slot] inherited from QWidget
	calls Qt method void setWindowTitle(const QString& arg1)

#### Method show()
	[slot] inherited from QWidget
	calls Qt method void show()

#### Method statusBar( --> QStatusBar)
	calls Qt method QStatusBar * statusBar()

#### Method takeCentralWidget( --> QWidget)
	calls Qt method QWidget * takeCentralWidget()

#### Method toolBarArea(QToolBar $toolbar --> Qt::ToolBarArea)
	calls Qt method Qt::ToolBarArea toolBarArea(QToolBar* toolbar)

#### Method toolBarBreak(QToolBar $toolbar --> Bool)
	calls Qt method bool toolBarBreak(QToolBar* toolbar)

#### Method update(Int $x, Int $y, Int $w, Int $h)
	inherited from QWidget
	calls Qt method void update(int x, int y, int w, int h)

#### Method update()
	[slot] inherited from QWidget
	calls Qt method void update()

#### Method width( --> Int)
	inherited from QWidget
	calls Qt method int width()


Class QMatrix
-------------
	imported by
		use Qt::QtWidgets::QMatrix;





#### Method QMatrix.new( --> QMatrix))
	calls Qt method  QMatrix()

#### Method QMatrix.new(Qt::Initialization $arg1 --> QMatrix))
	calls Qt method  QMatrix(Qt::Initialization arg1)

#### Method mapRect(QRect $arg1 --> QRect)
	calls Qt method QRect mapRect(const QRect& arg1)

#### Method mapRect(QRectF $arg1 --> QRectF)
	calls Qt method QRectF mapRect(const QRectF& arg1)

#### Method reset()
	calls Qt method void reset()

#### Method rotate(Real $a --> QMatrix)
	calls Qt method QMatrix & rotate(qreal a)

#### Method scale(Real $sx, Real $sy --> QMatrix)
	calls Qt method QMatrix & scale(qreal sx, qreal sy)

#### Method setMatrix(Real $m11, Real $m12, Real $m21, Real $m22, Real $dx, Real $dy)
	calls Qt method void setMatrix(qreal m11, qreal m12, qreal m21, qreal m22, qreal dx, qreal dy)

#### Method shear(Real $sh, Real $sv --> QMatrix)
	calls Qt method QMatrix & shear(qreal sh, qreal sv)

#### Method translate(Real $dx, Real $dy --> QMatrix)
	calls Qt method QMatrix & translate(qreal dx, qreal dy)


Class QMenu
-----------
	imported by
		use Qt::QtWidgets::QMenu;

	inherits QWidget




#### Method activateWindow()
	inherited from QWidget
	calls Qt method void activateWindow()

#### Method addAction(Str $text --> QAction)
	calls Qt method QAction * addAction(const QString& text)

#### Method addSection(Str $text --> QAction)
	calls Qt method QAction * addSection(const QString& text)

#### Method addSeparator( --> QAction)
	calls Qt method QAction * addSeparator()

#### Method closeEvent(QCloseEvent $event)
	[virtual] [protected] inherited from QWidget
	called as Qt method void closeEvent(QCloseEvent* event)

#### Method contentsRect( --> QRect)
	inherited from QWidget
	calls Qt method QRect contentsRect()

#### Method QMenu.new(QWidget $parent = (QWidget) --> QMenu))
	calls Qt method  QMenu(QWidget* parent = nullptr)

#### Method QMenu.new(Str $title, QWidget $parent = (QWidget) --> QMenu))
	calls Qt method  QMenu(const QString& title, QWidget* parent = nullptr)

#### Method enterEvent(QEvent $event)
	[virtual] [protected] inherited from QWidget
	called as Qt method void enterEvent(QEvent* event)

#### Method exec( --> QAction)
	calls Qt method QAction * exec()

#### Method exec(QPoint $pos, QAction $at = (QAction) --> QAction)
	calls Qt method QAction * exec(const QPoint& pos, QAction* at = nullptr)

#### Method font( --> QFont)
	inherited from QWidget
	calls Qt method QFont & font()

#### Method hasHeightForWidth( --> Bool)
	[virtual] inherited from QWidget
	called as Qt method bool hasHeightForWidth()

#### Method hasMouseTracking( --> Bool)
	inherited from QWidget
	calls Qt method bool hasMouseTracking()

#### Method height( --> Int)
	inherited from QWidget
	calls Qt method int height()

#### Method heightForWidth(Int $arg1 --> Int)
	[virtual] inherited from QWidget
	called as Qt method int heightForWidth(int arg1)

#### Method hide()
	[slot] inherited from QWidget
	calls Qt method void hide()

#### Method isActiveWindow( --> Bool)
	inherited from QWidget
	calls Qt method bool isActiveWindow()

#### Method leaveEvent(QEvent $event)
	[virtual] [protected] inherited from QWidget
	called as Qt method void leaveEvent(QEvent* event)

#### Method mapFrom(QWidget $arg1, QPoint $arg2 --> QPoint)
	inherited from QWidget
	calls Qt method QPoint mapFrom(const QWidget* arg1, const QPoint& arg2)

#### Method mapFromGlobal(QPoint $arg1 --> QPoint)
	inherited from QWidget
	calls Qt method QPoint mapFromGlobal(const QPoint& arg1)

#### Method mapFromParent(QPoint $arg1 --> QPoint)
	inherited from QWidget
	calls Qt method QPoint mapFromParent(const QPoint& arg1)

#### Method mapTo(QWidget $arg1, QPoint $arg2 --> QPoint)
	inherited from QWidget
	calls Qt method QPoint mapTo(const QWidget* arg1, const QPoint& arg2)

#### Method mapToGlobal(QPoint $arg1 --> QPoint)
	inherited from QWidget
	calls Qt method QPoint mapToGlobal(const QPoint& arg1)

#### Method mapToParent(QPoint $arg1 --> QPoint)
	inherited from QWidget
	calls Qt method QPoint mapToParent(const QPoint& arg1)

#### Method mouseMoveEvent(QMouseEvent $event)
	[virtual] [protected] inherited from QWidget
	called as Qt method void mouseMoveEvent(QMouseEvent* event)

#### Method mousePressEvent(QMouseEvent $event)
	[virtual] [protected] inherited from QWidget
	called as Qt method void mousePressEvent(QMouseEvent* event)

#### Method mouseReleaseEvent(QMouseEvent $event)
	[virtual] [protected] inherited from QWidget
	called as Qt method void mouseReleaseEvent(QMouseEvent* event)

#### Method paintEvent(QPaintEvent $event)
	[virtual] [protected] inherited from QWidget
	called as Qt method void paintEvent(QPaintEvent* event)

#### Method render(QPaintDevice $target, QPoint $targetOffset = QPoint.new(), QRegion $sourceRegion = QRegion.new(), Int $renderFlags = RenderFlags(DrawWindowBackground +| DrawChildren))
	inherited from QWidget
	calls Qt method void render(QPaintDevice* target, const QPoint& targetOffset = QPoint(), const QRegion& sourceRegion = QRegion(), RenderFlags renderFlags = RenderFlags(DrawWindowBackground | DrawChildren))

#### Method repaint()
	[slot] inherited from QWidget
	calls Qt method void repaint()

#### Method repaint(Int $x, Int $y, Int $w, Int $h)
	inherited from QWidget
	calls Qt method void repaint(int x, int y, int w, int h)

#### Method resizeEvent(QResizeEvent $event)
	[virtual] [protected] inherited from QWidget
	called as Qt method void resizeEvent(QResizeEvent* event)

#### Method setDisabled(Bool $arg1)
	[slot] inherited from QWidget
	calls Qt method void setDisabled(bool arg1)

#### Method setFixedHeight(Int $h)
	inherited from QWidget
	calls Qt method void setFixedHeight(int h)

#### Method setFixedSize(Int $w, Int $h)
	inherited from QWidget
	calls Qt method void setFixedSize(int w, int h)

#### Method setFixedWidth(Int $w)
	inherited from QWidget
	calls Qt method void setFixedWidth(int w)

#### Method setFont(QFont $arg1)
	inherited from QWidget
	calls Qt method void setFont(const QFont& arg1)

#### Method setLayout(QLayout $arg1)
	inherited from QWidget
	calls Qt method void setLayout(QLayout* arg1)

#### Method setMaximumHeight(Int $maxh)
	inherited from QWidget
	calls Qt method void setMaximumHeight(int maxh)

#### Method setMaximumSize(Int $maxw, Int $maxh)
	inherited from QWidget
	calls Qt method void setMaximumSize(int maxw, int maxh)

#### Method setMaximumWidth(Int $maxw)
	inherited from QWidget
	calls Qt method void setMaximumWidth(int maxw)

#### Method setMinimumHeight(Int $minh)
	inherited from QWidget
	calls Qt method void setMinimumHeight(int minh)

#### Method setMinimumSize(Int $minw, Int $minh)
	inherited from QWidget
	calls Qt method void setMinimumSize(int minw, int minh)

#### Method setMinimumWidth(Int $minw)
	inherited from QWidget
	calls Qt method void setMinimumWidth(int minw)

#### Method setMouseTracking(Bool $enable)
	inherited from QWidget
	calls Qt method void setMouseTracking(bool enable)

#### Method setSizePolicy(QSizePolicy::Policy $horizontal, QSizePolicy::Policy $vertical)
	inherited from QWidget
	calls Qt method void setSizePolicy(QSizePolicy::Policy horizontal, QSizePolicy::Policy vertical)

#### Method setToolTip(Str $arg1)
	inherited from QWidget
	calls Qt method void setToolTip(const QString& arg1)

#### Method setWindowTitle(Str $arg1)
	[slot] inherited from QWidget
	calls Qt method void setWindowTitle(const QString& arg1)

#### Method show()
	[slot] inherited from QWidget
	calls Qt method void show()

#### Method update(Int $x, Int $y, Int $w, Int $h)
	inherited from QWidget
	calls Qt method void update(int x, int y, int w, int h)

#### Method update()
	[slot] inherited from QWidget
	calls Qt method void update()

#### Method width( --> Int)
	inherited from QWidget
	calls Qt method int width()


Class QMenuBar
--------------
	imported by
		use Qt::QtWidgets::QMenuBar;

	inherits QWidget




#### Method actionAt(QPoint $arg1 --> QAction)
	calls Qt method QAction * actionAt(const QPoint& arg1)

#### Method activateWindow()
	inherited from QWidget
	calls Qt method void activateWindow()

#### Method addAction(Str $text --> QAction)
	calls Qt method QAction * addAction(const QString& text)

#### Method addMenu(QMenu $menu --> QAction)
	calls Qt method QAction * addMenu(QMenu* menu)

#### Method addMenu(Str $title --> QMenu)
	calls Qt method QMenu * addMenu(const QString& title)

#### Method addSeparator( --> QAction)
	calls Qt method QAction * addSeparator()

#### Method changeEvent(QEvent $arg1)
	[protected] [override] 
	calls Qt method void changeEvent(QEvent* arg1)

#### Method closeEvent(QCloseEvent $event)
	[virtual] [protected] inherited from QWidget
	called as Qt method void closeEvent(QCloseEvent* event)

#### Method contentsRect( --> QRect)
	inherited from QWidget
	calls Qt method QRect contentsRect()

#### Method QMenuBar.new(QWidget $parent = (QWidget) --> QMenuBar))
	calls Qt method  QMenuBar(QWidget* parent = nullptr)

#### Method enterEvent(QEvent $event)
	[virtual] [protected] inherited from QWidget
	called as Qt method void enterEvent(QEvent* event)

#### Method event(QEvent $arg1 --> Bool)
	[protected] [override] 
	calls Qt method bool event(QEvent* arg1)

#### Method eventFilter(QObject $arg1, QEvent $arg2 --> Bool)
	[protected] [override] 
	calls Qt method bool eventFilter(QObject* arg1, QEvent* arg2)

#### Method font( --> QFont)
	inherited from QWidget
	calls Qt method QFont & font()

#### Method hasHeightForWidth( --> Bool)
	[virtual] inherited from QWidget
	called as Qt method bool hasHeightForWidth()

#### Method hasMouseTracking( --> Bool)
	inherited from QWidget
	calls Qt method bool hasMouseTracking()

#### Method height( --> Int)
	inherited from QWidget
	calls Qt method int height()

#### Method heightForWidth(Int $arg1 --> Int)
	[virtual] [override] 
	called as Qt method int heightForWidth(int arg1)

#### Method hide()
	[slot] inherited from QWidget
	calls Qt method void hide()

#### Method hovered(QAction $action)
	[signal] 
	calls Qt method void hovered(QAction* action)

#### Method insertMenu(QAction $before, QMenu $menu --> QAction)
	calls Qt method QAction * insertMenu(QAction* before, QMenu* menu)

#### Method insertSeparator(QAction $before --> QAction)
	calls Qt method QAction * insertSeparator(QAction* before)

#### Method isActiveWindow( --> Bool)
	inherited from QWidget
	calls Qt method bool isActiveWindow()

#### Method isDefaultUp( --> Bool)
	calls Qt method bool isDefaultUp()

#### Method isNativeMenuBar( --> Bool)
	calls Qt method bool isNativeMenuBar()

#### Method keyPressEvent(QKeyEvent $arg1)
	[protected] [override] 
	calls Qt method void keyPressEvent(QKeyEvent* arg1)

#### Method leaveEvent(QEvent $arg1)
	[virtual] [protected] [override] 
	called as Qt method void leaveEvent(QEvent* arg1)

#### Method mapFrom(QWidget $arg1, QPoint $arg2 --> QPoint)
	inherited from QWidget
	calls Qt method QPoint mapFrom(const QWidget* arg1, const QPoint& arg2)

#### Method mapFromGlobal(QPoint $arg1 --> QPoint)
	inherited from QWidget
	calls Qt method QPoint mapFromGlobal(const QPoint& arg1)

#### Method mapFromParent(QPoint $arg1 --> QPoint)
	inherited from QWidget
	calls Qt method QPoint mapFromParent(const QPoint& arg1)

#### Method mapTo(QWidget $arg1, QPoint $arg2 --> QPoint)
	inherited from QWidget
	calls Qt method QPoint mapTo(const QWidget* arg1, const QPoint& arg2)

#### Method mapToGlobal(QPoint $arg1 --> QPoint)
	inherited from QWidget
	calls Qt method QPoint mapToGlobal(const QPoint& arg1)

#### Method mapToParent(QPoint $arg1 --> QPoint)
	inherited from QWidget
	calls Qt method QPoint mapToParent(const QPoint& arg1)

#### Method minimumSizeHint( --> QSize)
	[override] 
	calls Qt method QSize minimumSizeHint()

#### Method mouseMoveEvent(QMouseEvent $arg1)
	[virtual] [protected] [override] 
	called as Qt method void mouseMoveEvent(QMouseEvent* arg1)

#### Method mousePressEvent(QMouseEvent $arg1)
	[virtual] [protected] [override] 
	called as Qt method void mousePressEvent(QMouseEvent* arg1)

#### Method mouseReleaseEvent(QMouseEvent $arg1)
	[virtual] [protected] [override] 
	called as Qt method void mouseReleaseEvent(QMouseEvent* arg1)

#### Method paintEvent(QPaintEvent $arg1)
	[virtual] [protected] [override] 
	called as Qt method void paintEvent(QPaintEvent* arg1)

#### Method render(QPaintDevice $target, QPoint $targetOffset = QPoint.new(), QRegion $sourceRegion = QRegion.new(), Int $renderFlags = RenderFlags(DrawWindowBackground +| DrawChildren))
	inherited from QWidget
	calls Qt method void render(QPaintDevice* target, const QPoint& targetOffset = QPoint(), const QRegion& sourceRegion = QRegion(), RenderFlags renderFlags = RenderFlags(DrawWindowBackground | DrawChildren))

#### Method repaint(Int $x, Int $y, Int $w, Int $h)
	inherited from QWidget
	calls Qt method void repaint(int x, int y, int w, int h)

#### Method repaint()
	[slot] inherited from QWidget
	calls Qt method void repaint()

#### Method resizeEvent(QResizeEvent $arg1)
	[virtual] [protected] [override] 
	called as Qt method void resizeEvent(QResizeEvent* arg1)

#### Method setActiveAction(QAction $action)
	calls Qt method void setActiveAction(QAction* action)

#### Method setCornerWidget(QWidget $w, Qt::Corner $corner = Qt::TopRightCorner)
	calls Qt method void setCornerWidget(QWidget* w, Qt::Corner corner = Qt::TopRightCorner)

#### Method setDefaultUp(Bool $arg1)
	calls Qt method void setDefaultUp(bool arg1)

#### Method setDisabled(Bool $arg1)
	[slot] inherited from QWidget
	calls Qt method void setDisabled(bool arg1)

#### Method setFixedHeight(Int $h)
	inherited from QWidget
	calls Qt method void setFixedHeight(int h)

#### Method setFixedSize(Int $w, Int $h)
	inherited from QWidget
	calls Qt method void setFixedSize(int w, int h)

#### Method setFixedWidth(Int $w)
	inherited from QWidget
	calls Qt method void setFixedWidth(int w)

#### Method setFont(QFont $arg1)
	inherited from QWidget
	calls Qt method void setFont(const QFont& arg1)

#### Method setLayout(QLayout $arg1)
	inherited from QWidget
	calls Qt method void setLayout(QLayout* arg1)

#### Method setMaximumHeight(Int $maxh)
	inherited from QWidget
	calls Qt method void setMaximumHeight(int maxh)

#### Method setMaximumSize(Int $maxw, Int $maxh)
	inherited from QWidget
	calls Qt method void setMaximumSize(int maxw, int maxh)

#### Method setMaximumWidth(Int $maxw)
	inherited from QWidget
	calls Qt method void setMaximumWidth(int maxw)

#### Method setMinimumHeight(Int $minh)
	inherited from QWidget
	calls Qt method void setMinimumHeight(int minh)

#### Method setMinimumSize(Int $minw, Int $minh)
	inherited from QWidget
	calls Qt method void setMinimumSize(int minw, int minh)

#### Method setMinimumWidth(Int $minw)
	inherited from QWidget
	calls Qt method void setMinimumWidth(int minw)

#### Method setMouseTracking(Bool $enable)
	inherited from QWidget
	calls Qt method void setMouseTracking(bool enable)

#### Method setNativeMenuBar(Bool $nativeMenuBar)
	calls Qt method void setNativeMenuBar(bool nativeMenuBar)

#### Method setSizePolicy(QSizePolicy::Policy $horizontal, QSizePolicy::Policy $vertical)
	inherited from QWidget
	calls Qt method void setSizePolicy(QSizePolicy::Policy horizontal, QSizePolicy::Policy vertical)

#### Method setToolTip(Str $arg1)
	inherited from QWidget
	calls Qt method void setToolTip(const QString& arg1)

#### Method setVisible(Bool $visible)
	[slot] [override] 
	calls Qt method void setVisible(bool visible)

#### Method setWindowTitle(Str $arg1)
	[slot] inherited from QWidget
	calls Qt method void setWindowTitle(const QString& arg1)

#### Method show()
	[slot] inherited from QWidget
	calls Qt method void show()

#### Method sizeHint( --> QSize)
	[override] 
	calls Qt method QSize sizeHint()

#### Method timerEvent(QTimerEvent $arg1)
	[protected] [override] 
	calls Qt method void timerEvent(QTimerEvent* arg1)

#### Method triggered(QAction $action)
	[signal] 
	calls Qt method void triggered(QAction* action)

#### Method update()
	[slot] inherited from QWidget
	calls Qt method void update()

#### Method update(Int $x, Int $y, Int $w, Int $h)
	inherited from QWidget
	calls Qt method void update(int x, int y, int w, int h)

#### Method width( --> Int)
	inherited from QWidget
	calls Qt method int width()


Class QMessageBox
-----------------
	imported by
		use Qt::QtWidgets::QMessageBox;

	inherits QDialog



    enum StandardButton 

#### Method accept()
	[slot] [virtual] inherited from QDialog
	called as Qt method void accept()

#### Method accepted()
	[signal] inherited from QDialog
	calls Qt method void accepted()

#### Method activateWindow()
	inherited from QWidget
	calls Qt method void activateWindow()

#### Method adjustPosition(QWidget $arg1)
	[protected] inherited from QDialog
	calls Qt method void adjustPosition(QWidget* arg1)

#### Method closeEvent(QCloseEvent $event)
	[virtual] [protected] inherited from QWidget
	called as Qt method void closeEvent(QCloseEvent* event)

#### Method contentsRect( --> QRect)
	inherited from QWidget
	calls Qt method QRect contentsRect()

#### Method QMessageBox.new(QWidget $parent = (QWidget) --> QMessageBox))
	calls Qt method  QMessageBox(QWidget* parent = nullptr)

#### Method done(Int $arg1)
	[slot] [virtual] inherited from QDialog
	called as Qt method void done(int arg1)

#### Method enterEvent(QEvent $event)
	[virtual] [protected] inherited from QWidget
	called as Qt method void enterEvent(QEvent* event)

#### Method exec( --> Int)
	[slot] [virtual] inherited from QDialog
	called as Qt method int exec()

#### Method extension( --> QWidget)
	inherited from QDialog
	calls Qt method QWidget * extension()

#### Method finished(Int $result)
	[signal] inherited from QDialog
	calls Qt method void finished(int result)

#### Method font( --> QFont)
	inherited from QWidget
	calls Qt method QFont & font()

#### Method hasHeightForWidth( --> Bool)
	[virtual] inherited from QWidget
	called as Qt method bool hasHeightForWidth()

#### Method hasMouseTracking( --> Bool)
	inherited from QWidget
	calls Qt method bool hasMouseTracking()

#### Method height( --> Int)
	inherited from QWidget
	calls Qt method int height()

#### Method heightForWidth(Int $arg1 --> Int)
	[virtual] inherited from QWidget
	called as Qt method int heightForWidth(int arg1)

#### Method hide()
	[slot] inherited from QWidget
	calls Qt method void hide()

#### Method isActiveWindow( --> Bool)
	inherited from QWidget
	calls Qt method bool isActiveWindow()

#### Method isSizeGripEnabled( --> Bool)
	inherited from QDialog
	calls Qt method bool isSizeGripEnabled()

#### Method keyPressEvent(QKeyEvent $arg1)
	[protected] [override] inherited from QDialog
	calls Qt method void keyPressEvent(QKeyEvent* arg1)

#### Method leaveEvent(QEvent $event)
	[virtual] [protected] inherited from QWidget
	called as Qt method void leaveEvent(QEvent* event)

#### Method mapFrom(QWidget $arg1, QPoint $arg2 --> QPoint)
	inherited from QWidget
	calls Qt method QPoint mapFrom(const QWidget* arg1, const QPoint& arg2)

#### Method mapFromGlobal(QPoint $arg1 --> QPoint)
	inherited from QWidget
	calls Qt method QPoint mapFromGlobal(const QPoint& arg1)

#### Method mapFromParent(QPoint $arg1 --> QPoint)
	inherited from QWidget
	calls Qt method QPoint mapFromParent(const QPoint& arg1)

#### Method mapTo(QWidget $arg1, QPoint $arg2 --> QPoint)
	inherited from QWidget
	calls Qt method QPoint mapTo(const QWidget* arg1, const QPoint& arg2)

#### Method mapToGlobal(QPoint $arg1 --> QPoint)
	inherited from QWidget
	calls Qt method QPoint mapToGlobal(const QPoint& arg1)

#### Method mapToParent(QPoint $arg1 --> QPoint)
	inherited from QWidget
	calls Qt method QPoint mapToParent(const QPoint& arg1)

#### Method minimumSizeHint( --> QSize)
	[override] inherited from QDialog
	calls Qt method QSize minimumSizeHint()

#### Method mouseMoveEvent(QMouseEvent $event)
	[virtual] [protected] inherited from QWidget
	called as Qt method void mouseMoveEvent(QMouseEvent* event)

#### Method mousePressEvent(QMouseEvent $event)
	[virtual] [protected] inherited from QWidget
	called as Qt method void mousePressEvent(QMouseEvent* event)

#### Method mouseReleaseEvent(QMouseEvent $event)
	[virtual] [protected] inherited from QWidget
	called as Qt method void mouseReleaseEvent(QMouseEvent* event)

#### Method open()
	[slot] [virtual] inherited from QDialog
	called as Qt method void open()

#### Method orientation( --> Qt::Orientation)
	inherited from QDialog
	calls Qt method Qt::Orientation orientation()

#### Method paintEvent(QPaintEvent $event)
	[virtual] [protected] inherited from QWidget
	called as Qt method void paintEvent(QPaintEvent* event)

#### Method reject()
	[slot] [virtual] inherited from QDialog
	called as Qt method void reject()

#### Method rejected()
	[signal] inherited from QDialog
	calls Qt method void rejected()

#### Method render(QPaintDevice $target, QPoint $targetOffset = QPoint.new(), QRegion $sourceRegion = QRegion.new(), Int $renderFlags = RenderFlags(DrawWindowBackground +| DrawChildren))
	inherited from QWidget
	calls Qt method void render(QPaintDevice* target, const QPoint& targetOffset = QPoint(), const QRegion& sourceRegion = QRegion(), RenderFlags renderFlags = RenderFlags(DrawWindowBackground | DrawChildren))

#### Method repaint()
	[slot] inherited from QWidget
	calls Qt method void repaint()

#### Method repaint(Int $x, Int $y, Int $w, Int $h)
	inherited from QWidget
	calls Qt method void repaint(int x, int y, int w, int h)

#### Method resizeEvent(QResizeEvent $event)
	[virtual] [protected] inherited from QWidget
	called as Qt method void resizeEvent(QResizeEvent* event)

#### Method result( --> Int)
	inherited from QDialog
	calls Qt method int result()

#### Method setDisabled(Bool $arg1)
	[slot] inherited from QWidget
	calls Qt method void setDisabled(bool arg1)

#### Method setExtension(QWidget $extension)
	inherited from QDialog
	calls Qt method void setExtension(QWidget* extension)

#### Method setFixedHeight(Int $h)
	inherited from QWidget
	calls Qt method void setFixedHeight(int h)

#### Method setFixedSize(Int $w, Int $h)
	inherited from QWidget
	calls Qt method void setFixedSize(int w, int h)

#### Method setFixedWidth(Int $w)
	inherited from QWidget
	calls Qt method void setFixedWidth(int w)

#### Method setFont(QFont $arg1)
	inherited from QWidget
	calls Qt method void setFont(const QFont& arg1)

#### Method setInformativeText(Str $text)
	calls Qt method void setInformativeText(const QString& text)

#### Method setLayout(QLayout $arg1)
	inherited from QWidget
	calls Qt method void setLayout(QLayout* arg1)

#### Method setMaximumHeight(Int $maxh)
	inherited from QWidget
	calls Qt method void setMaximumHeight(int maxh)

#### Method setMaximumSize(Int $maxw, Int $maxh)
	inherited from QWidget
	calls Qt method void setMaximumSize(int maxw, int maxh)

#### Method setMaximumWidth(Int $maxw)
	inherited from QWidget
	calls Qt method void setMaximumWidth(int maxw)

#### Method setMinimumHeight(Int $minh)
	inherited from QWidget
	calls Qt method void setMinimumHeight(int minh)

#### Method setMinimumSize(Int $minw, Int $minh)
	inherited from QWidget
	calls Qt method void setMinimumSize(int minw, int minh)

#### Method setMinimumWidth(Int $minw)
	inherited from QWidget
	calls Qt method void setMinimumWidth(int minw)

#### Method setModal(Bool $modal)
	inherited from QDialog
	calls Qt method void setModal(bool modal)

#### Method setMouseTracking(Bool $enable)
	inherited from QWidget
	calls Qt method void setMouseTracking(bool enable)

#### Method setOrientation(Qt::Orientation $orientation)
	inherited from QDialog
	calls Qt method void setOrientation(Qt::Orientation orientation)

#### Method setResult(Int $r)
	inherited from QDialog
	calls Qt method void setResult(int r)

#### Method setSizeGripEnabled(Bool $arg1)
	inherited from QDialog
	calls Qt method void setSizeGripEnabled(bool arg1)

#### Method setSizePolicy(QSizePolicy::Policy $horizontal, QSizePolicy::Policy $vertical)
	inherited from QWidget
	calls Qt method void setSizePolicy(QSizePolicy::Policy horizontal, QSizePolicy::Policy vertical)

#### Method setStandardButtons(Int $buttons)
	calls Qt method void setStandardButtons(StandardButtons buttons)

#### Method setText(Str $text)
	calls Qt method void setText(const QString& text)

#### Method setToolTip(Str $arg1)
	inherited from QWidget
	calls Qt method void setToolTip(const QString& arg1)

#### Method setVisible(Bool $visible)
	[override] inherited from QDialog
	calls Qt method void setVisible(bool visible)

#### Method setWindowTitle(Str $arg1)
	[slot] inherited from QWidget
	calls Qt method void setWindowTitle(const QString& arg1)

#### Method show()
	[slot] inherited from QWidget
	calls Qt method void show()

#### Method update()
	[slot] inherited from QWidget
	calls Qt method void update()

#### Method update(Int $x, Int $y, Int $w, Int $h)
	inherited from QWidget
	calls Qt method void update(int x, int y, int w, int h)

#### Method width( --> Int)
	inherited from QWidget
	calls Qt method int width()


Class QMouseEvent
-----------------
	imported by
		use Qt::QtWidgets::QMouseEvent;

	inherits QInputEvent




#### Method accept()
	inherited from QEvent
	calls Qt method void accept()

#### Method button( --> Qt::MouseButton)
	calls Qt method Qt::MouseButton button()

#### Method QMouseEvent.new(QEvent::Type $type, QPointF $localPos, QPointF $screenPos, Qt::MouseButton $button, Int $buttons, Int $modifiers --> QMouseEvent))
	calls Qt method  QMouseEvent(Type type, const QPointF& localPos, const QPointF& screenPos, Qt::MouseButton button, Qt::MouseButtons buttons, Qt::KeyboardModifiers modifiers)

#### Method QMouseEvent.new(QEvent::Type $type, QPointF $localPos, QPointF $windowPos, QPointF $screenPos, Qt::MouseButton $button, Int $buttons, Int $modifiers, Qt::MouseEventSource $source --> QMouseEvent))
	calls Qt method  QMouseEvent(Type type, const QPointF& localPos, const QPointF& windowPos, const QPointF& screenPos, Qt::MouseButton button, Qt::MouseButtons buttons, Qt::KeyboardModifiers modifiers, Qt::MouseEventSource source)

#### Method QMouseEvent.new(QEvent::Type $type, QPointF $localPos, QPointF $windowPos, QPointF $screenPos, Qt::MouseButton $button, Int $buttons, Int $modifiers --> QMouseEvent))
	calls Qt method  QMouseEvent(Type type, const QPointF& localPos, const QPointF& windowPos, const QPointF& screenPos, Qt::MouseButton button, Qt::MouseButtons buttons, Qt::KeyboardModifiers modifiers)

#### Method QMouseEvent.new(QEvent::Type $type, QPointF $localPos, Qt::MouseButton $button, Int $buttons, Int $modifiers --> QMouseEvent))
	calls Qt method  QMouseEvent(Type type, const QPointF& localPos, Qt::MouseButton button, Qt::MouseButtons buttons, Qt::KeyboardModifiers modifiers)

#### Method ignore()
	inherited from QEvent
	calls Qt method void ignore()

#### Method isAccepted( --> Bool)
	inherited from QEvent
	calls Qt method bool isAccepted()

#### Method spontaneous( --> Bool)
	inherited from QEvent
	calls Qt method bool spontaneous()

#### Method type( --> QEvent::Type)
	inherited from QEvent
	calls Qt method Type type()

#### Method x( --> Int)
	calls Qt method int x()

#### Method y( --> Int)
	calls Qt method int y()


Class QPaintDevice
------------------
	imported by
		use Qt::QtWidgets::QPaintDevice;


	inherited by QImage, QPixmap, QWidget


WARNING: This class has no constructor. So it can't be used to create an object explicitely.


Class QPaintEvent
-----------------
	imported by
		use Qt::QtWidgets::QPaintEvent;

	inherits QEvent




#### Method accept()
	inherited from QEvent
	calls Qt method void accept()

#### Method QPaintEvent.new(QRect $paintRect --> QPaintEvent))
	calls Qt method  QPaintEvent(const QRect& paintRect)

#### Method ignore()
	inherited from QEvent
	calls Qt method void ignore()

#### Method isAccepted( --> Bool)
	inherited from QEvent
	calls Qt method bool isAccepted()

#### Method rect( --> QRect)
	calls Qt method QRect & rect()

#### Method spontaneous( --> Bool)
	inherited from QEvent
	calls Qt method bool spontaneous()

#### Method type( --> QEvent::Type)
	inherited from QEvent
	calls Qt method Type type()


Class QPainter
--------------
	imported by
		use Qt::QtWidgets::QPainter;





#### Method begin(QPaintDevice $arg1 --> Bool)
	calls Qt method bool begin(QPaintDevice* arg1)

#### Method boundingRect(Int $x, Int $y, Int $w, Int $h, Int $flags, Str $text --> QRect)
	calls Qt method QRect boundingRect(int x, int y, int w, int h, int flags, const QString& text)

#### Method boundingRect(QRect $rect, Int $flags, Str $text --> QRect)
	calls Qt method QRect boundingRect(const QRect& rect, int flags, const QString& text)

#### Method QPainter.new(QPaintDevice $arg1 --> QPainter))
	calls Qt method  QPainter(QPaintDevice* arg1)

#### Method QPainter.new( --> QPainter))
	calls Qt method  QPainter()

#### Method drawEllipse(Int $x, Int $y, Int $w, Int $h)
	calls Qt method void drawEllipse(int x, int y, int w, int h)

#### Method drawLine(Int $x1, Int $y1, Int $x2, Int $y2)
	calls Qt method void drawLine(int x1, int y1, int x2, int y2)

#### Method drawRect(Int $x1, Int $y1, Int $w, Int $h)
	calls Qt method void drawRect(int x1, int y1, int w, int h)

#### Method drawRect(QRect $rect)
	calls Qt method void drawRect(const QRect& rect)

#### Method drawText(Int $x, Int $y, Str $s)
	calls Qt method void drawText(int x, int y, const QString& s)

#### Method drawText(QRect $r, Int $flags, Str $text, QRect $br = (QRect))
	calls Qt method void drawText(const QRect& r, int flags, const QString& text, QRect* br = nullptr)

#### Method end( --> Bool)
	calls Qt method bool end()

#### Method restore()
	calls Qt method void restore()

#### Method save()
	calls Qt method void save()

#### Method setBrush(QBrush $brush)
	calls Qt method void setBrush(const QBrush& brush)

#### Method setFont(QFont $f)
	calls Qt method void setFont(const QFont& f)

#### Method setPen(QPen $pen)
	calls Qt method void setPen(const QPen& pen)

#### Method setPen(Qt::PenStyle $style)
	calls Qt method void setPen(Qt::PenStyle style)

#### Method setPen(QColor $color)
	calls Qt method void setPen(const QColor& color)


Class QPainterPath
------------------
	imported by
		use Qt::QtWidgets::QPainterPath;





WARNING: This class has no constructor. So it can't be used to create an object explicitely.


Class QPen
----------
	imported by
		use Qt::QtWidgets::QPen;





#### Method QPen.new(Qt::PenStyle $arg1 --> QPen))
	calls Qt method  QPen(Qt::PenStyle arg1)

#### Method QPen.new(QColor $color --> QPen))
	calls Qt method  QPen(const QColor& color)

#### Method QPen.new( --> QPen))
	calls Qt method  QPen()

#### Method setBrush(QBrush $brush)
	calls Qt method void setBrush(const QBrush& brush)

#### Method setColor(QColor $color)
	calls Qt method void setColor(const QColor& color)

#### Method setWidth(Int $width)
	calls Qt method void setWidth(int width)


Class QPixmap
-------------
	imported by
		use Qt::QtWidgets::QPixmap;

	inherits QPaintDevice




WARNING: This class has no constructor. So it can't be used to create an object explicitely.


Class QPoint
------------
	imported by
		use Qt::QtWidgets::QPoint;





#### Method QPoint.new(Int $xpos, Int $ypos --> QPoint))
	calls Qt method  QPoint(int xpos, int ypos)

#### Method QPoint.new( --> QPoint))
	calls Qt method  QPoint()

#### Method isNull( --> Bool)
	calls Qt method bool isNull()

#### Method manhattanLength( --> Int)
	calls Qt method int manhattanLength()

#### Method setX(Int $x)
	calls Qt method void setX(int x)

#### Method setY(Int $y)
	calls Qt method void setY(int y)

#### Method x( --> Int)
	calls Qt method int x()

#### Method y( --> Int)
	calls Qt method int y()


Class QPointF
-------------
	imported by
		use Qt::QtWidgets::QPointF;





#### Method QPointF.new( --> QPointF))
	calls Qt method  QPointF()

#### Method QPointF.new(Real $xpos, Real $ypos --> QPointF))
	calls Qt method  QPointF(qreal xpos, qreal ypos)

#### Method QPointF.new(QPoint $p --> QPointF))
	calls Qt method  QPointF(const QPoint& p)

#### Method isNull( --> Bool)
	calls Qt method bool isNull()

#### Method manhattanLength( --> Real)
	calls Qt method qreal manhattanLength()

#### Method setX(Real $x)
	calls Qt method void setX(qreal x)

#### Method setY(Real $y)
	calls Qt method void setY(qreal y)

#### Method x( --> Real)
	calls Qt method qreal x()

#### Method y( --> Real)
	calls Qt method qreal y()


Class QPushButton
-----------------
	imported by
		use Qt::QtWidgets::QPushButton;

	inherits QAbstractButton




#### Method activateWindow()
	inherited from QWidget
	calls Qt method void activateWindow()

#### Method click()
	[slot] inherited from QAbstractButton
	calls Qt method void click()

#### Method clicked(Bool $checked = False)
	[signal] inherited from QAbstractButton
	calls Qt method void clicked(bool checked = false)

#### Method closeEvent(QCloseEvent $event)
	[virtual] [protected] inherited from QWidget
	called as Qt method void closeEvent(QCloseEvent* event)

#### Method contentsRect( --> QRect)
	inherited from QWidget
	calls Qt method QRect contentsRect()

#### Method QPushButton.new(Str $text, QWidget $parent = (QWidget) --> QPushButton))
	calls Qt method  QPushButton(const QString& text, QWidget* parent = nullptr)

#### Method enterEvent(QEvent $event)
	[virtual] [protected] inherited from QWidget
	called as Qt method void enterEvent(QEvent* event)

#### Method font( --> QFont)
	inherited from QWidget
	calls Qt method QFont & font()

#### Method hasHeightForWidth( --> Bool)
	[virtual] inherited from QWidget
	called as Qt method bool hasHeightForWidth()

#### Method hasMouseTracking( --> Bool)
	inherited from QWidget
	calls Qt method bool hasMouseTracking()

#### Method height( --> Int)
	inherited from QWidget
	calls Qt method int height()

#### Method heightForWidth(Int $arg1 --> Int)
	[virtual] inherited from QWidget
	called as Qt method int heightForWidth(int arg1)

#### Method hide()
	[slot] inherited from QWidget
	calls Qt method void hide()

#### Method isActiveWindow( --> Bool)
	inherited from QWidget
	calls Qt method bool isActiveWindow()

#### Method isCheckable( --> Bool)
	inherited from QAbstractButton
	calls Qt method bool isCheckable()

#### Method isChecked( --> Bool)
	inherited from QAbstractButton
	calls Qt method bool isChecked()

#### Method isDown( --> Bool)
	inherited from QAbstractButton
	calls Qt method bool isDown()

#### Method leaveEvent(QEvent $event)
	[virtual] [protected] inherited from QWidget
	called as Qt method void leaveEvent(QEvent* event)

#### Method mapFrom(QWidget $arg1, QPoint $arg2 --> QPoint)
	inherited from QWidget
	calls Qt method QPoint mapFrom(const QWidget* arg1, const QPoint& arg2)

#### Method mapFromGlobal(QPoint $arg1 --> QPoint)
	inherited from QWidget
	calls Qt method QPoint mapFromGlobal(const QPoint& arg1)

#### Method mapFromParent(QPoint $arg1 --> QPoint)
	inherited from QWidget
	calls Qt method QPoint mapFromParent(const QPoint& arg1)

#### Method mapTo(QWidget $arg1, QPoint $arg2 --> QPoint)
	inherited from QWidget
	calls Qt method QPoint mapTo(const QWidget* arg1, const QPoint& arg2)

#### Method mapToGlobal(QPoint $arg1 --> QPoint)
	inherited from QWidget
	calls Qt method QPoint mapToGlobal(const QPoint& arg1)

#### Method mapToParent(QPoint $arg1 --> QPoint)
	inherited from QWidget
	calls Qt method QPoint mapToParent(const QPoint& arg1)

#### Method mouseMoveEvent(QMouseEvent $event)
	[virtual] [protected] inherited from QWidget
	called as Qt method void mouseMoveEvent(QMouseEvent* event)

#### Method mousePressEvent(QMouseEvent $event)
	[virtual] [protected] inherited from QWidget
	called as Qt method void mousePressEvent(QMouseEvent* event)

#### Method mouseReleaseEvent(QMouseEvent $event)
	[virtual] [protected] inherited from QWidget
	called as Qt method void mouseReleaseEvent(QMouseEvent* event)

#### Method nextCheckState()
	[virtual] [protected] inherited from QAbstractButton
	called as Qt method void nextCheckState()

#### Method paintEvent(QPaintEvent $event)
	[virtual] [protected] inherited from QWidget
	called as Qt method void paintEvent(QPaintEvent* event)

#### Method pressed()
	[signal] inherited from QAbstractButton
	calls Qt method void pressed()

#### Method released()
	[signal] inherited from QAbstractButton
	calls Qt method void released()

#### Method render(QPaintDevice $target, QPoint $targetOffset = QPoint.new(), QRegion $sourceRegion = QRegion.new(), Int $renderFlags = RenderFlags(DrawWindowBackground +| DrawChildren))
	inherited from QWidget
	calls Qt method void render(QPaintDevice* target, const QPoint& targetOffset = QPoint(), const QRegion& sourceRegion = QRegion(), RenderFlags renderFlags = RenderFlags(DrawWindowBackground | DrawChildren))

#### Method repaint(Int $x, Int $y, Int $w, Int $h)
	inherited from QWidget
	calls Qt method void repaint(int x, int y, int w, int h)

#### Method repaint()
	[slot] inherited from QWidget
	calls Qt method void repaint()

#### Method resizeEvent(QResizeEvent $event)
	[virtual] [protected] inherited from QWidget
	called as Qt method void resizeEvent(QResizeEvent* event)

#### Method setAutoExclusive(Bool $arg1)
	inherited from QAbstractButton
	calls Qt method void setAutoExclusive(bool arg1)

#### Method setCheckable(Bool $arg1)
	inherited from QAbstractButton
	calls Qt method void setCheckable(bool arg1)

#### Method setChecked(Bool $arg1)
	[slot] inherited from QAbstractButton
	calls Qt method void setChecked(bool arg1)

#### Method setDisabled(Bool $arg1)
	[slot] inherited from QWidget
	calls Qt method void setDisabled(bool arg1)

#### Method setDown(Bool $arg1)
	inherited from QAbstractButton
	calls Qt method void setDown(bool arg1)

#### Method setFixedHeight(Int $h)
	inherited from QWidget
	calls Qt method void setFixedHeight(int h)

#### Method setFixedSize(Int $w, Int $h)
	inherited from QWidget
	calls Qt method void setFixedSize(int w, int h)

#### Method setFixedWidth(Int $w)
	inherited from QWidget
	calls Qt method void setFixedWidth(int w)

#### Method setFont(QFont $arg1)
	inherited from QWidget
	calls Qt method void setFont(const QFont& arg1)

#### Method setLayout(QLayout $arg1)
	inherited from QWidget
	calls Qt method void setLayout(QLayout* arg1)

#### Method setMaximumHeight(Int $maxh)
	inherited from QWidget
	calls Qt method void setMaximumHeight(int maxh)

#### Method setMaximumSize(Int $maxw, Int $maxh)
	inherited from QWidget
	calls Qt method void setMaximumSize(int maxw, int maxh)

#### Method setMaximumWidth(Int $maxw)
	inherited from QWidget
	calls Qt method void setMaximumWidth(int maxw)

#### Method setMenu(QMenu $menu)
	calls Qt method void setMenu(QMenu* menu)

#### Method setMinimumHeight(Int $minh)
	inherited from QWidget
	calls Qt method void setMinimumHeight(int minh)

#### Method setMinimumSize(Int $minw, Int $minh)
	inherited from QWidget
	calls Qt method void setMinimumSize(int minw, int minh)

#### Method setMinimumWidth(Int $minw)
	inherited from QWidget
	calls Qt method void setMinimumWidth(int minw)

#### Method setMouseTracking(Bool $enable)
	inherited from QWidget
	calls Qt method void setMouseTracking(bool enable)

#### Method setSizePolicy(QSizePolicy::Policy $horizontal, QSizePolicy::Policy $vertical)
	inherited from QWidget
	calls Qt method void setSizePolicy(QSizePolicy::Policy horizontal, QSizePolicy::Policy vertical)

#### Method setText(Str $text)
	inherited from QAbstractButton
	calls Qt method void setText(const QString& text)

#### Method setToolTip(Str $arg1)
	inherited from QWidget
	calls Qt method void setToolTip(const QString& arg1)

#### Method setWindowTitle(Str $arg1)
	[slot] inherited from QWidget
	calls Qt method void setWindowTitle(const QString& arg1)

#### Method show()
	[slot] inherited from QWidget
	calls Qt method void show()

#### Method text( --> Str)
	inherited from QAbstractButton
	calls Qt method QString text()

#### Method toggle()
	[slot] inherited from QAbstractButton
	calls Qt method void toggle()

#### Method toggled(Bool $checked)
	[signal] inherited from QAbstractButton
	calls Qt method void toggled(bool checked)

#### Method update(Int $x, Int $y, Int $w, Int $h)
	inherited from QWidget
	calls Qt method void update(int x, int y, int w, int h)

#### Method update()
	[slot] inherited from QWidget
	calls Qt method void update()

#### Method width( --> Int)
	inherited from QWidget
	calls Qt method int width()


Class QRadioButton
------------------
	imported by
		use Qt::QtWidgets::QRadioButton;

	inherits QAbstractButton




#### Method activateWindow()
	inherited from QWidget
	calls Qt method void activateWindow()

#### Method click()
	[slot] inherited from QAbstractButton
	calls Qt method void click()

#### Method clicked(Bool $checked = False)
	[signal] inherited from QAbstractButton
	calls Qt method void clicked(bool checked = false)

#### Method closeEvent(QCloseEvent $event)
	[virtual] [protected] inherited from QWidget
	called as Qt method void closeEvent(QCloseEvent* event)

#### Method contentsRect( --> QRect)
	inherited from QWidget
	calls Qt method QRect contentsRect()

#### Method QRadioButton.new(Str $text, QWidget $parent = (QWidget) --> QRadioButton))
	calls Qt method  QRadioButton(const QString& text, QWidget* parent = nullptr)

#### Method QRadioButton.new(QWidget $parent = (QWidget) --> QRadioButton))
	calls Qt method  QRadioButton(QWidget* parent = nullptr)

#### Method enterEvent(QEvent $event)
	[virtual] [protected] inherited from QWidget
	called as Qt method void enterEvent(QEvent* event)

#### Method font( --> QFont)
	inherited from QWidget
	calls Qt method QFont & font()

#### Method hasHeightForWidth( --> Bool)
	[virtual] inherited from QWidget
	called as Qt method bool hasHeightForWidth()

#### Method hasMouseTracking( --> Bool)
	inherited from QWidget
	calls Qt method bool hasMouseTracking()

#### Method height( --> Int)
	inherited from QWidget
	calls Qt method int height()

#### Method heightForWidth(Int $arg1 --> Int)
	[virtual] inherited from QWidget
	called as Qt method int heightForWidth(int arg1)

#### Method hide()
	[slot] inherited from QWidget
	calls Qt method void hide()

#### Method isActiveWindow( --> Bool)
	inherited from QWidget
	calls Qt method bool isActiveWindow()

#### Method isCheckable( --> Bool)
	inherited from QAbstractButton
	calls Qt method bool isCheckable()

#### Method isChecked( --> Bool)
	inherited from QAbstractButton
	calls Qt method bool isChecked()

#### Method isDown( --> Bool)
	inherited from QAbstractButton
	calls Qt method bool isDown()

#### Method leaveEvent(QEvent $event)
	[virtual] [protected] inherited from QWidget
	called as Qt method void leaveEvent(QEvent* event)

#### Method mapFrom(QWidget $arg1, QPoint $arg2 --> QPoint)
	inherited from QWidget
	calls Qt method QPoint mapFrom(const QWidget* arg1, const QPoint& arg2)

#### Method mapFromGlobal(QPoint $arg1 --> QPoint)
	inherited from QWidget
	calls Qt method QPoint mapFromGlobal(const QPoint& arg1)

#### Method mapFromParent(QPoint $arg1 --> QPoint)
	inherited from QWidget
	calls Qt method QPoint mapFromParent(const QPoint& arg1)

#### Method mapTo(QWidget $arg1, QPoint $arg2 --> QPoint)
	inherited from QWidget
	calls Qt method QPoint mapTo(const QWidget* arg1, const QPoint& arg2)

#### Method mapToGlobal(QPoint $arg1 --> QPoint)
	inherited from QWidget
	calls Qt method QPoint mapToGlobal(const QPoint& arg1)

#### Method mapToParent(QPoint $arg1 --> QPoint)
	inherited from QWidget
	calls Qt method QPoint mapToParent(const QPoint& arg1)

#### Method mouseMoveEvent(QMouseEvent $event)
	[virtual] [protected] inherited from QWidget
	called as Qt method void mouseMoveEvent(QMouseEvent* event)

#### Method mousePressEvent(QMouseEvent $event)
	[virtual] [protected] inherited from QWidget
	called as Qt method void mousePressEvent(QMouseEvent* event)

#### Method mouseReleaseEvent(QMouseEvent $event)
	[virtual] [protected] inherited from QWidget
	called as Qt method void mouseReleaseEvent(QMouseEvent* event)

#### Method nextCheckState()
	[virtual] [protected] inherited from QAbstractButton
	called as Qt method void nextCheckState()

#### Method paintEvent(QPaintEvent $event)
	[virtual] [protected] inherited from QWidget
	called as Qt method void paintEvent(QPaintEvent* event)

#### Method pressed()
	[signal] inherited from QAbstractButton
	calls Qt method void pressed()

#### Method released()
	[signal] inherited from QAbstractButton
	calls Qt method void released()

#### Method render(QPaintDevice $target, QPoint $targetOffset = QPoint.new(), QRegion $sourceRegion = QRegion.new(), Int $renderFlags = RenderFlags(DrawWindowBackground +| DrawChildren))
	inherited from QWidget
	calls Qt method void render(QPaintDevice* target, const QPoint& targetOffset = QPoint(), const QRegion& sourceRegion = QRegion(), RenderFlags renderFlags = RenderFlags(DrawWindowBackground | DrawChildren))

#### Method repaint(Int $x, Int $y, Int $w, Int $h)
	inherited from QWidget
	calls Qt method void repaint(int x, int y, int w, int h)

#### Method repaint()
	[slot] inherited from QWidget
	calls Qt method void repaint()

#### Method resizeEvent(QResizeEvent $event)
	[virtual] [protected] inherited from QWidget
	called as Qt method void resizeEvent(QResizeEvent* event)

#### Method setAutoExclusive(Bool $arg1)
	inherited from QAbstractButton
	calls Qt method void setAutoExclusive(bool arg1)

#### Method setCheckable(Bool $arg1)
	inherited from QAbstractButton
	calls Qt method void setCheckable(bool arg1)

#### Method setChecked(Bool $arg1)
	[slot] inherited from QAbstractButton
	calls Qt method void setChecked(bool arg1)

#### Method setDisabled(Bool $arg1)
	[slot] inherited from QWidget
	calls Qt method void setDisabled(bool arg1)

#### Method setDown(Bool $arg1)
	inherited from QAbstractButton
	calls Qt method void setDown(bool arg1)

#### Method setFixedHeight(Int $h)
	inherited from QWidget
	calls Qt method void setFixedHeight(int h)

#### Method setFixedSize(Int $w, Int $h)
	inherited from QWidget
	calls Qt method void setFixedSize(int w, int h)

#### Method setFixedWidth(Int $w)
	inherited from QWidget
	calls Qt method void setFixedWidth(int w)

#### Method setFont(QFont $arg1)
	inherited from QWidget
	calls Qt method void setFont(const QFont& arg1)

#### Method setLayout(QLayout $arg1)
	inherited from QWidget
	calls Qt method void setLayout(QLayout* arg1)

#### Method setMaximumHeight(Int $maxh)
	inherited from QWidget
	calls Qt method void setMaximumHeight(int maxh)

#### Method setMaximumSize(Int $maxw, Int $maxh)
	inherited from QWidget
	calls Qt method void setMaximumSize(int maxw, int maxh)

#### Method setMaximumWidth(Int $maxw)
	inherited from QWidget
	calls Qt method void setMaximumWidth(int maxw)

#### Method setMinimumHeight(Int $minh)
	inherited from QWidget
	calls Qt method void setMinimumHeight(int minh)

#### Method setMinimumSize(Int $minw, Int $minh)
	inherited from QWidget
	calls Qt method void setMinimumSize(int minw, int minh)

#### Method setMinimumWidth(Int $minw)
	inherited from QWidget
	calls Qt method void setMinimumWidth(int minw)

#### Method setMouseTracking(Bool $enable)
	inherited from QWidget
	calls Qt method void setMouseTracking(bool enable)

#### Method setSizePolicy(QSizePolicy::Policy $horizontal, QSizePolicy::Policy $vertical)
	inherited from QWidget
	calls Qt method void setSizePolicy(QSizePolicy::Policy horizontal, QSizePolicy::Policy vertical)

#### Method setText(Str $text)
	inherited from QAbstractButton
	calls Qt method void setText(const QString& text)

#### Method setToolTip(Str $arg1)
	inherited from QWidget
	calls Qt method void setToolTip(const QString& arg1)

#### Method setWindowTitle(Str $arg1)
	[slot] inherited from QWidget
	calls Qt method void setWindowTitle(const QString& arg1)

#### Method show()
	[slot] inherited from QWidget
	calls Qt method void show()

#### Method text( --> Str)
	inherited from QAbstractButton
	calls Qt method QString text()

#### Method toggle()
	[slot] inherited from QAbstractButton
	calls Qt method void toggle()

#### Method toggled(Bool $checked)
	[signal] inherited from QAbstractButton
	calls Qt method void toggled(bool checked)

#### Method update()
	[slot] inherited from QWidget
	calls Qt method void update()

#### Method update(Int $x, Int $y, Int $w, Int $h)
	inherited from QWidget
	calls Qt method void update(int x, int y, int w, int h)

#### Method width( --> Int)
	inherited from QWidget
	calls Qt method int width()


Class QRect
-----------
	imported by
		use Qt::QtWidgets::QRect;





#### Method adjust(Int $x1, Int $y1, Int $x2, Int $y2)
	calls Qt method void adjust(int x1, int y1, int x2, int y2)

#### Method adjusted(Int $x1, Int $y1, Int $x2, Int $y2 --> QRect)
	calls Qt method QRect adjusted(int x1, int y1, int x2, int y2)

#### Method bottom( --> Int)
	calls Qt method int bottom()

#### Method bottomLeft( --> QPoint)
	calls Qt method QPoint bottomLeft()

#### Method bottomRight( --> QPoint)
	calls Qt method QPoint bottomRight()

#### Method center( --> QPoint)
	calls Qt method QPoint center()

#### Method QRect.new( --> QRect))
	calls Qt method  QRect()

#### Method QRect.new(Int $left, Int $top, Int $width, Int $height --> QRect))
	calls Qt method  QRect(int left, int top, int width, int height)

#### Method QRect.new(QPoint $topleft, QPoint $bottomright --> QRect))
	calls Qt method  QRect(const QPoint& topleft, const QPoint& bottomright)

#### Method height( --> Int)
	calls Qt method int height()

#### Method isEmpty( --> Bool)
	calls Qt method bool isEmpty()

#### Method isNull( --> Bool)
	calls Qt method bool isNull()

#### Method isValid( --> Bool)
	calls Qt method bool isValid()

#### Method left( --> Int)
	calls Qt method int left()

#### Method normalized( --> QRect)
	calls Qt method QRect normalized()

#### Method right( --> Int)
	calls Qt method int right()

#### Method setHeight(Int $h)
	calls Qt method void setHeight(int h)

#### Method setRect(Int $x, Int $y, Int $w, Int $h)
	calls Qt method void setRect(int x, int y, int w, int h)

#### Method setWidth(Int $w)
	calls Qt method void setWidth(int w)

#### Method setX(Int $x)
	calls Qt method void setX(int x)

#### Method setY(Int $y)
	calls Qt method void setY(int y)

#### Method size( --> QSize)
	calls Qt method QSize size()

#### Method top( --> Int)
	calls Qt method int top()

#### Method topLeft( --> QPoint)
	calls Qt method QPoint topLeft()

#### Method topRight( --> QPoint)
	calls Qt method QPoint topRight()

#### Method translate(Int $dx, Int $dy)
	calls Qt method void translate(int dx, int dy)

#### Method translate(QPoint $p)
	calls Qt method void translate(const QPoint& p)

#### Method translated(Int $dx, Int $dy --> QRect)
	calls Qt method QRect translated(int dx, int dy)

#### Method translated(QPoint $p --> QRect)
	calls Qt method QRect translated(const QPoint& p)

#### Method transposed( --> QRect)
	calls Qt method QRect transposed()

#### Method united(QRect $other --> QRect)
	calls Qt method QRect united(const QRect& other)

#### Method width( --> Int)
	calls Qt method int width()

#### Method x( --> Int)
	calls Qt method int x()

#### Method y( --> Int)
	calls Qt method int y()


Class QRectF
------------
	imported by
		use Qt::QtWidgets::QRectF;





#### Method bottom( --> Real)
	calls Qt method qreal bottom()

#### Method bottomLeft( --> QPointF)
	calls Qt method QPointF bottomLeft()

#### Method bottomRight( --> QPointF)
	calls Qt method QPointF bottomRight()

#### Method center( --> QPointF)
	calls Qt method QPointF center()

#### Method QRectF.new(QRect $rect --> QRectF))
	calls Qt method  QRectF(const QRect& rect)

#### Method QRectF.new(Real $left, Real $top, Real $width, Real $height --> QRectF))
	calls Qt method  QRectF(qreal left, qreal top, qreal width, qreal height)

#### Method QRectF.new(QPointF $topleft, QSizeF $size --> QRectF))
	calls Qt method  QRectF(const QPointF& topleft, const QSizeF& size)

#### Method QRectF.new(QPointF $topleft, QPointF $bottomRight --> QRectF))
	calls Qt method  QRectF(const QPointF& topleft, const QPointF& bottomRight)

#### Method QRectF.new( --> QRectF))
	calls Qt method  QRectF()

#### Method height( --> Real)
	calls Qt method qreal height()

#### Method isEmpty( --> Bool)
	calls Qt method bool isEmpty()

#### Method isNull( --> Bool)
	calls Qt method bool isNull()

#### Method isValid( --> Bool)
	calls Qt method bool isValid()

#### Method left( --> Real)
	calls Qt method qreal left()

#### Method normalized( --> QRectF)
	calls Qt method QRectF normalized()

#### Method right( --> Real)
	calls Qt method qreal right()

#### Method setHeight(Real $h)
	calls Qt method void setHeight(qreal h)

#### Method setRect(Real $x, Real $y, Real $w, Real $h)
	calls Qt method void setRect(qreal x, qreal y, qreal w, qreal h)

#### Method setSize(QSizeF $s)
	calls Qt method void setSize(const QSizeF& s)

#### Method setWidth(Real $w)
	calls Qt method void setWidth(qreal w)

#### Method setX(Real $pos)
	calls Qt method void setX(qreal pos)

#### Method setY(Real $pos)
	calls Qt method void setY(qreal pos)

#### Method size( --> QSizeF)
	calls Qt method QSizeF size()

#### Method toAlignedRect( --> QRect)
	calls Qt method QRect toAlignedRect()

#### Method toRect( --> QRect)
	calls Qt method QRect toRect()

#### Method top( --> Real)
	calls Qt method qreal top()

#### Method topLeft( --> QPointF)
	calls Qt method QPointF topLeft()

#### Method topRight( --> QPointF)
	calls Qt method QPointF topRight()

#### Method transposed( --> QRectF)
	calls Qt method QRectF transposed()

#### Method width( --> Real)
	calls Qt method qreal width()

#### Method x( --> Real)
	calls Qt method qreal x()

#### Method y( --> Real)
	calls Qt method qreal y()


Class QRegion
-------------
	imported by
		use Qt::QtWidgets::QRegion;





#### Method QRegion.new( --> QRegion))
	calls Qt method  QRegion()


Class QResizeEvent
------------------
	imported by
		use Qt::QtWidgets::QResizeEvent;

	inherits QEvent




#### Method accept()
	inherited from QEvent
	calls Qt method void accept()

#### Method QResizeEvent.new(QSize $size, QSize $oldSize --> QResizeEvent))
	calls Qt method  QResizeEvent(const QSize& size, const QSize& oldSize)

#### Method ignore()
	inherited from QEvent
	calls Qt method void ignore()

#### Method isAccepted( --> Bool)
	inherited from QEvent
	calls Qt method bool isAccepted()

#### Method oldSize( --> QSize)
	calls Qt method QSize & oldSize()

#### Method size( --> QSize)
	calls Qt method QSize & size()

#### Method spontaneous( --> Bool)
	inherited from QEvent
	calls Qt method bool spontaneous()

#### Method type( --> QEvent::Type)
	inherited from QEvent
	calls Qt method Type type()


Class QSize
-----------
	imported by
		use Qt::QtWidgets::QSize;





#### Method boundedTo(QSize $arg1 --> QSize)
	calls Qt method QSize boundedTo(const QSize& arg1)

#### Method QSize.new(Int $w, Int $h --> QSize))
	calls Qt method  QSize(int w, int h)

#### Method QSize.new( --> QSize))
	calls Qt method  QSize()

#### Method expandedTo(QSize $arg1 --> QSize)
	calls Qt method QSize expandedTo(const QSize& arg1)

#### Method height( --> Int)
	calls Qt method int height()

#### Method isEmpty( --> Bool)
	calls Qt method bool isEmpty()

#### Method isNull( --> Bool)
	calls Qt method bool isNull()

#### Method isValid( --> Bool)
	calls Qt method bool isValid()

#### Method setHeight(Int $h)
	calls Qt method void setHeight(int h)

#### Method setWidth(Int $w)
	calls Qt method void setWidth(int w)

#### Method width( --> Int)
	calls Qt method int width()


Class QSizeF
------------
	imported by
		use Qt::QtWidgets::QSizeF;





WARNING: This class has no constructor. So it can't be used to create an object explicitely.


Class QSizePolicy
-----------------
	imported by
		use Qt::QtWidgets::QSizePolicy;




    enum Policy 

WARNING: This class has no constructor. So it can't be used to create an object explicitely.


Class QSlider
-------------
	imported by
		use Qt::QtWidgets::QSlider;

	inherits QAbstractSlider



    enum TickPosition 

#### Method activateWindow()
	inherited from QWidget
	calls Qt method void activateWindow()

#### Method closeEvent(QCloseEvent $event)
	[virtual] [protected] inherited from QWidget
	called as Qt method void closeEvent(QCloseEvent* event)

#### Method contentsRect( --> QRect)
	inherited from QWidget
	calls Qt method QRect contentsRect()

#### Method QSlider.new(QWidget $parent = (QWidget) --> QSlider))
	calls Qt method  QSlider(QWidget* parent = nullptr)

#### Method QSlider.new(Qt::Orientation $orientation, QWidget $parent = (QWidget) --> QSlider))
	calls Qt method  QSlider(Qt::Orientation orientation, QWidget* parent = nullptr)

#### Method enterEvent(QEvent $event)
	[virtual] [protected] inherited from QWidget
	called as Qt method void enterEvent(QEvent* event)

#### Method font( --> QFont)
	inherited from QWidget
	calls Qt method QFont & font()

#### Method hasHeightForWidth( --> Bool)
	[virtual] inherited from QWidget
	called as Qt method bool hasHeightForWidth()

#### Method hasMouseTracking( --> Bool)
	inherited from QWidget
	calls Qt method bool hasMouseTracking()

#### Method hasTracking( --> Bool)
	inherited from QAbstractSlider
	calls Qt method bool hasTracking()

#### Method height( --> Int)
	inherited from QWidget
	calls Qt method int height()

#### Method heightForWidth(Int $arg1 --> Int)
	[virtual] inherited from QWidget
	called as Qt method int heightForWidth(int arg1)

#### Method hide()
	[slot] inherited from QWidget
	calls Qt method void hide()

#### Method invertedAppearance( --> Bool)
	inherited from QAbstractSlider
	calls Qt method bool invertedAppearance()

#### Method invertedControls( --> Bool)
	inherited from QAbstractSlider
	calls Qt method bool invertedControls()

#### Method isActiveWindow( --> Bool)
	inherited from QWidget
	calls Qt method bool isActiveWindow()

#### Method leaveEvent(QEvent $event)
	[virtual] [protected] inherited from QWidget
	called as Qt method void leaveEvent(QEvent* event)

#### Method mapFrom(QWidget $arg1, QPoint $arg2 --> QPoint)
	inherited from QWidget
	calls Qt method QPoint mapFrom(const QWidget* arg1, const QPoint& arg2)

#### Method mapFromGlobal(QPoint $arg1 --> QPoint)
	inherited from QWidget
	calls Qt method QPoint mapFromGlobal(const QPoint& arg1)

#### Method mapFromParent(QPoint $arg1 --> QPoint)
	inherited from QWidget
	calls Qt method QPoint mapFromParent(const QPoint& arg1)

#### Method mapTo(QWidget $arg1, QPoint $arg2 --> QPoint)
	inherited from QWidget
	calls Qt method QPoint mapTo(const QWidget* arg1, const QPoint& arg2)

#### Method mapToGlobal(QPoint $arg1 --> QPoint)
	inherited from QWidget
	calls Qt method QPoint mapToGlobal(const QPoint& arg1)

#### Method mapToParent(QPoint $arg1 --> QPoint)
	inherited from QWidget
	calls Qt method QPoint mapToParent(const QPoint& arg1)

#### Method maximum( --> Int)
	inherited from QAbstractSlider
	calls Qt method int maximum()

#### Method minimum( --> Int)
	inherited from QAbstractSlider
	calls Qt method int minimum()

#### Method mouseMoveEvent(QMouseEvent $event)
	[virtual] [protected] inherited from QWidget
	called as Qt method void mouseMoveEvent(QMouseEvent* event)

#### Method mousePressEvent(QMouseEvent $event)
	[virtual] [protected] inherited from QWidget
	called as Qt method void mousePressEvent(QMouseEvent* event)

#### Method mouseReleaseEvent(QMouseEvent $event)
	[virtual] [protected] inherited from QWidget
	called as Qt method void mouseReleaseEvent(QMouseEvent* event)

#### Method orientation( --> Qt::Orientation)
	inherited from QAbstractSlider
	calls Qt method Qt::Orientation orientation()

#### Method pageStep( --> Int)
	inherited from QAbstractSlider
	calls Qt method int pageStep()

#### Method paintEvent(QPaintEvent $event)
	[virtual] [protected] inherited from QWidget
	called as Qt method void paintEvent(QPaintEvent* event)

#### Method render(QPaintDevice $target, QPoint $targetOffset = QPoint.new(), QRegion $sourceRegion = QRegion.new(), Int $renderFlags = RenderFlags(DrawWindowBackground +| DrawChildren))
	inherited from QWidget
	calls Qt method void render(QPaintDevice* target, const QPoint& targetOffset = QPoint(), const QRegion& sourceRegion = QRegion(), RenderFlags renderFlags = RenderFlags(DrawWindowBackground | DrawChildren))

#### Method repaint()
	[slot] inherited from QWidget
	calls Qt method void repaint()

#### Method repaint(Int $x, Int $y, Int $w, Int $h)
	inherited from QWidget
	calls Qt method void repaint(int x, int y, int w, int h)

#### Method resizeEvent(QResizeEvent $event)
	[virtual] [protected] inherited from QWidget
	called as Qt method void resizeEvent(QResizeEvent* event)

#### Method setDisabled(Bool $arg1)
	[slot] inherited from QWidget
	calls Qt method void setDisabled(bool arg1)

#### Method setFixedHeight(Int $h)
	inherited from QWidget
	calls Qt method void setFixedHeight(int h)

#### Method setFixedSize(Int $w, Int $h)
	inherited from QWidget
	calls Qt method void setFixedSize(int w, int h)

#### Method setFixedWidth(Int $w)
	inherited from QWidget
	calls Qt method void setFixedWidth(int w)

#### Method setFont(QFont $arg1)
	inherited from QWidget
	calls Qt method void setFont(const QFont& arg1)

#### Method setInvertedAppearance(Bool $arg1)
	inherited from QAbstractSlider
	calls Qt method void setInvertedAppearance(bool arg1)

#### Method setInvertedControls(Bool $arg1)
	inherited from QAbstractSlider
	calls Qt method void setInvertedControls(bool arg1)

#### Method setLayout(QLayout $arg1)
	inherited from QWidget
	calls Qt method void setLayout(QLayout* arg1)

#### Method setMaximum(Int $arg1)
	inherited from QAbstractSlider
	calls Qt method void setMaximum(int arg1)

#### Method setMaximumHeight(Int $maxh)
	inherited from QWidget
	calls Qt method void setMaximumHeight(int maxh)

#### Method setMaximumSize(Int $maxw, Int $maxh)
	inherited from QWidget
	calls Qt method void setMaximumSize(int maxw, int maxh)

#### Method setMaximumWidth(Int $maxw)
	inherited from QWidget
	calls Qt method void setMaximumWidth(int maxw)

#### Method setMinimum(Int $arg1)
	inherited from QAbstractSlider
	calls Qt method void setMinimum(int arg1)

#### Method setMinimumHeight(Int $minh)
	inherited from QWidget
	calls Qt method void setMinimumHeight(int minh)

#### Method setMinimumSize(Int $minw, Int $minh)
	inherited from QWidget
	calls Qt method void setMinimumSize(int minw, int minh)

#### Method setMinimumWidth(Int $minw)
	inherited from QWidget
	calls Qt method void setMinimumWidth(int minw)

#### Method setMouseTracking(Bool $enable)
	inherited from QWidget
	calls Qt method void setMouseTracking(bool enable)

#### Method setOrientation(Qt::Orientation $arg1)
	[slot] inherited from QAbstractSlider
	calls Qt method void setOrientation(Qt::Orientation arg1)

#### Method setPageStep(Int $arg1)
	inherited from QAbstractSlider
	calls Qt method void setPageStep(int arg1)

#### Method setRange(Int $min, Int $max)
	[slot] inherited from QAbstractSlider
	calls Qt method void setRange(int min, int max)

#### Method setSingleStep(Int $arg1)
	inherited from QAbstractSlider
	calls Qt method void setSingleStep(int arg1)

#### Method setSizePolicy(QSizePolicy::Policy $horizontal, QSizePolicy::Policy $vertical)
	inherited from QWidget
	calls Qt method void setSizePolicy(QSizePolicy::Policy horizontal, QSizePolicy::Policy vertical)

#### Method setSliderDown(Bool $arg1)
	inherited from QAbstractSlider
	calls Qt method void setSliderDown(bool arg1)

#### Method setSliderPosition(Int $arg1)
	inherited from QAbstractSlider
	calls Qt method void setSliderPosition(int arg1)

#### Method setTickInterval(Int $ti)
	calls Qt method void setTickInterval(int ti)

#### Method setTickPosition(QSlider::TickPosition $position)
	calls Qt method void setTickPosition(TickPosition position)

#### Method setToolTip(Str $arg1)
	inherited from QWidget
	calls Qt method void setToolTip(const QString& arg1)

#### Method setTracking(Bool $enable)
	inherited from QAbstractSlider
	calls Qt method void setTracking(bool enable)

#### Method setValue(Int $arg1)
	[slot] inherited from QAbstractSlider
	calls Qt method void setValue(int arg1)

#### Method setWindowTitle(Str $arg1)
	[slot] inherited from QWidget
	calls Qt method void setWindowTitle(const QString& arg1)

#### Method show()
	[slot] inherited from QWidget
	calls Qt method void show()

#### Method singleStep( --> Int)
	inherited from QAbstractSlider
	calls Qt method int singleStep()

#### Method sliderMoved(Int $position)
	[signal] inherited from QAbstractSlider
	calls Qt method void sliderMoved(int position)

#### Method sliderPosition( --> Int)
	inherited from QAbstractSlider
	calls Qt method int sliderPosition()

#### Method sliderPressed()
	[signal] inherited from QAbstractSlider
	calls Qt method void sliderPressed()

#### Method sliderReleased()
	[signal] inherited from QAbstractSlider
	calls Qt method void sliderReleased()

#### Method tickInterval( --> Int)
	calls Qt method int tickInterval()

#### Method tickPosition( --> QSlider::TickPosition)
	calls Qt method TickPosition tickPosition()

#### Method update()
	[slot] inherited from QWidget
	calls Qt method void update()

#### Method update(Int $x, Int $y, Int $w, Int $h)
	inherited from QWidget
	calls Qt method void update(int x, int y, int w, int h)

#### Method value( --> Int)
	inherited from QAbstractSlider
	calls Qt method int value()

#### Method valueChanged(Int $value)
	[signal] inherited from QAbstractSlider
	calls Qt method void valueChanged(int value)

#### Method width( --> Int)
	inherited from QWidget
	calls Qt method int width()


Class QStatusBar
----------------
	imported by
		use Qt::QtWidgets::QStatusBar;

	inherits QWidget




#### Method activateWindow()
	inherited from QWidget
	calls Qt method void activateWindow()

#### Method addPermanentWidget(QWidget $widget, Int $stretch = 0)
	calls Qt method void addPermanentWidget(QWidget* widget, int stretch = 0)

#### Method addWidget(QWidget $widget, Int $stretch = 0)
	calls Qt method void addWidget(QWidget* widget, int stretch = 0)

#### Method clearMessage()
	[slot] 
	calls Qt method void clearMessage()

#### Method closeEvent(QCloseEvent $event)
	[virtual] [protected] inherited from QWidget
	called as Qt method void closeEvent(QCloseEvent* event)

#### Method contentsRect( --> QRect)
	inherited from QWidget
	calls Qt method QRect contentsRect()

#### Method QStatusBar.new(QWidget $parent = (QWidget) --> QStatusBar))
	calls Qt method  QStatusBar(QWidget* parent = nullptr)

#### Method currentMessage( --> Str)
	calls Qt method QString currentMessage()

#### Method enterEvent(QEvent $event)
	[virtual] [protected] inherited from QWidget
	called as Qt method void enterEvent(QEvent* event)

#### Method event(QEvent $arg1 --> Bool)
	[protected] [override] 
	calls Qt method bool event(QEvent* arg1)

#### Method font( --> QFont)
	inherited from QWidget
	calls Qt method QFont & font()

#### Method hasHeightForWidth( --> Bool)
	[virtual] inherited from QWidget
	called as Qt method bool hasHeightForWidth()

#### Method hasMouseTracking( --> Bool)
	inherited from QWidget
	calls Qt method bool hasMouseTracking()

#### Method height( --> Int)
	inherited from QWidget
	calls Qt method int height()

#### Method heightForWidth(Int $arg1 --> Int)
	[virtual] inherited from QWidget
	called as Qt method int heightForWidth(int arg1)

#### Method hide()
	[slot] inherited from QWidget
	calls Qt method void hide()

#### Method hideOrShow()
	[protected] 
	calls Qt method void hideOrShow()

#### Method insertPermanentWidget(Int $index, QWidget $widget, Int $stretch = 0 --> Int)
	calls Qt method int insertPermanentWidget(int index, QWidget* widget, int stretch = 0)

#### Method insertWidget(Int $index, QWidget $widget, Int $stretch = 0 --> Int)
	calls Qt method int insertWidget(int index, QWidget* widget, int stretch = 0)

#### Method isActiveWindow( --> Bool)
	inherited from QWidget
	calls Qt method bool isActiveWindow()

#### Method isSizeGripEnabled( --> Bool)
	calls Qt method bool isSizeGripEnabled()

#### Method leaveEvent(QEvent $event)
	[virtual] [protected] inherited from QWidget
	called as Qt method void leaveEvent(QEvent* event)

#### Method mapFrom(QWidget $arg1, QPoint $arg2 --> QPoint)
	inherited from QWidget
	calls Qt method QPoint mapFrom(const QWidget* arg1, const QPoint& arg2)

#### Method mapFromGlobal(QPoint $arg1 --> QPoint)
	inherited from QWidget
	calls Qt method QPoint mapFromGlobal(const QPoint& arg1)

#### Method mapFromParent(QPoint $arg1 --> QPoint)
	inherited from QWidget
	calls Qt method QPoint mapFromParent(const QPoint& arg1)

#### Method mapTo(QWidget $arg1, QPoint $arg2 --> QPoint)
	inherited from QWidget
	calls Qt method QPoint mapTo(const QWidget* arg1, const QPoint& arg2)

#### Method mapToGlobal(QPoint $arg1 --> QPoint)
	inherited from QWidget
	calls Qt method QPoint mapToGlobal(const QPoint& arg1)

#### Method mapToParent(QPoint $arg1 --> QPoint)
	inherited from QWidget
	calls Qt method QPoint mapToParent(const QPoint& arg1)

#### Method messageChanged(Str $text)
	[signal] 
	calls Qt method void messageChanged(const QString& text)

#### Method mouseMoveEvent(QMouseEvent $event)
	[virtual] [protected] inherited from QWidget
	called as Qt method void mouseMoveEvent(QMouseEvent* event)

#### Method mousePressEvent(QMouseEvent $event)
	[virtual] [protected] inherited from QWidget
	called as Qt method void mousePressEvent(QMouseEvent* event)

#### Method mouseReleaseEvent(QMouseEvent $event)
	[virtual] [protected] inherited from QWidget
	called as Qt method void mouseReleaseEvent(QMouseEvent* event)

#### Method paintEvent(QPaintEvent $arg1)
	[virtual] [protected] [override] 
	called as Qt method void paintEvent(QPaintEvent* arg1)

#### Method reformat()
	[protected] 
	calls Qt method void reformat()

#### Method removeWidget(QWidget $widget)
	calls Qt method void removeWidget(QWidget* widget)

#### Method render(QPaintDevice $target, QPoint $targetOffset = QPoint.new(), QRegion $sourceRegion = QRegion.new(), Int $renderFlags = RenderFlags(DrawWindowBackground +| DrawChildren))
	inherited from QWidget
	calls Qt method void render(QPaintDevice* target, const QPoint& targetOffset = QPoint(), const QRegion& sourceRegion = QRegion(), RenderFlags renderFlags = RenderFlags(DrawWindowBackground | DrawChildren))

#### Method repaint()
	[slot] inherited from QWidget
	calls Qt method void repaint()

#### Method repaint(Int $x, Int $y, Int $w, Int $h)
	inherited from QWidget
	calls Qt method void repaint(int x, int y, int w, int h)

#### Method resizeEvent(QResizeEvent $arg1)
	[virtual] [protected] [override] 
	called as Qt method void resizeEvent(QResizeEvent* arg1)

#### Method setDisabled(Bool $arg1)
	[slot] inherited from QWidget
	calls Qt method void setDisabled(bool arg1)

#### Method setFixedHeight(Int $h)
	inherited from QWidget
	calls Qt method void setFixedHeight(int h)

#### Method setFixedSize(Int $w, Int $h)
	inherited from QWidget
	calls Qt method void setFixedSize(int w, int h)

#### Method setFixedWidth(Int $w)
	inherited from QWidget
	calls Qt method void setFixedWidth(int w)

#### Method setFont(QFont $arg1)
	inherited from QWidget
	calls Qt method void setFont(const QFont& arg1)

#### Method setLayout(QLayout $arg1)
	inherited from QWidget
	calls Qt method void setLayout(QLayout* arg1)

#### Method setMaximumHeight(Int $maxh)
	inherited from QWidget
	calls Qt method void setMaximumHeight(int maxh)

#### Method setMaximumSize(Int $maxw, Int $maxh)
	inherited from QWidget
	calls Qt method void setMaximumSize(int maxw, int maxh)

#### Method setMaximumWidth(Int $maxw)
	inherited from QWidget
	calls Qt method void setMaximumWidth(int maxw)

#### Method setMinimumHeight(Int $minh)
	inherited from QWidget
	calls Qt method void setMinimumHeight(int minh)

#### Method setMinimumSize(Int $minw, Int $minh)
	inherited from QWidget
	calls Qt method void setMinimumSize(int minw, int minh)

#### Method setMinimumWidth(Int $minw)
	inherited from QWidget
	calls Qt method void setMinimumWidth(int minw)

#### Method setMouseTracking(Bool $enable)
	inherited from QWidget
	calls Qt method void setMouseTracking(bool enable)

#### Method setSizeGripEnabled(Bool $arg1)
	calls Qt method void setSizeGripEnabled(bool arg1)

#### Method setSizePolicy(QSizePolicy::Policy $horizontal, QSizePolicy::Policy $vertical)
	inherited from QWidget
	calls Qt method void setSizePolicy(QSizePolicy::Policy horizontal, QSizePolicy::Policy vertical)

#### Method setToolTip(Str $arg1)
	inherited from QWidget
	calls Qt method void setToolTip(const QString& arg1)

#### Method setWindowTitle(Str $arg1)
	[slot] inherited from QWidget
	calls Qt method void setWindowTitle(const QString& arg1)

#### Method show()
	[slot] inherited from QWidget
	calls Qt method void show()

#### Method showMessage(Str $text, Int $timeout = 0)
	[slot] 
	calls Qt method void showMessage(const QString& text, int timeout = 0)

#### Method update(Int $x, Int $y, Int $w, Int $h)
	inherited from QWidget
	calls Qt method void update(int x, int y, int w, int h)

#### Method update()
	[slot] inherited from QWidget
	calls Qt method void update()

#### Method width( --> Int)
	inherited from QWidget
	calls Qt method int width()


Class QTextEdit
---------------
	imported by
		use Qt::QtWidgets::QTextEdit;

	inherits QAbstractScrollArea




#### Method activateWindow()
	inherited from QWidget
	calls Qt method void activateWindow()

#### Method append(Str $text)
	[slot] 
	calls Qt method void append(const QString& text)

#### Method closeEvent(QCloseEvent $event)
	[virtual] [protected] inherited from QWidget
	called as Qt method void closeEvent(QCloseEvent* event)

#### Method contentsRect( --> QRect)
	inherited from QWidget
	calls Qt method QRect contentsRect()

#### Method QTextEdit.new(QWidget $parent = (QWidget) --> QTextEdit))
	calls Qt method  QTextEdit(QWidget* parent = nullptr)

#### Method enterEvent(QEvent $event)
	[virtual] [protected] inherited from QWidget
	called as Qt method void enterEvent(QEvent* event)

#### Method font( --> QFont)
	inherited from QWidget
	calls Qt method QFont & font()

#### Method frameRect( --> QRect)
	inherited from QFrame
	calls Qt method QRect frameRect()

#### Method frameShadow( --> QFrame::Shadow)
	inherited from QFrame
	calls Qt method Shadow frameShadow()

#### Method frameShape( --> QFrame::Shape)
	inherited from QFrame
	calls Qt method Shape frameShape()

#### Method frameStyle( --> Int)
	inherited from QFrame
	calls Qt method int frameStyle()

#### Method frameWidth( --> Int)
	inherited from QFrame
	calls Qt method int frameWidth()

#### Method hasHeightForWidth( --> Bool)
	[virtual] inherited from QWidget
	called as Qt method bool hasHeightForWidth()

#### Method hasMouseTracking( --> Bool)
	inherited from QWidget
	calls Qt method bool hasMouseTracking()

#### Method height( --> Int)
	inherited from QWidget
	calls Qt method int height()

#### Method heightForWidth(Int $arg1 --> Int)
	[virtual] inherited from QWidget
	called as Qt method int heightForWidth(int arg1)

#### Method hide()
	[slot] inherited from QWidget
	calls Qt method void hide()

#### Method isActiveWindow( --> Bool)
	inherited from QWidget
	calls Qt method bool isActiveWindow()

#### Method leaveEvent(QEvent $event)
	[virtual] [protected] inherited from QWidget
	called as Qt method void leaveEvent(QEvent* event)

#### Method lineWidth( --> Int)
	inherited from QFrame
	calls Qt method int lineWidth()

#### Method mapFrom(QWidget $arg1, QPoint $arg2 --> QPoint)
	inherited from QWidget
	calls Qt method QPoint mapFrom(const QWidget* arg1, const QPoint& arg2)

#### Method mapFromGlobal(QPoint $arg1 --> QPoint)
	inherited from QWidget
	calls Qt method QPoint mapFromGlobal(const QPoint& arg1)

#### Method mapFromParent(QPoint $arg1 --> QPoint)
	inherited from QWidget
	calls Qt method QPoint mapFromParent(const QPoint& arg1)

#### Method mapTo(QWidget $arg1, QPoint $arg2 --> QPoint)
	inherited from QWidget
	calls Qt method QPoint mapTo(const QWidget* arg1, const QPoint& arg2)

#### Method mapToGlobal(QPoint $arg1 --> QPoint)
	inherited from QWidget
	calls Qt method QPoint mapToGlobal(const QPoint& arg1)

#### Method mapToParent(QPoint $arg1 --> QPoint)
	inherited from QWidget
	calls Qt method QPoint mapToParent(const QPoint& arg1)

#### Method midLineWidth( --> Int)
	inherited from QFrame
	calls Qt method int midLineWidth()

#### Method mouseMoveEvent(QMouseEvent $event)
	[virtual] [protected] inherited from QWidget
	called as Qt method void mouseMoveEvent(QMouseEvent* event)

#### Method mousePressEvent(QMouseEvent $event)
	[virtual] [protected] inherited from QWidget
	called as Qt method void mousePressEvent(QMouseEvent* event)

#### Method mouseReleaseEvent(QMouseEvent $event)
	[virtual] [protected] inherited from QWidget
	called as Qt method void mouseReleaseEvent(QMouseEvent* event)

#### Method paintEvent(QPaintEvent $event)
	[virtual] [protected] inherited from QWidget
	called as Qt method void paintEvent(QPaintEvent* event)

#### Method render(QPaintDevice $target, QPoint $targetOffset = QPoint.new(), QRegion $sourceRegion = QRegion.new(), Int $renderFlags = RenderFlags(DrawWindowBackground +| DrawChildren))
	inherited from QWidget
	calls Qt method void render(QPaintDevice* target, const QPoint& targetOffset = QPoint(), const QRegion& sourceRegion = QRegion(), RenderFlags renderFlags = RenderFlags(DrawWindowBackground | DrawChildren))

#### Method repaint(Int $x, Int $y, Int $w, Int $h)
	inherited from QWidget
	calls Qt method void repaint(int x, int y, int w, int h)

#### Method repaint()
	[slot] inherited from QWidget
	calls Qt method void repaint()

#### Method resizeEvent(QResizeEvent $event)
	[virtual] [protected] inherited from QWidget
	called as Qt method void resizeEvent(QResizeEvent* event)

#### Method setDisabled(Bool $arg1)
	[slot] inherited from QWidget
	calls Qt method void setDisabled(bool arg1)

#### Method setFixedHeight(Int $h)
	inherited from QWidget
	calls Qt method void setFixedHeight(int h)

#### Method setFixedSize(Int $w, Int $h)
	inherited from QWidget
	calls Qt method void setFixedSize(int w, int h)

#### Method setFixedWidth(Int $w)
	inherited from QWidget
	calls Qt method void setFixedWidth(int w)

#### Method setFont(QFont $arg1)
	inherited from QWidget
	calls Qt method void setFont(const QFont& arg1)

#### Method setFrameRect(QRect $arg1)
	inherited from QFrame
	calls Qt method void setFrameRect(const QRect& arg1)

#### Method setFrameShadow(QFrame::Shadow $arg1)
	inherited from QFrame
	calls Qt method void setFrameShadow(Shadow arg1)

#### Method setFrameShape(QFrame::Shape $arg1)
	inherited from QFrame
	calls Qt method void setFrameShape(Shape arg1)

#### Method setFrameStyle(Int $arg1)
	inherited from QFrame
	calls Qt method void setFrameStyle(int arg1)

#### Method setLayout(QLayout $arg1)
	inherited from QWidget
	calls Qt method void setLayout(QLayout* arg1)

#### Method setLineWidth(Int $arg1)
	inherited from QFrame
	calls Qt method void setLineWidth(int arg1)

#### Method setMaximumHeight(Int $maxh)
	inherited from QWidget
	calls Qt method void setMaximumHeight(int maxh)

#### Method setMaximumSize(Int $maxw, Int $maxh)
	inherited from QWidget
	calls Qt method void setMaximumSize(int maxw, int maxh)

#### Method setMaximumWidth(Int $maxw)
	inherited from QWidget
	calls Qt method void setMaximumWidth(int maxw)

#### Method setMidLineWidth(Int $arg1)
	inherited from QFrame
	calls Qt method void setMidLineWidth(int arg1)

#### Method setMinimumHeight(Int $minh)
	inherited from QWidget
	calls Qt method void setMinimumHeight(int minh)

#### Method setMinimumSize(Int $minw, Int $minh)
	inherited from QWidget
	calls Qt method void setMinimumSize(int minw, int minh)

#### Method setMinimumWidth(Int $minw)
	inherited from QWidget
	calls Qt method void setMinimumWidth(int minw)

#### Method setMouseTracking(Bool $enable)
	inherited from QWidget
	calls Qt method void setMouseTracking(bool enable)

#### Method setPlainText(Str $text)
	[slot] 
	calls Qt method void setPlainText(const QString& text)

#### Method setReadOnly(Bool $ro)
	calls Qt method void setReadOnly(bool ro)

#### Method setSizePolicy(QSizePolicy::Policy $horizontal, QSizePolicy::Policy $vertical)
	inherited from QWidget
	calls Qt method void setSizePolicy(QSizePolicy::Policy horizontal, QSizePolicy::Policy vertical)

#### Method setToolTip(Str $arg1)
	inherited from QWidget
	calls Qt method void setToolTip(const QString& arg1)

#### Method setWindowTitle(Str $arg1)
	[slot] inherited from QWidget
	calls Qt method void setWindowTitle(const QString& arg1)

#### Method show()
	[slot] inherited from QWidget
	calls Qt method void show()

#### Method sizeHint( --> QSize)
	[override] inherited from QFrame
	calls Qt method QSize sizeHint()

#### Method textChanged()
	[signal] 
	calls Qt method void textChanged()

#### Method toPlainText( --> Str)
	calls Qt method QString toPlainText()

#### Method update(Int $x, Int $y, Int $w, Int $h)
	inherited from QWidget
	calls Qt method void update(int x, int y, int w, int h)

#### Method update()
	[slot] inherited from QWidget
	calls Qt method void update()

#### Method width( --> Int)
	inherited from QWidget
	calls Qt method int width()


Class QTimer
------------
	imported by
		use Qt::QtWidgets::QTimer;

	inherits QObject




#### Method QTimer.new(QObject $parent = (QObject) --> QTimer))
	calls Qt method  QTimer(QObject* parent = nullptr)

#### Method setInterval(Int $msec)
	calls Qt method void setInterval(int msec)

#### Method start()
	[slot] 
	calls Qt method void start()

#### Method stop()
	[slot] 
	calls Qt method void stop()

#### Method timeout()
	[private signal] 
	calls Qt method void timeout()


Class QTimerEvent
-----------------
	imported by
		use Qt::QtWidgets::QTimerEvent;

	inherits QEvent




WARNING: This class has no constructor. So it can't be used to create an object explicitely.

#### Method accept()
	inherited from QEvent
	calls Qt method void accept()

#### Method ignore()
	inherited from QEvent
	calls Qt method void ignore()

#### Method isAccepted( --> Bool)
	inherited from QEvent
	calls Qt method bool isAccepted()

#### Method spontaneous( --> Bool)
	inherited from QEvent
	calls Qt method bool spontaneous()

#### Method type( --> QEvent::Type)
	inherited from QEvent
	calls Qt method Type type()


Class QToolBar
--------------
	imported by
		use Qt::QtWidgets::QToolBar;

	inherits QWidget




#### Method actionAt(QPoint $p --> QAction)
	calls Qt method QAction * actionAt(const QPoint& p)

#### Method actionAt(Int $x, Int $y --> QAction)
	calls Qt method QAction * actionAt(int x, int y)

#### Method actionTriggered(QAction $action)
	[signal] 
	calls Qt method void actionTriggered(QAction* action)

#### Method activateWindow()
	inherited from QWidget
	calls Qt method void activateWindow()

#### Method addAction(Str $text --> QAction)
	calls Qt method QAction * addAction(const QString& text)

#### Method addSeparator( --> QAction)
	calls Qt method QAction * addSeparator()

#### Method addWidget(QWidget $widget --> QAction)
	calls Qt method QAction * addWidget(QWidget* widget)

#### Method clear()
	calls Qt method void clear()

#### Method closeEvent(QCloseEvent $event)
	[virtual] [protected] inherited from QWidget
	called as Qt method void closeEvent(QCloseEvent* event)

#### Method contentsRect( --> QRect)
	inherited from QWidget
	calls Qt method QRect contentsRect()

#### Method QToolBar.new(Str $title, QWidget $parent = (QWidget) --> QToolBar))
	calls Qt method  QToolBar(const QString& title, QWidget* parent = nullptr)

#### Method QToolBar.new(QWidget $parent = (QWidget) --> QToolBar))
	calls Qt method  QToolBar(QWidget* parent = nullptr)

#### Method enterEvent(QEvent $event)
	[virtual] [protected] inherited from QWidget
	called as Qt method void enterEvent(QEvent* event)

#### Method event(QEvent $event --> Bool)
	[protected] [override] 
	calls Qt method bool event(QEvent* event)

#### Method font( --> QFont)
	inherited from QWidget
	calls Qt method QFont & font()

#### Method hasHeightForWidth( --> Bool)
	[virtual] inherited from QWidget
	called as Qt method bool hasHeightForWidth()

#### Method hasMouseTracking( --> Bool)
	inherited from QWidget
	calls Qt method bool hasMouseTracking()

#### Method height( --> Int)
	inherited from QWidget
	calls Qt method int height()

#### Method heightForWidth(Int $arg1 --> Int)
	[virtual] inherited from QWidget
	called as Qt method int heightForWidth(int arg1)

#### Method hide()
	[slot] inherited from QWidget
	calls Qt method void hide()

#### Method iconSize( --> QSize)
	calls Qt method QSize iconSize()

#### Method iconSizeChanged(QSize $iconSize)
	[signal] 
	calls Qt method void iconSizeChanged(const QSize& iconSize)

#### Method insertSeparator(QAction $before --> QAction)
	calls Qt method QAction * insertSeparator(QAction* before)

#### Method insertWidget(QAction $before, QWidget $widget --> QAction)
	calls Qt method QAction * insertWidget(QAction* before, QWidget* widget)

#### Method isActiveWindow( --> Bool)
	inherited from QWidget
	calls Qt method bool isActiveWindow()

#### Method isFloatable( --> Bool)
	calls Qt method bool isFloatable()

#### Method isFloating( --> Bool)
	calls Qt method bool isFloating()

#### Method isMovable( --> Bool)
	calls Qt method bool isMovable()

#### Method leaveEvent(QEvent $event)
	[virtual] [protected] inherited from QWidget
	called as Qt method void leaveEvent(QEvent* event)

#### Method mapFrom(QWidget $arg1, QPoint $arg2 --> QPoint)
	inherited from QWidget
	calls Qt method QPoint mapFrom(const QWidget* arg1, const QPoint& arg2)

#### Method mapFromGlobal(QPoint $arg1 --> QPoint)
	inherited from QWidget
	calls Qt method QPoint mapFromGlobal(const QPoint& arg1)

#### Method mapFromParent(QPoint $arg1 --> QPoint)
	inherited from QWidget
	calls Qt method QPoint mapFromParent(const QPoint& arg1)

#### Method mapTo(QWidget $arg1, QPoint $arg2 --> QPoint)
	inherited from QWidget
	calls Qt method QPoint mapTo(const QWidget* arg1, const QPoint& arg2)

#### Method mapToGlobal(QPoint $arg1 --> QPoint)
	inherited from QWidget
	calls Qt method QPoint mapToGlobal(const QPoint& arg1)

#### Method mapToParent(QPoint $arg1 --> QPoint)
	inherited from QWidget
	calls Qt method QPoint mapToParent(const QPoint& arg1)

#### Method mouseMoveEvent(QMouseEvent $event)
	[virtual] [protected] inherited from QWidget
	called as Qt method void mouseMoveEvent(QMouseEvent* event)

#### Method mousePressEvent(QMouseEvent $event)
	[virtual] [protected] inherited from QWidget
	called as Qt method void mousePressEvent(QMouseEvent* event)

#### Method mouseReleaseEvent(QMouseEvent $event)
	[virtual] [protected] inherited from QWidget
	called as Qt method void mouseReleaseEvent(QMouseEvent* event)

#### Method movableChanged(Bool $movable)
	[signal] 
	calls Qt method void movableChanged(bool movable)

#### Method orientation( --> Qt::Orientation)
	calls Qt method Qt::Orientation orientation()

#### Method orientationChanged(Qt::Orientation $orientation)
	[signal] 
	calls Qt method void orientationChanged(Qt::Orientation orientation)

#### Method paintEvent(QPaintEvent $event)
	[virtual] [protected] [override] 
	called as Qt method void paintEvent(QPaintEvent* event)

#### Method render(QPaintDevice $target, QPoint $targetOffset = QPoint.new(), QRegion $sourceRegion = QRegion.new(), Int $renderFlags = RenderFlags(DrawWindowBackground +| DrawChildren))
	inherited from QWidget
	calls Qt method void render(QPaintDevice* target, const QPoint& targetOffset = QPoint(), const QRegion& sourceRegion = QRegion(), RenderFlags renderFlags = RenderFlags(DrawWindowBackground | DrawChildren))

#### Method repaint()
	[slot] inherited from QWidget
	calls Qt method void repaint()

#### Method repaint(Int $x, Int $y, Int $w, Int $h)
	inherited from QWidget
	calls Qt method void repaint(int x, int y, int w, int h)

#### Method resizeEvent(QResizeEvent $event)
	[virtual] [protected] inherited from QWidget
	called as Qt method void resizeEvent(QResizeEvent* event)

#### Method setAllowedAreas(Int $areas)
	calls Qt method void setAllowedAreas(Qt::ToolBarAreas areas)

#### Method setDisabled(Bool $arg1)
	[slot] inherited from QWidget
	calls Qt method void setDisabled(bool arg1)

#### Method setFixedHeight(Int $h)
	inherited from QWidget
	calls Qt method void setFixedHeight(int h)

#### Method setFixedSize(Int $w, Int $h)
	inherited from QWidget
	calls Qt method void setFixedSize(int w, int h)

#### Method setFixedWidth(Int $w)
	inherited from QWidget
	calls Qt method void setFixedWidth(int w)

#### Method setFloatable(Bool $floatable)
	calls Qt method void setFloatable(bool floatable)

#### Method setFont(QFont $arg1)
	inherited from QWidget
	calls Qt method void setFont(const QFont& arg1)

#### Method setIconSize(QSize $iconSize)
	[slot] 
	calls Qt method void setIconSize(const QSize& iconSize)

#### Method setLayout(QLayout $arg1)
	inherited from QWidget
	calls Qt method void setLayout(QLayout* arg1)

#### Method setMaximumHeight(Int $maxh)
	inherited from QWidget
	calls Qt method void setMaximumHeight(int maxh)

#### Method setMaximumSize(Int $maxw, Int $maxh)
	inherited from QWidget
	calls Qt method void setMaximumSize(int maxw, int maxh)

#### Method setMaximumWidth(Int $maxw)
	inherited from QWidget
	calls Qt method void setMaximumWidth(int maxw)

#### Method setMinimumHeight(Int $minh)
	inherited from QWidget
	calls Qt method void setMinimumHeight(int minh)

#### Method setMinimumSize(Int $minw, Int $minh)
	inherited from QWidget
	calls Qt method void setMinimumSize(int minw, int minh)

#### Method setMinimumWidth(Int $minw)
	inherited from QWidget
	calls Qt method void setMinimumWidth(int minw)

#### Method setMouseTracking(Bool $enable)
	inherited from QWidget
	calls Qt method void setMouseTracking(bool enable)

#### Method setMovable(Bool $movable)
	calls Qt method void setMovable(bool movable)

#### Method setSizePolicy(QSizePolicy::Policy $horizontal, QSizePolicy::Policy $vertical)
	inherited from QWidget
	calls Qt method void setSizePolicy(QSizePolicy::Policy horizontal, QSizePolicy::Policy vertical)

#### Method setToolTip(Str $arg1)
	inherited from QWidget
	calls Qt method void setToolTip(const QString& arg1)

#### Method setWindowTitle(Str $arg1)
	[slot] inherited from QWidget
	calls Qt method void setWindowTitle(const QString& arg1)

#### Method show()
	[slot] inherited from QWidget
	calls Qt method void show()

#### Method update()
	[slot] inherited from QWidget
	calls Qt method void update()

#### Method update(Int $x, Int $y, Int $w, Int $h)
	inherited from QWidget
	calls Qt method void update(int x, int y, int w, int h)

#### Method visibilityChanged(Bool $visible)
	[signal] 
	calls Qt method void visibilityChanged(bool visible)

#### Method widgetForAction(QAction $action --> QWidget)
	calls Qt method QWidget * widgetForAction(QAction* action)

#### Method width( --> Int)
	inherited from QWidget
	calls Qt method int width()


Class QToolButton
-----------------
	imported by
		use Qt::QtWidgets::QToolButton;

	inherits QAbstractButton



    enum ToolButtonPopupMode 

#### Method activateWindow()
	inherited from QWidget
	calls Qt method void activateWindow()

#### Method arrowType( --> Qt::ArrowType)
	calls Qt method Qt::ArrowType arrowType()

#### Method autoRaise( --> Bool)
	calls Qt method bool autoRaise()

#### Method click()
	[slot] inherited from QAbstractButton
	calls Qt method void click()

#### Method clicked(Bool $checked = False)
	[signal] inherited from QAbstractButton
	calls Qt method void clicked(bool checked = false)

#### Method closeEvent(QCloseEvent $event)
	[virtual] [protected] inherited from QWidget
	called as Qt method void closeEvent(QCloseEvent* event)

#### Method contentsRect( --> QRect)
	inherited from QWidget
	calls Qt method QRect contentsRect()

#### Method QToolButton.new(QWidget $parent = (QWidget) --> QToolButton))
	calls Qt method  QToolButton(QWidget* parent = nullptr)

#### Method defaultAction( --> QAction)
	calls Qt method QAction * defaultAction()

#### Method enterEvent(QEvent $arg1)
	[virtual] [protected] [override] 
	called as Qt method void enterEvent(QEvent* arg1)

#### Method event(QEvent $e --> Bool)
	[protected] [override] 
	calls Qt method bool event(QEvent* e)

#### Method font( --> QFont)
	inherited from QWidget
	calls Qt method QFont & font()

#### Method hasHeightForWidth( --> Bool)
	[virtual] inherited from QWidget
	called as Qt method bool hasHeightForWidth()

#### Method hasMouseTracking( --> Bool)
	inherited from QWidget
	calls Qt method bool hasMouseTracking()

#### Method height( --> Int)
	inherited from QWidget
	calls Qt method int height()

#### Method heightForWidth(Int $arg1 --> Int)
	[virtual] inherited from QWidget
	called as Qt method int heightForWidth(int arg1)

#### Method hide()
	[slot] inherited from QWidget
	calls Qt method void hide()

#### Method hitButton(QPoint $pos --> Bool)
	[protected] [override] 
	calls Qt method bool hitButton(const QPoint& pos)

#### Method isActiveWindow( --> Bool)
	inherited from QWidget
	calls Qt method bool isActiveWindow()

#### Method isCheckable( --> Bool)
	inherited from QAbstractButton
	calls Qt method bool isCheckable()

#### Method isChecked( --> Bool)
	inherited from QAbstractButton
	calls Qt method bool isChecked()

#### Method isDown( --> Bool)
	inherited from QAbstractButton
	calls Qt method bool isDown()

#### Method leaveEvent(QEvent $arg1)
	[virtual] [protected] [override] 
	called as Qt method void leaveEvent(QEvent* arg1)

#### Method mapFrom(QWidget $arg1, QPoint $arg2 --> QPoint)
	inherited from QWidget
	calls Qt method QPoint mapFrom(const QWidget* arg1, const QPoint& arg2)

#### Method mapFromGlobal(QPoint $arg1 --> QPoint)
	inherited from QWidget
	calls Qt method QPoint mapFromGlobal(const QPoint& arg1)

#### Method mapFromParent(QPoint $arg1 --> QPoint)
	inherited from QWidget
	calls Qt method QPoint mapFromParent(const QPoint& arg1)

#### Method mapTo(QWidget $arg1, QPoint $arg2 --> QPoint)
	inherited from QWidget
	calls Qt method QPoint mapTo(const QWidget* arg1, const QPoint& arg2)

#### Method mapToGlobal(QPoint $arg1 --> QPoint)
	inherited from QWidget
	calls Qt method QPoint mapToGlobal(const QPoint& arg1)

#### Method mapToParent(QPoint $arg1 --> QPoint)
	inherited from QWidget
	calls Qt method QPoint mapToParent(const QPoint& arg1)

#### Method menu( --> QMenu)
	calls Qt method QMenu * menu()

#### Method minimumSizeHint( --> QSize)
	[override] 
	calls Qt method QSize minimumSizeHint()

#### Method mouseMoveEvent(QMouseEvent $event)
	[virtual] [protected] inherited from QWidget
	called as Qt method void mouseMoveEvent(QMouseEvent* event)

#### Method mousePressEvent(QMouseEvent $arg1)
	[virtual] [protected] [override] 
	called as Qt method void mousePressEvent(QMouseEvent* arg1)

#### Method mouseReleaseEvent(QMouseEvent $arg1)
	[virtual] [protected] [override] 
	called as Qt method void mouseReleaseEvent(QMouseEvent* arg1)

#### Method nextCheckState()
	[virtual] [protected] [override] 
	called as Qt method void nextCheckState()

#### Method paintEvent(QPaintEvent $event)
	[virtual] [protected] inherited from QWidget
	called as Qt method void paintEvent(QPaintEvent* event)

#### Method popupMode( --> QToolButton::ToolButtonPopupMode)
	calls Qt method ToolButtonPopupMode popupMode()

#### Method pressed()
	[signal] inherited from QAbstractButton
	calls Qt method void pressed()

#### Method released()
	[signal] inherited from QAbstractButton
	calls Qt method void released()

#### Method render(QPaintDevice $target, QPoint $targetOffset = QPoint.new(), QRegion $sourceRegion = QRegion.new(), Int $renderFlags = RenderFlags(DrawWindowBackground +| DrawChildren))
	inherited from QWidget
	calls Qt method void render(QPaintDevice* target, const QPoint& targetOffset = QPoint(), const QRegion& sourceRegion = QRegion(), RenderFlags renderFlags = RenderFlags(DrawWindowBackground | DrawChildren))

#### Method repaint(Int $x, Int $y, Int $w, Int $h)
	inherited from QWidget
	calls Qt method void repaint(int x, int y, int w, int h)

#### Method repaint()
	[slot] inherited from QWidget
	calls Qt method void repaint()

#### Method resizeEvent(QResizeEvent $event)
	[virtual] [protected] inherited from QWidget
	called as Qt method void resizeEvent(QResizeEvent* event)

#### Method setAutoExclusive(Bool $arg1)
	inherited from QAbstractButton
	calls Qt method void setAutoExclusive(bool arg1)

#### Method setAutoRaise(Bool $enable)
	calls Qt method void setAutoRaise(bool enable)

#### Method setCheckable(Bool $arg1)
	inherited from QAbstractButton
	calls Qt method void setCheckable(bool arg1)

#### Method setChecked(Bool $arg1)
	[slot] inherited from QAbstractButton
	calls Qt method void setChecked(bool arg1)

#### Method setDefaultAction(QAction $arg1)
	[slot] 
	calls Qt method void setDefaultAction(QAction* arg1)

#### Method setDisabled(Bool $arg1)
	[slot] inherited from QWidget
	calls Qt method void setDisabled(bool arg1)

#### Method setDown(Bool $arg1)
	inherited from QAbstractButton
	calls Qt method void setDown(bool arg1)

#### Method setFixedHeight(Int $h)
	inherited from QWidget
	calls Qt method void setFixedHeight(int h)

#### Method setFixedSize(Int $w, Int $h)
	inherited from QWidget
	calls Qt method void setFixedSize(int w, int h)

#### Method setFixedWidth(Int $w)
	inherited from QWidget
	calls Qt method void setFixedWidth(int w)

#### Method setFont(QFont $arg1)
	inherited from QWidget
	calls Qt method void setFont(const QFont& arg1)

#### Method setLayout(QLayout $arg1)
	inherited from QWidget
	calls Qt method void setLayout(QLayout* arg1)

#### Method setMaximumHeight(Int $maxh)
	inherited from QWidget
	calls Qt method void setMaximumHeight(int maxh)

#### Method setMaximumSize(Int $maxw, Int $maxh)
	inherited from QWidget
	calls Qt method void setMaximumSize(int maxw, int maxh)

#### Method setMaximumWidth(Int $maxw)
	inherited from QWidget
	calls Qt method void setMaximumWidth(int maxw)

#### Method setMenu(QMenu $menu)
	calls Qt method void setMenu(QMenu* menu)

#### Method setMinimumHeight(Int $minh)
	inherited from QWidget
	calls Qt method void setMinimumHeight(int minh)

#### Method setMinimumSize(Int $minw, Int $minh)
	inherited from QWidget
	calls Qt method void setMinimumSize(int minw, int minh)

#### Method setMinimumWidth(Int $minw)
	inherited from QWidget
	calls Qt method void setMinimumWidth(int minw)

#### Method setMouseTracking(Bool $enable)
	inherited from QWidget
	calls Qt method void setMouseTracking(bool enable)

#### Method setSizePolicy(QSizePolicy::Policy $horizontal, QSizePolicy::Policy $vertical)
	inherited from QWidget
	calls Qt method void setSizePolicy(QSizePolicy::Policy horizontal, QSizePolicy::Policy vertical)

#### Method setText(Str $text)
	inherited from QAbstractButton
	calls Qt method void setText(const QString& text)

#### Method setToolTip(Str $arg1)
	inherited from QWidget
	calls Qt method void setToolTip(const QString& arg1)

#### Method setWindowTitle(Str $arg1)
	[slot] inherited from QWidget
	calls Qt method void setWindowTitle(const QString& arg1)

#### Method show()
	[slot] inherited from QWidget
	calls Qt method void show()

#### Method showMenu()
	[slot] 
	calls Qt method void showMenu()

#### Method sizeHint( --> QSize)
	[override] 
	calls Qt method QSize sizeHint()

#### Method text( --> Str)
	inherited from QAbstractButton
	calls Qt method QString text()

#### Method timerEvent(QTimerEvent $arg1)
	[protected] [override] 
	calls Qt method void timerEvent(QTimerEvent* arg1)

#### Method toggle()
	[slot] inherited from QAbstractButton
	calls Qt method void toggle()

#### Method toggled(Bool $checked)
	[signal] inherited from QAbstractButton
	calls Qt method void toggled(bool checked)

#### Method triggered(QAction $arg1)
	[signal] 
	calls Qt method void triggered(QAction* arg1)

#### Method update(Int $x, Int $y, Int $w, Int $h)
	inherited from QWidget
	calls Qt method void update(int x, int y, int w, int h)

#### Method update()
	[slot] inherited from QWidget
	calls Qt method void update()

#### Method width( --> Int)
	inherited from QWidget
	calls Qt method int width()


Class QVBoxLayout
-----------------
	imported by
		use Qt::QtWidgets::QVBoxLayout;

	inherits QBoxLayout




#### Method addLayout(QLayout $layout, Int $stretch = 0)
	inherited from QBoxLayout
	calls Qt method void addLayout(QLayout* layout, int stretch = 0)

#### Method addWidget(QWidget $w)
	inherited from QLayout
	calls Qt method void addWidget(QWidget* w)

#### Method QVBoxLayout.new( --> QVBoxLayout))
	calls Qt method  QVBoxLayout()

#### Method setAlignment(QWidget $w, Int $alignment --> Bool)
	inherited from QLayout
	calls Qt method bool setAlignment(QWidget* w, Qt::Alignment alignment)

#### Method setAlignment(QLayout $l, Int $alignment --> Bool)
	inherited from QLayout
	calls Qt method bool setAlignment(QLayout* l, Qt::Alignment alignment)

#### Method setContentsMargins(Int $left, Int $top, Int $right, Int $bottom)
	inherited from QLayout
	calls Qt method void setContentsMargins(int left, int top, int right, int bottom)

#### Method setSpacing(Int $spacing)
	inherited from QBoxLayout
	calls Qt method void setSpacing(int spacing)

#### Method setStretch(Int $index, Int $stretch)
	inherited from QBoxLayout
	calls Qt method void setStretch(int index, int stretch)

#### Method setStretchFactor(QWidget $w, Int $stretch --> Bool)
	inherited from QBoxLayout
	calls Qt method bool setStretchFactor(QWidget* w, int stretch)

#### Method setStretchFactor(QLayout $l, Int $stretch --> Bool)
	inherited from QBoxLayout
	calls Qt method bool setStretchFactor(QLayout* l, int stretch)

#### Method spacing( --> Int)
	inherited from QBoxLayout
	calls Qt method int spacing()

#### Method stretch(Int $index --> Int)
	inherited from QBoxLayout
	calls Qt method int stretch(int index)


Class QWidget
-------------
	imported by
		use Qt::QtWidgets::QWidget;

	inherits QObject
	inherits QPaintDevice

	inherited by QAbstractButton, QAbstractSlider, QDialog, QDialogButtonBox, QFrame, QGroupBox, QLineEdit, QMainWindow, QMenu, QMenuBar, QStatusBar, QToolBar

    enum RenderFlag 

#### Method activateWindow()
	calls Qt method void activateWindow()

#### Method closeEvent(QCloseEvent $event)
	[virtual] [protected] 
	called as Qt method void closeEvent(QCloseEvent* event)

#### Method contentsRect( --> QRect)
	calls Qt method QRect contentsRect()

#### Method QWidget.new(QWidget $parent = (QWidget), Int $f = Qt::WindowFlags() --> QWidget))
	calls Qt method  QWidget(QWidget* parent = nullptr, Qt::WindowFlags f = Qt::WindowFlags())

#### Method enterEvent(QEvent $event)
	[virtual] [protected] 
	called as Qt method void enterEvent(QEvent* event)

#### Method font( --> QFont)
	calls Qt method QFont & font()

#### Method hasHeightForWidth( --> Bool)
	[virtual] 
	called as Qt method bool hasHeightForWidth()

#### Method hasMouseTracking( --> Bool)
	calls Qt method bool hasMouseTracking()

#### Method height( --> Int)
	calls Qt method int height()

#### Method heightForWidth(Int $arg1 --> Int)
	[virtual] 
	called as Qt method int heightForWidth(int arg1)

#### Method hide()
	[slot] 
	calls Qt method void hide()

#### Method isActiveWindow( --> Bool)
	calls Qt method bool isActiveWindow()

#### Method leaveEvent(QEvent $event)
	[virtual] [protected] 
	called as Qt method void leaveEvent(QEvent* event)

#### Method mapFrom(QWidget $arg1, QPoint $arg2 --> QPoint)
	calls Qt method QPoint mapFrom(const QWidget* arg1, const QPoint& arg2)

#### Method mapFromGlobal(QPoint $arg1 --> QPoint)
	calls Qt method QPoint mapFromGlobal(const QPoint& arg1)

#### Method mapFromParent(QPoint $arg1 --> QPoint)
	calls Qt method QPoint mapFromParent(const QPoint& arg1)

#### Method mapTo(QWidget $arg1, QPoint $arg2 --> QPoint)
	calls Qt method QPoint mapTo(const QWidget* arg1, const QPoint& arg2)

#### Method mapToGlobal(QPoint $arg1 --> QPoint)
	calls Qt method QPoint mapToGlobal(const QPoint& arg1)

#### Method mapToParent(QPoint $arg1 --> QPoint)
	calls Qt method QPoint mapToParent(const QPoint& arg1)

#### Method mouseMoveEvent(QMouseEvent $event)
	[virtual] [protected] 
	called as Qt method void mouseMoveEvent(QMouseEvent* event)

#### Method mousePressEvent(QMouseEvent $event)
	[virtual] [protected] 
	called as Qt method void mousePressEvent(QMouseEvent* event)

#### Method mouseReleaseEvent(QMouseEvent $event)
	[virtual] [protected] 
	called as Qt method void mouseReleaseEvent(QMouseEvent* event)

#### Method paintEvent(QPaintEvent $event)
	[virtual] [protected] 
	called as Qt method void paintEvent(QPaintEvent* event)

#### Method render(QPaintDevice $target, QPoint $targetOffset = QPoint.new(), QRegion $sourceRegion = QRegion.new(), Int $renderFlags = RenderFlags(DrawWindowBackground +| DrawChildren))
	calls Qt method void render(QPaintDevice* target, const QPoint& targetOffset = QPoint(), const QRegion& sourceRegion = QRegion(), RenderFlags renderFlags = RenderFlags(DrawWindowBackground | DrawChildren))

#### Method repaint(Int $x, Int $y, Int $w, Int $h)
	calls Qt method void repaint(int x, int y, int w, int h)

#### Method repaint()
	[slot] 
	calls Qt method void repaint()

#### Method resizeEvent(QResizeEvent $event)
	[virtual] [protected] 
	called as Qt method void resizeEvent(QResizeEvent* event)

#### Method setDisabled(Bool $arg1)
	[slot] 
	calls Qt method void setDisabled(bool arg1)

#### Method setFixedHeight(Int $h)
	calls Qt method void setFixedHeight(int h)

#### Method setFixedSize(Int $w, Int $h)
	calls Qt method void setFixedSize(int w, int h)

#### Method setFixedWidth(Int $w)
	calls Qt method void setFixedWidth(int w)

#### Method setFont(QFont $arg1)
	calls Qt method void setFont(const QFont& arg1)

#### Method setLayout(QLayout $arg1)
	calls Qt method void setLayout(QLayout* arg1)

#### Method setMaximumHeight(Int $maxh)
	calls Qt method void setMaximumHeight(int maxh)

#### Method setMaximumSize(Int $maxw, Int $maxh)
	calls Qt method void setMaximumSize(int maxw, int maxh)

#### Method setMaximumWidth(Int $maxw)
	calls Qt method void setMaximumWidth(int maxw)

#### Method setMinimumHeight(Int $minh)
	calls Qt method void setMinimumHeight(int minh)

#### Method setMinimumSize(Int $minw, Int $minh)
	calls Qt method void setMinimumSize(int minw, int minh)

#### Method setMinimumWidth(Int $minw)
	calls Qt method void setMinimumWidth(int minw)

#### Method setMouseTracking(Bool $enable)
	calls Qt method void setMouseTracking(bool enable)

#### Method setSizePolicy(QSizePolicy::Policy $horizontal, QSizePolicy::Policy $vertical)
	calls Qt method void setSizePolicy(QSizePolicy::Policy horizontal, QSizePolicy::Policy vertical)

#### Method setToolTip(Str $arg1)
	calls Qt method void setToolTip(const QString& arg1)

#### Method setWindowTitle(Str $arg1)
	[slot] 
	calls Qt method void setWindowTitle(const QString& arg1)

#### Method show()
	[slot] 
	calls Qt method void show()

#### Method update()
	[slot] 
	calls Qt method void update()

#### Method update(Int $x, Int $y, Int $w, Int $h)
	calls Qt method void update(int x, int y, int w, int h)

#### Method width( --> Int)
	calls Qt method int width()


Class Qt
--------
	imported by
		use Qt::QtWidgets::Qt;




    enum AlignmentFlag 
    enum ArrowType 
    enum AspectRatioMode 
    enum BrushStyle 
    enum CheckState 
    enum Corner 
    enum GlobalColor 
    enum Initialization 
    enum KeyboardModifier 
    enum MouseButton 
    enum MouseEventSource 
    enum Orientation 
    enum PenStyle 
    enum TextFormat 
    enum ToolBarArea 
    enum WindowType 

WARNING: This class has no constructor. So it can't be used to create an object explicitely.

