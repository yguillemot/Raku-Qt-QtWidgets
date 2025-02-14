
// 
// This file has been automatically generated by RaQt_maker V0.0.7.
// To modify and regenerate it, see the source code available here: 
//         https://github.com/yguillemot/RaQt_maker
// 

#include "QGraphicsEllipseItem.hpp"

void * QWQGraphicsEllipseItemCtor_1(void * parent)
{
    QGraphicsItem * xparent = reinterpret_cast<QGraphicsItem *>(parent);
    QGraphicsEllipseItem * ptr = new QGraphicsEllipseItem(xparent);
    return reinterpret_cast<void *>(ptr);
}

void * SCWQGraphicsEllipseItemCtor_1(void * parent)
{
    QGraphicsItem * xparent = reinterpret_cast<QGraphicsItem *>(parent);
    SCQGraphicsEllipseItem * ptr = new SCQGraphicsEllipseItem(xparent);
    return reinterpret_cast<void *>(ptr);
}

void * QWQGraphicsEllipseItemCtor_2(void * rect, void * parent)
{
    QRectF & xrect = * reinterpret_cast<QRectF *>(rect);
    QGraphicsItem * xparent = reinterpret_cast<QGraphicsItem *>(parent);
    QGraphicsEllipseItem * ptr = new QGraphicsEllipseItem(xrect, xparent);
    return reinterpret_cast<void *>(ptr);
}

void * SCWQGraphicsEllipseItemCtor_2(void * rect, void * parent)
{
    QRectF & xrect = * reinterpret_cast<QRectF *>(rect);
    QGraphicsItem * xparent = reinterpret_cast<QGraphicsItem *>(parent);
    SCQGraphicsEllipseItem * ptr = new SCQGraphicsEllipseItem(xrect, xparent);
    return reinterpret_cast<void *>(ptr);
}

void * QWQGraphicsEllipseItemCtor_3(double  x, double  y, double  w, double  h, void * parent)
{
    qreal xx = x;
    qreal xy = y;
    qreal xw = w;
    qreal xh = h;
    QGraphicsItem * xparent = reinterpret_cast<QGraphicsItem *>(parent);
    QGraphicsEllipseItem * ptr = new QGraphicsEllipseItem(xx, xy, xw, xh, xparent);
    return reinterpret_cast<void *>(ptr);
}

void * SCWQGraphicsEllipseItemCtor_3(double  x, double  y, double  w, double  h, void * parent)
{
    qreal xx = x;
    qreal xy = y;
    qreal xw = w;
    qreal xh = h;
    QGraphicsItem * xparent = reinterpret_cast<QGraphicsItem *>(parent);
    SCQGraphicsEllipseItem * ptr = new SCQGraphicsEllipseItem(xx, xy, xw, xh, xparent);
    return reinterpret_cast<void *>(ptr);
}

void * QWQGraphicsEllipseItemrect(void * obj)
{
    QGraphicsEllipseItem * ptr = reinterpret_cast<QGraphicsEllipseItem *>(obj);
    QRectF retVal = ptr->rect();
    QRectF * xxretVal = new QRectF(retVal);
    void * xretVal = reinterpret_cast<void *>(xxretVal);
    return xretVal;
}

void QWQGraphicsEllipseItemsetRect_1(void * obj, void * rect)
{
    QGraphicsEllipseItem * ptr = reinterpret_cast<QGraphicsEllipseItem *>(obj);
    QRectF & xrect = * reinterpret_cast<QRectF *>(rect);
    ptr->setRect(xrect);
}

void QWQGraphicsEllipseItemsetRect_2(void * obj, double  x, double  y, double  w, double  h)
{
    QGraphicsEllipseItem * ptr = reinterpret_cast<QGraphicsEllipseItem *>(obj);
    qreal xx = x;
    qreal xy = y;
    qreal xw = w;
    qreal xh = h;
    ptr->setRect(xx, xy, xw, xh);
}

int32_t QWQGraphicsEllipseItemstartAngle(void * obj)
{
    QGraphicsEllipseItem * ptr = reinterpret_cast<QGraphicsEllipseItem *>(obj);
    int retVal = ptr->startAngle();
    return retVal;
}

void QWQGraphicsEllipseItemsetStartAngle(void * obj, int32_t  angle)
{
    QGraphicsEllipseItem * ptr = reinterpret_cast<QGraphicsEllipseItem *>(obj);
    int xangle = angle;
    ptr->setStartAngle(xangle);
}

int32_t QWQGraphicsEllipseItemspanAngle(void * obj)
{
    QGraphicsEllipseItem * ptr = reinterpret_cast<QGraphicsEllipseItem *>(obj);
    int retVal = ptr->spanAngle();
    return retVal;
}

void QWQGraphicsEllipseItemsetSpanAngle(void * obj, int32_t  angle)
{
    QGraphicsEllipseItem * ptr = reinterpret_cast<QGraphicsEllipseItem *>(obj);
    int xangle = angle;
    ptr->setSpanAngle(xangle);
}

void * QWQGraphicsEllipseItemboundingRect(void * obj)
{
    QGraphicsEllipseItem * ptr = reinterpret_cast<QGraphicsEllipseItem *>(obj);
    QRectF retVal = ptr->boundingRect();
    QRectF * xxretVal = new QRectF(retVal);
    void * xretVal = reinterpret_cast<void *>(xxretVal);
    return xretVal;
}

int8_t QWQGraphicsEllipseItemcontains(void * obj, void * point)
{
    QGraphicsEllipseItem * ptr = reinterpret_cast<QGraphicsEllipseItem *>(obj);
    QPointF & xpoint = * reinterpret_cast<QPointF *>(point);
    bool retVal = ptr->contains(xpoint);
    return retVal;
}

void QWvalidateCB_QGraphicsEllipseItem(void *obj, int32_t objId, char *methodName)
{
    SCQGraphicsEllipseItem * ptr = reinterpret_cast<SCQGraphicsEllipseItem *>(obj);

    ptr->validateEvent(objId, methodName);

}
void QWQGraphicsEllipseItemDtor(void * obj)
{
    QGraphicsEllipseItem * ptr = reinterpret_cast<QGraphicsEllipseItem *>(obj);
    delete ptr;
}

void SCWQGraphicsEllipseItemDtor(void * obj)
{
    QGraphicsEllipseItem * ptr = reinterpret_cast<QGraphicsEllipseItem *>(obj);
    delete ptr;
}

