
// 
// This file has been automatically generated by RaQt_maker V0.0.7.
// To modify and regenerate it, see the source code available here: 
//         https://github.com/yguillemot/RaQt_maker
// 

#include "QGroupBox.hpp"
#include "StrBuffer.h"

void * QWQGroupBoxCtor_1(void * parent)
{
    QWidget * xparent = reinterpret_cast<QWidget *>(parent);
    QGroupBox * ptr = new QGroupBox(xparent);
    return reinterpret_cast<void *>(ptr);
}

void * SCWQGroupBoxCtor_1(void * parent)
{
    QWidget * xparent = reinterpret_cast<QWidget *>(parent);
    SCQGroupBox * ptr = new SCQGroupBox(xparent);
    return reinterpret_cast<void *>(ptr);
}

void * QWQGroupBoxCtor_2(char * title, void * parent)
{
    QString xtitle = QString(title);
    QWidget * xparent = reinterpret_cast<QWidget *>(parent);
    QGroupBox * ptr = new QGroupBox(xtitle, xparent);
    return reinterpret_cast<void *>(ptr);
}

void * SCWQGroupBoxCtor_2(char * title, void * parent)
{
    QString xtitle = QString(title);
    QWidget * xparent = reinterpret_cast<QWidget *>(parent);
    SCQGroupBox * ptr = new SCQGroupBox(xtitle, xparent);
    return reinterpret_cast<void *>(ptr);
}

void QWQGroupBoxtitle(void * retBuffer, void * obj)
{
    QGroupBox * ptr = reinterpret_cast<QGroupBox *>(obj);
    QString retVal = ptr->title();
    if (!retVal.isNull()) {
        QWStrBufferWrite(retBuffer, retVal.toUtf8().data());
    }
}

void QWQGroupBoxsetTitle(void * obj, char * title)
{
    QGroupBox * ptr = reinterpret_cast<QGroupBox *>(obj);
    QString xtitle = QString(title);
    ptr->setTitle(xtitle);
}

void QWQGroupBoxsetAlignment(void * obj, int32_t  alignment)
{
    QGroupBox * ptr = reinterpret_cast<QGroupBox *>(obj);
    int xalignment = alignment;
    ptr->setAlignment(xalignment);
}

int8_t QWQGroupBoxisFlat(void * obj)
{
    QGroupBox * ptr = reinterpret_cast<QGroupBox *>(obj);
    bool retVal = ptr->isFlat();
    return retVal;
}

void QWQGroupBoxsetFlat(void * obj, int8_t  flat)
{
    QGroupBox * ptr = reinterpret_cast<QGroupBox *>(obj);
    bool xflat = flat;
    ptr->setFlat(xflat);
}

int8_t QWQGroupBoxisCheckable(void * obj)
{
    QGroupBox * ptr = reinterpret_cast<QGroupBox *>(obj);
    bool retVal = ptr->isCheckable();
    return retVal;
}

void QWQGroupBoxsetCheckable(void * obj, int8_t  checkable)
{
    QGroupBox * ptr = reinterpret_cast<QGroupBox *>(obj);
    bool xcheckable = checkable;
    ptr->setCheckable(xcheckable);
}

int8_t QWQGroupBoxisChecked(void * obj)
{
    QGroupBox * ptr = reinterpret_cast<QGroupBox *>(obj);
    bool retVal = ptr->isChecked();
    return retVal;
}

void QWQGroupBoxsetChecked(void * obj, int8_t  checked)
{
    QGroupBox * ptr = reinterpret_cast<QGroupBox *>(obj);
    bool xchecked = checked;
    ptr->setChecked(xchecked);
}

void QWvalidateCB_QGroupBox(void *obj, int32_t objId, char *methodName)
{
    SCQGroupBox * ptr = reinterpret_cast<SCQGroupBox *>(obj);

    ptr->validateEvent(objId, methodName);

}
void QWQGroupBoxDtor(void * obj)
{
    QGroupBox * ptr = reinterpret_cast<QGroupBox *>(obj);
    delete ptr;
}

void SCWQGroupBoxDtor(void * obj)
{
    QGroupBox * ptr = reinterpret_cast<QGroupBox *>(obj);
    delete ptr;
}

