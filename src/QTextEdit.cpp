
// 
// This file has been automatically generated by RaQt_maker V0.0.4.
// To modify and regenerate it, see the source code available here: 
//         https://github.com/yguillemot/RaQt_maker
// 

#include "QTextEdit.hpp"
#include "StrBuffer.h"

void * QWQTextEditCtor_1(void * parent)
{
    QWidget * xparent = reinterpret_cast<QWidget *>(parent);
    QTextEdit * ptr = new QTextEdit(xparent);
    return reinterpret_cast<void *>(ptr);
}

void * SCWQTextEditCtor_1(void * parent)
{
    QWidget * xparent = reinterpret_cast<QWidget *>(parent);
    SCQTextEdit * ptr = new SCQTextEdit(xparent);
    return reinterpret_cast<void *>(ptr);
}

void QWQTextEditsetReadOnly(void * obj, int8_t  ro)
{
    QTextEdit * ptr = reinterpret_cast<QTextEdit *>(obj);
    bool xro = ro;
    ptr->setReadOnly(xro);
}

void QWQTextEdittoPlainText(void * retBuffer, void * obj)
{
    QTextEdit * ptr = reinterpret_cast<QTextEdit *>(obj);
    QString retVal = ptr->toPlainText();
    if (!retVal.isNull()) {
        QWStrBufferWrite(retBuffer, retVal.toUtf8().data());
    }
}

void QWQTextEditsetPlainText(void * obj, char * text)
{
    QTextEdit * ptr = reinterpret_cast<QTextEdit *>(obj);
    QString xtext = QString(text);
    ptr->setPlainText(xtext);
}

void QWvalidateCB_QTextEdit(void *obj, int32_t objId, char *methodName)
{
    SCQTextEdit * ptr = reinterpret_cast<SCQTextEdit *>(obj);

    ptr->validateEvent(objId, methodName);

}
void QWQTextEditDtor(void * obj)
{
    QTextEdit * ptr = reinterpret_cast<QTextEdit *>(obj);
    delete ptr;
}

void SCWQTextEditDtor(void * obj)
{
    QTextEdit * ptr = reinterpret_cast<QTextEdit *>(obj);
    delete ptr;
}

