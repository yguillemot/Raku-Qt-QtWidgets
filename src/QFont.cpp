
// 
// This file has been automatically generated by RaQt_maker V0.0.5.
// To modify and regenerate it, see the source code available here: 
//         https://github.com/yguillemot/RaQt_maker
// 

#include "QFont.h"

void * QWQFontCtor_1()
{
    QFont * ptr = new QFont();
    return reinterpret_cast<void *>(ptr);
}

void QWQFontsetFamily(void * obj, char * arg1)
{
    QFont * ptr = reinterpret_cast<QFont *>(obj);
    QString xarg1 = QString(arg1);
    ptr->setFamily(xarg1);
}

void QWQFontsetPointSize(void * obj, int32_t  arg1)
{
    QFont * ptr = reinterpret_cast<QFont *>(obj);
    int xarg1 = arg1;
    ptr->setPointSize(xarg1);
}

void QWQFontsetBold(void * obj, int8_t  arg1)
{
    QFont * ptr = reinterpret_cast<QFont *>(obj);
    bool xarg1 = arg1;
    ptr->setBold(xarg1);
}

void QWQFontsetItalic(void * obj, int8_t  b)
{
    QFont * ptr = reinterpret_cast<QFont *>(obj);
    bool xb = b;
    ptr->setItalic(xb);
}

int32_t QWQFontstretch(void * obj)
{
    QFont * ptr = reinterpret_cast<QFont *>(obj);
    int retVal = ptr->stretch();
    return retVal;
}

void QWQFontsetStretch(void * obj, int32_t  arg1)
{
    QFont * ptr = reinterpret_cast<QFont *>(obj);
    int xarg1 = arg1;
    ptr->setStretch(xarg1);
}

void QWQFontDtor(void * obj)
{
    QFont * ptr = reinterpret_cast<QFont *>(obj);
    delete ptr;
}

