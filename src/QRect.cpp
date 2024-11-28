
// 
// This file has been automatically generated by RaQt_maker V0.0.6.
// To modify and regenerate it, see the source code available here: 
//         https://github.com/yguillemot/RaQt_maker
// 

#include "QRect.hpp"

void * QWQRectCtor_1()
{
    QRect * ptr = new QRect();
    return reinterpret_cast<void *>(ptr);
}

void * SCWQRectCtor_1()
{
    SCQRect * ptr = new SCQRect();
    return reinterpret_cast<void *>(ptr);
}

void * QWQRectCtor_2(void * topleft, void * bottomright)
{
    QPoint & xtopleft = * reinterpret_cast<QPoint *>(topleft);
    QPoint & xbottomright = * reinterpret_cast<QPoint *>(bottomright);
    QRect * ptr = new QRect(xtopleft, xbottomright);
    return reinterpret_cast<void *>(ptr);
}

void * SCWQRectCtor_2(void * topleft, void * bottomright)
{
    QPoint & xtopleft = * reinterpret_cast<QPoint *>(topleft);
    QPoint & xbottomright = * reinterpret_cast<QPoint *>(bottomright);
    SCQRect * ptr = new SCQRect(xtopleft, xbottomright);
    return reinterpret_cast<void *>(ptr);
}

void * QWQRectCtor_4(int32_t  left, int32_t  top, int32_t  width, int32_t  height)
{
    int xleft = left;
    int xtop = top;
    int xwidth = width;
    int xheight = height;
    QRect * ptr = new QRect(xleft, xtop, xwidth, xheight);
    return reinterpret_cast<void *>(ptr);
}

void * SCWQRectCtor_4(int32_t  left, int32_t  top, int32_t  width, int32_t  height)
{
    int xleft = left;
    int xtop = top;
    int xwidth = width;
    int xheight = height;
    SCQRect * ptr = new SCQRect(xleft, xtop, xwidth, xheight);
    return reinterpret_cast<void *>(ptr);
}

int8_t QWQRectisNull(void * obj)
{
    QRect * ptr = reinterpret_cast<QRect *>(obj);
    bool retVal = ptr->isNull();
    return retVal;
}

int8_t QWQRectisEmpty(void * obj)
{
    QRect * ptr = reinterpret_cast<QRect *>(obj);
    bool retVal = ptr->isEmpty();
    return retVal;
}

int8_t QWQRectisValid(void * obj)
{
    QRect * ptr = reinterpret_cast<QRect *>(obj);
    bool retVal = ptr->isValid();
    return retVal;
}

int32_t QWQRectleft(void * obj)
{
    QRect * ptr = reinterpret_cast<QRect *>(obj);
    int retVal = ptr->left();
    return retVal;
}

int32_t QWQRecttop(void * obj)
{
    QRect * ptr = reinterpret_cast<QRect *>(obj);
    int retVal = ptr->top();
    return retVal;
}

int32_t QWQRectright(void * obj)
{
    QRect * ptr = reinterpret_cast<QRect *>(obj);
    int retVal = ptr->right();
    return retVal;
}

int32_t QWQRectbottom(void * obj)
{
    QRect * ptr = reinterpret_cast<QRect *>(obj);
    int retVal = ptr->bottom();
    return retVal;
}

void * QWQRectnormalized(void * obj)
{
    QRect * ptr = reinterpret_cast<QRect *>(obj);
    QRect retVal = ptr->normalized();
    QRect * xxretVal = new QRect(retVal);
    void * xretVal = reinterpret_cast<void *>(xxretVal);
    return xretVal;
}

int32_t QWQRectx(void * obj)
{
    QRect * ptr = reinterpret_cast<QRect *>(obj);
    int retVal = ptr->x();
    return retVal;
}

int32_t QWQRecty(void * obj)
{
    QRect * ptr = reinterpret_cast<QRect *>(obj);
    int retVal = ptr->y();
    return retVal;
}

void QWQRectsetX(void * obj, int32_t  x)
{
    QRect * ptr = reinterpret_cast<QRect *>(obj);
    int xx = x;
    ptr->setX(xx);
}

void QWQRectsetY(void * obj, int32_t  y)
{
    QRect * ptr = reinterpret_cast<QRect *>(obj);
    int xy = y;
    ptr->setY(xy);
}

void * QWQRecttopLeft(void * obj)
{
    QRect * ptr = reinterpret_cast<QRect *>(obj);
    QPoint retVal = ptr->topLeft();
    QPoint * xxretVal = new QPoint(retVal);
    void * xretVal = reinterpret_cast<void *>(xxretVal);
    return xretVal;
}

void * QWQRectbottomRight(void * obj)
{
    QRect * ptr = reinterpret_cast<QRect *>(obj);
    QPoint retVal = ptr->bottomRight();
    QPoint * xxretVal = new QPoint(retVal);
    void * xretVal = reinterpret_cast<void *>(xxretVal);
    return xretVal;
}

void * QWQRecttopRight(void * obj)
{
    QRect * ptr = reinterpret_cast<QRect *>(obj);
    QPoint retVal = ptr->topRight();
    QPoint * xxretVal = new QPoint(retVal);
    void * xretVal = reinterpret_cast<void *>(xxretVal);
    return xretVal;
}

void * QWQRectbottomLeft(void * obj)
{
    QRect * ptr = reinterpret_cast<QRect *>(obj);
    QPoint retVal = ptr->bottomLeft();
    QPoint * xxretVal = new QPoint(retVal);
    void * xretVal = reinterpret_cast<void *>(xxretVal);
    return xretVal;
}

void * QWQRectcenter(void * obj)
{
    QRect * ptr = reinterpret_cast<QRect *>(obj);
    QPoint retVal = ptr->center();
    QPoint * xxretVal = new QPoint(retVal);
    void * xretVal = reinterpret_cast<void *>(xxretVal);
    return xretVal;
}

void QWQRecttranslate_1(void * obj, int32_t  dx, int32_t  dy)
{
    QRect * ptr = reinterpret_cast<QRect *>(obj);
    int xdx = dx;
    int xdy = dy;
    ptr->translate(xdx, xdy);
}

void QWQRecttranslate_2(void * obj, void * p)
{
    QRect * ptr = reinterpret_cast<QRect *>(obj);
    QPoint & xp = * reinterpret_cast<QPoint *>(p);
    ptr->translate(xp);
}

void * QWQRecttranslated_1(void * obj, int32_t  dx, int32_t  dy)
{
    QRect * ptr = reinterpret_cast<QRect *>(obj);
    int xdx = dx;
    int xdy = dy;
    QRect retVal = ptr->translated(xdx, xdy);
    QRect * xxretVal = new QRect(retVal);
    void * xretVal = reinterpret_cast<void *>(xxretVal);
    return xretVal;
}

void * QWQRecttranslated_2(void * obj, void * p)
{
    QRect * ptr = reinterpret_cast<QRect *>(obj);
    QPoint & xp = * reinterpret_cast<QPoint *>(p);
    QRect retVal = ptr->translated(xp);
    QRect * xxretVal = new QRect(retVal);
    void * xretVal = reinterpret_cast<void *>(xxretVal);
    return xretVal;
}

void * QWQRecttransposed(void * obj)
{
    QRect * ptr = reinterpret_cast<QRect *>(obj);
    QRect retVal = ptr->transposed();
    QRect * xxretVal = new QRect(retVal);
    void * xretVal = reinterpret_cast<void *>(xxretVal);
    return xretVal;
}

void QWQRectsetRect(void * obj, int32_t  x, int32_t  y, int32_t  w, int32_t  h)
{
    QRect * ptr = reinterpret_cast<QRect *>(obj);
    int xx = x;
    int xy = y;
    int xw = w;
    int xh = h;
    ptr->setRect(xx, xy, xw, xh);
}

void QWQRectadjust(void * obj, int32_t  x1, int32_t  y1, int32_t  x2, int32_t  y2)
{
    QRect * ptr = reinterpret_cast<QRect *>(obj);
    int xx1 = x1;
    int xy1 = y1;
    int xx2 = x2;
    int xy2 = y2;
    ptr->adjust(xx1, xy1, xx2, xy2);
}

void * QWQRectadjusted(void * obj, int32_t  x1, int32_t  y1, int32_t  x2, int32_t  y2)
{
    QRect * ptr = reinterpret_cast<QRect *>(obj);
    int xx1 = x1;
    int xy1 = y1;
    int xx2 = x2;
    int xy2 = y2;
    QRect retVal = ptr->adjusted(xx1, xy1, xx2, xy2);
    QRect * xxretVal = new QRect(retVal);
    void * xretVal = reinterpret_cast<void *>(xxretVal);
    return xretVal;
}

void * QWQRectsize(void * obj)
{
    QRect * ptr = reinterpret_cast<QRect *>(obj);
    QSize retVal = ptr->size();
    QSize * xxretVal = new QSize(retVal);
    void * xretVal = reinterpret_cast<void *>(xxretVal);
    return xretVal;
}

int32_t QWQRectwidth(void * obj)
{
    QRect * ptr = reinterpret_cast<QRect *>(obj);
    int retVal = ptr->width();
    return retVal;
}

int32_t QWQRectheight(void * obj)
{
    QRect * ptr = reinterpret_cast<QRect *>(obj);
    int retVal = ptr->height();
    return retVal;
}

void QWQRectsetWidth(void * obj, int32_t  w)
{
    QRect * ptr = reinterpret_cast<QRect *>(obj);
    int xw = w;
    ptr->setWidth(xw);
}

void QWQRectsetHeight(void * obj, int32_t  h)
{
    QRect * ptr = reinterpret_cast<QRect *>(obj);
    int xh = h;
    ptr->setHeight(xh);
}

void * QWQRectunited(void * obj, void * other)
{
    QRect * ptr = reinterpret_cast<QRect *>(obj);
    QRect & xother = * reinterpret_cast<QRect *>(other);
    QRect retVal = ptr->united(xother);
    QRect * xxretVal = new QRect(retVal);
    void * xretVal = reinterpret_cast<void *>(xxretVal);
    return xretVal;
}

void QWvalidateCB_QRect(void *obj, int32_t objId, char *methodName)
{
    SCQRect * ptr = reinterpret_cast<SCQRect *>(obj);

    ptr->validateEvent(objId, methodName);

}
void QWQRectDtor(void * obj)
{
    QRect * ptr = reinterpret_cast<QRect *>(obj);
    delete ptr;
}

void SCWQRectDtor(void * obj)
{
    QRect * ptr = reinterpret_cast<QRect *>(obj);
    delete ptr;
}

