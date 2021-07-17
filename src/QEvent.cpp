
// 
// This file has been automatically generated by RaQt_maker V0.0.2.
// To modify and regenerate it, see the source code available here: 
//         https://github.com/yguillemot/RaQt_maker
// 


#include "QEvent.h"

void * QWQEventCtor_1(int  type)
{
    QEvent::Type xtype = static_cast<QEvent::Type>(type);
    QEvent * ptr = new QEvent(xtype);
    return reinterpret_cast<void *>(ptr);
}

void * QWQEventCtor_2(void * other)
{
    QEvent & xother = * reinterpret_cast<QEvent *>(other);
    QEvent * ptr = new QEvent(xother);
    return reinterpret_cast<void *>(ptr);
}

int QWQEventtype(void * obj)
{
    QEvent * ptr = reinterpret_cast<QEvent *>(obj);
     QEvent::Type  retVal = ptr->type();
    return retVal;
}

int8_t QWQEventspontaneous(void * obj)
{
    QEvent * ptr = reinterpret_cast<QEvent *>(obj);
     bool  retVal = ptr->spontaneous();
    return retVal;
}

int8_t QWQEventisAccepted(void * obj)
{
    QEvent * ptr = reinterpret_cast<QEvent *>(obj);
     bool  retVal = ptr->isAccepted();
    return retVal;
}

void QWQEventaccept(void * obj)
{
    QEvent * ptr = reinterpret_cast<QEvent *>(obj);
    ptr->accept();
}

void QWQEventignore(void * obj)
{
    QEvent * ptr = reinterpret_cast<QEvent *>(obj);
    ptr->ignore();
}

void QWQEventDtor(void * obj)
{
    QEvent * ptr = reinterpret_cast<QEvent *>(obj);
    delete ptr;
}
