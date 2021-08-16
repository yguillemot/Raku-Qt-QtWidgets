
// 
// This file has been automatically generated by RaQt_maker V0.0.4.
// To modify and regenerate it, see the source code available here: 
//         https://github.com/yguillemot/RaQt_maker
// 

#include "QRect.h"

void * QWQRectCtor_1()
{
    QRect * ptr = new QRect();
    return reinterpret_cast<void *>(ptr);
}

void * QWQRectCtor_2(void * topleft, void * bottomright)
{
    QPoint & xtopleft = * reinterpret_cast<QPoint *>(topleft);
    QPoint & xbottomright = * reinterpret_cast<QPoint *>(bottomright);
    QRect * ptr = new QRect(xtopleft, xbottomright);
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

void QWQRectDtor(void * obj)
{
    QRect * ptr = reinterpret_cast<QRect *>(obj);
    delete ptr;
}

