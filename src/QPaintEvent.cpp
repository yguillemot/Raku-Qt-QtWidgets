
// 
// This file has been automatically generated by RaQt_maker V0.0.5.
// To modify and regenerate it, see the source code available here: 
//         https://github.com/yguillemot/RaQt_maker
// 

#include "QPaintEvent.h"

void * QWQPaintEventCtor_2(void * paintRect)
{
    QRect & xpaintRect = * reinterpret_cast<QRect *>(paintRect);
    QPaintEvent * ptr = new QPaintEvent(xpaintRect);
    return reinterpret_cast<void *>(ptr);
}

void * QWQPaintEventrect(void * obj)
{
    QPaintEvent * ptr = reinterpret_cast<QPaintEvent *>(obj);
    const QRect & retVal = ptr->rect();
    void * xretVal = const_cast<void *>(reinterpret_cast<const void *>(& retVal));
    return xretVal;
}

void QWQPaintEventDtor(void * obj)
{
    QPaintEvent * ptr = reinterpret_cast<QPaintEvent *>(obj);
    delete ptr;
}

