
// 
// This file has been automatically generated by RaQt_maker V0.0.2.
// To modify and regenerate it, see the source code available here: 
//         https://github.com/yguillemot/RaQt_maker
// 


#include "QAction.h"

void * QWQActionCtor_1(void * parent)
{
    QObject * xparent = reinterpret_cast<QObject *>(parent);
    QAction * ptr = new QAction(xparent);
    return reinterpret_cast<void *>(ptr);
}

void QWQActiontrigger(void * obj)
{
    QAction * ptr = reinterpret_cast<QAction *>(obj);
    ptr->trigger();
}

void QWQActionsetEnabled(void * obj, int8_t  arg1)
{
    QAction * ptr = reinterpret_cast<QAction *>(obj);
    bool xarg1 = arg1;
    ptr->setEnabled(xarg1);
}

void QWQActionsetDisabled(void * obj, int8_t  b)
{
    QAction * ptr = reinterpret_cast<QAction *>(obj);
    bool xb = b;
    ptr->setDisabled(xb);
}

void QWQActionDtor(void * obj)
{
    QAction * ptr = reinterpret_cast<QAction *>(obj);
    delete ptr;
}

