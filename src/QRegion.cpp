
// 
// This file has been automatically generated by RaQt_maker V0.0.2.
// To modify and regenerate it, see the source code available here: 
//         https://github.com/yguillemot/RaQt_maker
// 


#include "QRegion.h"

void * QWQRegionCtor_1()
{
    QRegion * ptr = new QRegion();
    return reinterpret_cast<void *>(ptr);
}

void QWQRegionDtor(void * obj)
{
    QRegion * ptr = reinterpret_cast<QRegion *>(obj);
    delete ptr;
}

