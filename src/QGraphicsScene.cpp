
// 
// This file has been automatically generated by RaQt_maker V0.0.7.
// To modify and regenerate it, see the source code available here: 
//         https://github.com/yguillemot/RaQt_maker
// 

#include "QGraphicsScene.hpp"

void * QWQGraphicsSceneCtor_1(void * parent)
{
    QObject * xparent = reinterpret_cast<QObject *>(parent);
    QGraphicsScene * ptr = new QGraphicsScene(xparent);
    return reinterpret_cast<void *>(ptr);
}

void * SCWQGraphicsSceneCtor_1(void * parent)
{
    QObject * xparent = reinterpret_cast<QObject *>(parent);
    SCQGraphicsScene * ptr = new SCQGraphicsScene(xparent);
    return reinterpret_cast<void *>(ptr);
}

void * QWQGraphicsSceneCtor_3(double  x, double  y, double  width, double  height, void * parent)
{
    qreal xx = x;
    qreal xy = y;
    qreal xwidth = width;
    qreal xheight = height;
    QObject * xparent = reinterpret_cast<QObject *>(parent);
    QGraphicsScene * ptr = new QGraphicsScene(xx, xy, xwidth, xheight, xparent);
    return reinterpret_cast<void *>(ptr);
}

void * SCWQGraphicsSceneCtor_3(double  x, double  y, double  width, double  height, void * parent)
{
    qreal xx = x;
    qreal xy = y;
    qreal xwidth = width;
    qreal xheight = height;
    QObject * xparent = reinterpret_cast<QObject *>(parent);
    SCQGraphicsScene * ptr = new SCQGraphicsScene(xx, xy, xwidth, xheight, xparent);
    return reinterpret_cast<void *>(ptr);
}

void * QWQGraphicsScenesceneRect(void * obj)
{
    QGraphicsScene * ptr = reinterpret_cast<QGraphicsScene *>(obj);
    QRectF retVal = ptr->sceneRect();
    QRectF * xxretVal = new QRectF(retVal);
    void * xretVal = reinterpret_cast<void *>(xxretVal);
    return xretVal;
}

double QWQGraphicsScenewidth(void * obj)
{
    QGraphicsScene * ptr = reinterpret_cast<QGraphicsScene *>(obj);
    qreal retVal = ptr->width();
    return retVal;
}

double QWQGraphicsSceneheight(void * obj)
{
    QGraphicsScene * ptr = reinterpret_cast<QGraphicsScene *>(obj);
    qreal retVal = ptr->height();
    return retVal;
}

int QWQGraphicsSceneitemIndexMethod(void * obj)
{
    QGraphicsScene * ptr = reinterpret_cast<QGraphicsScene *>(obj);
    QGraphicsScene::ItemIndexMethod retVal = ptr->itemIndexMethod();
    return retVal;
}

int8_t QWQGraphicsSceneisSortCacheEnabled(void * obj)
{
    QGraphicsScene * ptr = reinterpret_cast<QGraphicsScene *>(obj);
    bool retVal = ptr->isSortCacheEnabled();
    return retVal;
}

void * QWQGraphicsSceneitemsBoundingRect(void * obj)
{
    QGraphicsScene * ptr = reinterpret_cast<QGraphicsScene *>(obj);
    QRectF retVal = ptr->itemsBoundingRect();
    QRectF * xxretVal = new QRectF(retVal);
    void * xretVal = reinterpret_cast<void *>(xxretVal);
    return xretVal;
}

void QWQGraphicsSceneaddItem(void * obj, void * item)
{
    QGraphicsScene * ptr = reinterpret_cast<QGraphicsScene *>(obj);
    QGraphicsItem * xitem = reinterpret_cast<QGraphicsItem *>(item);
    ptr->addItem(xitem);
}

void * QWQGraphicsSceneaddEllipse_1(void * obj, void * rect, void * pen, void * brush)
{
    QGraphicsScene * ptr = reinterpret_cast<QGraphicsScene *>(obj);
    QRectF & xrect = * reinterpret_cast<QRectF *>(rect);
    QPen & xpen = * reinterpret_cast<QPen *>(pen);
    QBrush & xbrush = * reinterpret_cast<QBrush *>(brush);
    QGraphicsEllipseItem * retVal = ptr->addEllipse(xrect, xpen, xbrush);
    return retVal;
}

void * QWQGraphicsSceneaddLine_1(void * obj, void * line, void * pen)
{
    QGraphicsScene * ptr = reinterpret_cast<QGraphicsScene *>(obj);
    QLineF & xline = * reinterpret_cast<QLineF *>(line);
    QPen & xpen = * reinterpret_cast<QPen *>(pen);
    QGraphicsLineItem * retVal = ptr->addLine(xline, xpen);
    return retVal;
}

void * QWQGraphicsSceneaddPath(void * obj, void * path, void * pen, void * brush)
{
    QGraphicsScene * ptr = reinterpret_cast<QGraphicsScene *>(obj);
    QPainterPath & xpath = * reinterpret_cast<QPainterPath *>(path);
    QPen & xpen = * reinterpret_cast<QPen *>(pen);
    QBrush & xbrush = * reinterpret_cast<QBrush *>(brush);
    QGraphicsPathItem * retVal = ptr->addPath(xpath, xpen, xbrush);
    return retVal;
}

void * QWQGraphicsSceneaddPixmap(void * obj, void * pixmap)
{
    QGraphicsScene * ptr = reinterpret_cast<QGraphicsScene *>(obj);
    QPixmap & xpixmap = * reinterpret_cast<QPixmap *>(pixmap);
    QGraphicsPixmapItem * retVal = ptr->addPixmap(xpixmap);
    return retVal;
}

void * QWQGraphicsSceneaddRect_1(void * obj, void * rect, void * pen, void * brush)
{
    QGraphicsScene * ptr = reinterpret_cast<QGraphicsScene *>(obj);
    QRectF & xrect = * reinterpret_cast<QRectF *>(rect);
    QPen & xpen = * reinterpret_cast<QPen *>(pen);
    QBrush & xbrush = * reinterpret_cast<QBrush *>(brush);
    QGraphicsRectItem * retVal = ptr->addRect(xrect, xpen, xbrush);
    return retVal;
}

void * QWQGraphicsSceneaddText(void * obj, char * text, void * font)
{
    QGraphicsScene * ptr = reinterpret_cast<QGraphicsScene *>(obj);
    QString xtext = QString(text);
    QFont & xfont = * reinterpret_cast<QFont *>(font);
    QGraphicsTextItem * retVal = ptr->addText(xtext, xfont);
    return retVal;
}

void * QWQGraphicsSceneaddSimpleText(void * obj, char * text, void * font)
{
    QGraphicsScene * ptr = reinterpret_cast<QGraphicsScene *>(obj);
    QString xtext = QString(text);
    QFont & xfont = * reinterpret_cast<QFont *>(font);
    QGraphicsSimpleTextItem * retVal = ptr->addSimpleText(xtext, xfont);
    return retVal;
}

void * QWQGraphicsSceneaddWidget(void * obj, void * widget, int  wFlags)
{
    QGraphicsScene * ptr = reinterpret_cast<QGraphicsScene *>(obj);
    QWidget * xwidget = reinterpret_cast<QWidget *>(widget);
    Qt::WindowFlags xwFlags = static_cast<Qt::WindowFlags>(wFlags);
    QGraphicsProxyWidget * retVal = ptr->addWidget(xwidget, xwFlags);
    return retVal;
}

void * QWQGraphicsSceneaddEllipse_2(void * obj, double  x, double  y, double  w, double  h, void * pen, void * brush)
{
    QGraphicsScene * ptr = reinterpret_cast<QGraphicsScene *>(obj);
    qreal xx = x;
    qreal xy = y;
    qreal xw = w;
    qreal xh = h;
    QPen & xpen = * reinterpret_cast<QPen *>(pen);
    QBrush & xbrush = * reinterpret_cast<QBrush *>(brush);
    QGraphicsEllipseItem * retVal = ptr->addEllipse(xx, xy, xw, xh, xpen, xbrush);
    return retVal;
}

void * QWQGraphicsSceneaddLine_2(void * obj, double  x1, double  y1, double  x2, double  y2, void * pen)
{
    QGraphicsScene * ptr = reinterpret_cast<QGraphicsScene *>(obj);
    qreal xx1 = x1;
    qreal xy1 = y1;
    qreal xx2 = x2;
    qreal xy2 = y2;
    QPen & xpen = * reinterpret_cast<QPen *>(pen);
    QGraphicsLineItem * retVal = ptr->addLine(xx1, xy1, xx2, xy2, xpen);
    return retVal;
}

void * QWQGraphicsSceneaddRect_2(void * obj, double  x, double  y, double  w, double  h, void * pen, void * brush)
{
    QGraphicsScene * ptr = reinterpret_cast<QGraphicsScene *>(obj);
    qreal xx = x;
    qreal xy = y;
    qreal xw = w;
    qreal xh = h;
    QPen & xpen = * reinterpret_cast<QPen *>(pen);
    QBrush & xbrush = * reinterpret_cast<QBrush *>(brush);
    QGraphicsRectItem * retVal = ptr->addRect(xx, xy, xw, xh, xpen, xbrush);
    return retVal;
}

void * QWQGraphicsScenemouseGrabberItem(void * obj)
{
    QGraphicsScene * ptr = reinterpret_cast<QGraphicsScene *>(obj);
    QGraphicsItem * retVal = ptr->mouseGrabberItem();
    return retVal;
}

void * QWQGraphicsScenebackgroundBrush(void * obj)
{
    QGraphicsScene * ptr = reinterpret_cast<QGraphicsScene *>(obj);
    QBrush retVal = ptr->backgroundBrush();
    QBrush * xxretVal = new QBrush(retVal);
    void * xretVal = reinterpret_cast<void *>(xxretVal);
    return xretVal;
}

void * QWQGraphicsSceneactivePanel(void * obj)
{
    QGraphicsScene * ptr = reinterpret_cast<QGraphicsScene *>(obj);
    QGraphicsItem * retVal = ptr->activePanel();
    return retVal;
}

void * QWQGraphicsSceneactiveWindow(void * obj)
{
    QGraphicsScene * ptr = reinterpret_cast<QGraphicsScene *>(obj);
    QGraphicsWidget * retVal = ptr->activeWindow();
    return retVal;
}

double QWQGraphicsSceneminimumRenderSize(void * obj)
{
    QGraphicsScene * ptr = reinterpret_cast<QGraphicsScene *>(obj);
    qreal retVal = ptr->minimumRenderSize();
    return retVal;
}

void QWQGraphicsSceneadvance(void * obj)
{
    QGraphicsScene * ptr = reinterpret_cast<QGraphicsScene *>(obj);
    ptr->advance();
}

void QWvalidateCB_QGraphicsScene(void *obj, int32_t objId, char *methodName)
{
    SCQGraphicsScene * ptr = reinterpret_cast<SCQGraphicsScene *>(obj);

    ptr->validateEvent(objId, methodName);

}
void QWQGraphicsSceneDtor(void * obj)
{
    QGraphicsScene * ptr = reinterpret_cast<QGraphicsScene *>(obj);
    delete ptr;
}

void SCWQGraphicsSceneDtor(void * obj)
{
    QGraphicsScene * ptr = reinterpret_cast<QGraphicsScene *>(obj);
    delete ptr;
}

