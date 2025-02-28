
// 
// This file has been automatically generated by RaQt_maker V0.0.7.
// To modify and regenerate it, see the source code available here: 
//         https://github.com/yguillemot/RaQt_maker
// 

#include "QLineEdit.hpp"
#include "StrBuffer.h"

void * QWQLineEditCtor_1(void * parent)
{
    QWidget * xparent = reinterpret_cast<QWidget *>(parent);
    QLineEdit * ptr = new QLineEdit(xparent);
    return reinterpret_cast<void *>(ptr);
}

void * SCWQLineEditCtor_1(void * parent)
{
    QWidget * xparent = reinterpret_cast<QWidget *>(parent);
    SCQLineEdit * ptr = new SCQLineEdit(xparent);
    return reinterpret_cast<void *>(ptr);
}

void * QWQLineEditCtor_2(char * arg1, void * parent)
{
    QString xarg1 = QString(arg1);
    QWidget * xparent = reinterpret_cast<QWidget *>(parent);
    QLineEdit * ptr = new QLineEdit(xarg1, xparent);
    return reinterpret_cast<void *>(ptr);
}

void * SCWQLineEditCtor_2(char * arg1, void * parent)
{
    QString xarg1 = QString(arg1);
    QWidget * xparent = reinterpret_cast<QWidget *>(parent);
    SCQLineEdit * ptr = new SCQLineEdit(xarg1, xparent);
    return reinterpret_cast<void *>(ptr);
}

void QWQLineEdittext(void * retBuffer, void * obj)
{
    QLineEdit * ptr = reinterpret_cast<QLineEdit *>(obj);
    QString retVal = ptr->text();
    if (!retVal.isNull()) {
        QWStrBufferWrite(retBuffer, retVal.toUtf8().data());
    }
}

void QWQLineEditsetAlignment(void * obj, int  flag)
{
    QLineEdit * ptr = reinterpret_cast<QLineEdit *>(obj);
    Qt::Alignment xflag = static_cast<Qt::Alignment>(flag);
    ptr->setAlignment(xflag);
}

void QWQLineEditsetText(void * obj, char * arg1)
{
    QLineEdit * ptr = reinterpret_cast<QLineEdit *>(obj);
    QString xarg1 = QString(arg1);
    ptr->setText(xarg1);
}

void QWQLineEditclear(void * obj)
{
    QLineEdit * ptr = reinterpret_cast<QLineEdit *>(obj);
    ptr->clear();
}

void QWvalidateCB_QLineEdit(void *obj, int32_t objId, char *methodName)
{
    SCQLineEdit * ptr = reinterpret_cast<SCQLineEdit *>(obj);

    ptr->validateEvent(objId, methodName);

}
void QWQLineEditDtor(void * obj)
{
    QLineEdit * ptr = reinterpret_cast<QLineEdit *>(obj);
    delete ptr;
}

void SCWQLineEditDtor(void * obj)
{
    QLineEdit * ptr = reinterpret_cast<QLineEdit *>(obj);
    delete ptr;
}

