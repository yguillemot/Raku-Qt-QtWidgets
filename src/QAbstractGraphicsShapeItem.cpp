
// 
// This file has been automatically generated by RaQt_maker V0.0.7.
// To modify and regenerate it, see the source code available here: 
//         https://github.com/yguillemot/RaQt_maker
// 

#include "QAbstractGraphicsShapeItem.hpp"

void * QWQAbstractGraphicsShapeItempen(void * obj)
{
    QAbstractGraphicsShapeItem * ptr = reinterpret_cast<QAbstractGraphicsShapeItem *>(obj);
    QPen retVal = ptr->pen();
    QPen * xxretVal = new QPen(retVal);
    void * xretVal = reinterpret_cast<void *>(xxretVal);
    return xretVal;
}

void QWQAbstractGraphicsShapeItemsetPen(void * obj, void * pen)
{
    QAbstractGraphicsShapeItem * ptr = reinterpret_cast<QAbstractGraphicsShapeItem *>(obj);
    QPen & xpen = * reinterpret_cast<QPen *>(pen);
    ptr->setPen(xpen);
}

void * QWQAbstractGraphicsShapeItembrush(void * obj)
{
    QAbstractGraphicsShapeItem * ptr = reinterpret_cast<QAbstractGraphicsShapeItem *>(obj);
    QBrush retVal = ptr->brush();
    QBrush * xxretVal = new QBrush(retVal);
    void * xretVal = reinterpret_cast<void *>(xxretVal);
    return xretVal;
}

void QWQAbstractGraphicsShapeItemsetBrush(void * obj, void * brush)
{
    QAbstractGraphicsShapeItem * ptr = reinterpret_cast<QAbstractGraphicsShapeItem *>(obj);
    QBrush & xbrush = * reinterpret_cast<QBrush *>(brush);
    ptr->setBrush(xbrush);
}

