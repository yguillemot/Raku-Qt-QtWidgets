
// 
// This file has been automatically generated by RaQt_maker V0.0.2.
// To modify and regenerate it, see the source code available here: 
//         https://github.com/yguillemot/RaQt_maker
// 


#include "QTextEdit.hpp"

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

char * QWQTextEdittoPlainText(void * obj)
{
    QTextEdit * ptr = reinterpret_cast<QTextEdit *>(obj);
     QString  retVal = ptr->toPlainText();
    char * xretVal = retVal.toLocal8Bit().data();
    return xretVal;
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
