
// 
// This file has been automatically generated by RaQt_maker V0.0.5.
// To modify and regenerate it, see the source code available here: 
//         https://github.com/yguillemot/RaQt_maker
// 

#include "QSlider.hpp"

void * QWQSliderCtor_1(void * parent)
{
    QWidget * xparent = reinterpret_cast<QWidget *>(parent);
    QSlider * ptr = new QSlider(xparent);
    return reinterpret_cast<void *>(ptr);
}

void * SCWQSliderCtor_1(void * parent)
{
    QWidget * xparent = reinterpret_cast<QWidget *>(parent);
    SCQSlider * ptr = new SCQSlider(xparent);
    return reinterpret_cast<void *>(ptr);
}

void * QWQSliderCtor_2(int  orientation, void * parent)
{
    Qt::Orientation xorientation = static_cast<Qt::Orientation>(orientation);
    QWidget * xparent = reinterpret_cast<QWidget *>(parent);
    QSlider * ptr = new QSlider(xorientation, xparent);
    return reinterpret_cast<void *>(ptr);
}

void * SCWQSliderCtor_2(int  orientation, void * parent)
{
    Qt::Orientation xorientation = static_cast<Qt::Orientation>(orientation);
    QWidget * xparent = reinterpret_cast<QWidget *>(parent);
    SCQSlider * ptr = new SCQSlider(xorientation, xparent);
    return reinterpret_cast<void *>(ptr);
}

void QWQSlidersetTickPosition(void * obj, int  position)
{
    QSlider * ptr = reinterpret_cast<QSlider *>(obj);
    QSlider::TickPosition xposition = static_cast<QSlider::TickPosition>(position);
    ptr->setTickPosition(xposition);
}

int QWQSlidertickPosition(void * obj)
{
    QSlider * ptr = reinterpret_cast<QSlider *>(obj);
    QSlider::TickPosition retVal = ptr->tickPosition();
    return retVal;
}

void QWQSlidersetTickInterval(void * obj, int32_t  ti)
{
    QSlider * ptr = reinterpret_cast<QSlider *>(obj);
    int xti = ti;
    ptr->setTickInterval(xti);
}

int32_t QWQSlidertickInterval(void * obj)
{
    QSlider * ptr = reinterpret_cast<QSlider *>(obj);
    int retVal = ptr->tickInterval();
    return retVal;
}

void QWvalidateCB_QSlider(void *obj, int32_t objId, char *methodName)
{
    SCQSlider * ptr = reinterpret_cast<SCQSlider *>(obj);

    ptr->validateEvent(objId, methodName);

}
void QWQSliderDtor(void * obj)
{
    QSlider * ptr = reinterpret_cast<QSlider *>(obj);
    delete ptr;
}

void SCWQSliderDtor(void * obj)
{
    QSlider * ptr = reinterpret_cast<QSlider *>(obj);
    delete ptr;
}

