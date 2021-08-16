
// 
// This file has been automatically generated by RaQt_maker V0.0.4.
// To modify and regenerate it, see the source code available here: 
//         https://github.com/yguillemot/RaQt_maker
// 

#include "QPen.h"

void * QWQPenCtor_1()
{
    QPen * ptr = new QPen();
    return reinterpret_cast<void *>(ptr);
}

void * QWQPenCtor_2(int  arg1)
{
    Qt::PenStyle xarg1 = static_cast<Qt::PenStyle>(arg1);
    QPen * ptr = new QPen(xarg1);
    return reinterpret_cast<void *>(ptr);
}

void * QWQPenCtor_3(void * color)
{
    QColor & xcolor = * reinterpret_cast<QColor *>(color);
    QPen * ptr = new QPen(xcolor);
    return reinterpret_cast<void *>(ptr);
}

void QWQPensetWidth(void * obj, int32_t  width)
{
    QPen * ptr = reinterpret_cast<QPen *>(obj);
    int xwidth = width;
    ptr->setWidth(xwidth);
}

void QWQPensetColor(void * obj, void * color)
{
    QPen * ptr = reinterpret_cast<QPen *>(obj);
    QColor & xcolor = * reinterpret_cast<QColor *>(color);
    ptr->setColor(xcolor);
}

void QWQPensetBrush(void * obj, void * brush)
{
    QPen * ptr = reinterpret_cast<QPen *>(obj);
    QBrush & xbrush = * reinterpret_cast<QBrush *>(brush);
    ptr->setBrush(xbrush);
}

void QWQPenDtor(void * obj)
{
    QPen * ptr = reinterpret_cast<QPen *>(obj);
    delete ptr;
}

