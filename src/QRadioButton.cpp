
// 
// This file has been automatically generated by RaQt_maker V0.0.5.
// To modify and regenerate it, see the source code available here: 
//         https://github.com/yguillemot/RaQt_maker
// 

#include "QRadioButton.hpp"

void * QWQRadioButtonCtor_1(void * parent)
{
    QWidget * xparent = reinterpret_cast<QWidget *>(parent);
    QRadioButton * ptr = new QRadioButton(xparent);
    return reinterpret_cast<void *>(ptr);
}

void * SCWQRadioButtonCtor_1(void * parent)
{
    QWidget * xparent = reinterpret_cast<QWidget *>(parent);
    SCQRadioButton * ptr = new SCQRadioButton(xparent);
    return reinterpret_cast<void *>(ptr);
}

void * QWQRadioButtonCtor_2(char * text, void * parent)
{
    QString xtext = QString(text);
    QWidget * xparent = reinterpret_cast<QWidget *>(parent);
    QRadioButton * ptr = new QRadioButton(xtext, xparent);
    return reinterpret_cast<void *>(ptr);
}

void * SCWQRadioButtonCtor_2(char * text, void * parent)
{
    QString xtext = QString(text);
    QWidget * xparent = reinterpret_cast<QWidget *>(parent);
    SCQRadioButton * ptr = new SCQRadioButton(xtext, xparent);
    return reinterpret_cast<void *>(ptr);
}

void QWvalidateCB_QRadioButton(void *obj, int32_t objId, char *methodName)
{
    SCQRadioButton * ptr = reinterpret_cast<SCQRadioButton *>(obj);

    ptr->validateEvent(objId, methodName);

}
void QWQRadioButtonDtor(void * obj)
{
    QRadioButton * ptr = reinterpret_cast<QRadioButton *>(obj);
    delete ptr;
}

void SCWQRadioButtonDtor(void * obj)
{
    QRadioButton * ptr = reinterpret_cast<QRadioButton *>(obj);
    delete ptr;
}

