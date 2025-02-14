
// 
// This file has been automatically generated by RaQt_maker V0.0.7.
// To modify and regenerate it, see the source code available here: 
//         https://github.com/yguillemot/RaQt_maker
// 

#include "QPoint.hpp"

void * QWQPointCtor_1()
{
    QPoint * ptr = new QPoint();
    return reinterpret_cast<void *>(ptr);
}

void * SCWQPointCtor_1()
{
    SCQPoint * ptr = new SCQPoint();
    return reinterpret_cast<void *>(ptr);
}

void * QWQPointCtor_2(int32_t  xpos, int32_t  ypos)
{
    int xxpos = xpos;
    int xypos = ypos;
    QPoint * ptr = new QPoint(xxpos, xypos);
    return reinterpret_cast<void *>(ptr);
}

void * SCWQPointCtor_2(int32_t  xpos, int32_t  ypos)
{
    int xxpos = xpos;
    int xypos = ypos;
    SCQPoint * ptr = new SCQPoint(xxpos, xypos);
    return reinterpret_cast<void *>(ptr);
}

int8_t QWQPointisNull(void * obj)
{
    QPoint * ptr = reinterpret_cast<QPoint *>(obj);
    bool retVal = ptr->isNull();
    return retVal;
}

int32_t QWQPointx(void * obj)
{
    QPoint * ptr = reinterpret_cast<QPoint *>(obj);
    int retVal = ptr->x();
    return retVal;
}

int32_t QWQPointy(void * obj)
{
    QPoint * ptr = reinterpret_cast<QPoint *>(obj);
    int retVal = ptr->y();
    return retVal;
}

void QWQPointsetX(void * obj, int32_t  x)
{
    QPoint * ptr = reinterpret_cast<QPoint *>(obj);
    int xx = x;
    ptr->setX(xx);
}

void QWQPointsetY(void * obj, int32_t  y)
{
    QPoint * ptr = reinterpret_cast<QPoint *>(obj);
    int xy = y;
    ptr->setY(xy);
}

int32_t QWQPointmanhattanLength(void * obj)
{
    QPoint * ptr = reinterpret_cast<QPoint *>(obj);
    int retVal = ptr->manhattanLength();
    return retVal;
}

void QWvalidateCB_QPoint(void *obj, int32_t objId, char *methodName)
{
    SCQPoint * ptr = reinterpret_cast<SCQPoint *>(obj);

    ptr->validateEvent(objId, methodName);

}
void QWQPointDtor(void * obj)
{
    QPoint * ptr = reinterpret_cast<QPoint *>(obj);
    delete ptr;
}

void SCWQPointDtor(void * obj)
{
    QPoint * ptr = reinterpret_cast<QPoint *>(obj);
    delete ptr;
}

