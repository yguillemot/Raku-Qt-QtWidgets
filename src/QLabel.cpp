
// 
// This file has been automatically generated by RaQt_maker V0.0.4.
// To modify and regenerate it, see the source code available here: 
//         https://github.com/yguillemot/RaQt_maker
// 

#include "QLabel.hpp"

void * QWQLabelCtor_1(void * parent, int  f)
{
    QWidget * xparent = reinterpret_cast<QWidget *>(parent);
    Qt::WindowFlags xf = static_cast<Qt::WindowFlags>(f);
    QLabel * ptr = new QLabel(xparent, xf);
    return reinterpret_cast<void *>(ptr);
}

void * SCWQLabelCtor_1(void * parent, int  f)
{
    QWidget * xparent = reinterpret_cast<QWidget *>(parent);
    Qt::WindowFlags xf = static_cast<Qt::WindowFlags>(f);
    SCQLabel * ptr = new SCQLabel(xparent, xf);
    return reinterpret_cast<void *>(ptr);
}

void * QWQLabelCtor_2(char * text, void * parent, int  f)
{
    QString xtext = QString(text);
    QWidget * xparent = reinterpret_cast<QWidget *>(parent);
    Qt::WindowFlags xf = static_cast<Qt::WindowFlags>(f);
    QLabel * ptr = new QLabel(xtext, xparent, xf);
    return reinterpret_cast<void *>(ptr);
}

void * SCWQLabelCtor_2(char * text, void * parent, int  f)
{
    QString xtext = QString(text);
    QWidget * xparent = reinterpret_cast<QWidget *>(parent);
    Qt::WindowFlags xf = static_cast<Qt::WindowFlags>(f);
    SCQLabel * ptr = new SCQLabel(xtext, xparent, xf);
    return reinterpret_cast<void *>(ptr);
}

void QWQLabelsetTextFormat(void * obj, int  arg1)
{
    QLabel * ptr = reinterpret_cast<QLabel *>(obj);
    Qt::TextFormat xarg1 = static_cast<Qt::TextFormat>(arg1);
    ptr->setTextFormat(xarg1);
}

void QWQLabelsetAlignment(void * obj, int  arg1)
{
    QLabel * ptr = reinterpret_cast<QLabel *>(obj);
    Qt::Alignment xarg1 = static_cast<Qt::Alignment>(arg1);
    ptr->setAlignment(xarg1);
}

void QWQLabelsetMargin(void * obj, int32_t  arg1)
{
    QLabel * ptr = reinterpret_cast<QLabel *>(obj);
    int xarg1 = arg1;
    ptr->setMargin(xarg1);
}

void QWQLabelsetText(void * obj, char * arg1)
{
    QLabel * ptr = reinterpret_cast<QLabel *>(obj);
    QString xarg1 = QString(arg1);
    ptr->setText(xarg1);
}

void QWQLabelclear(void * obj)
{
    QLabel * ptr = reinterpret_cast<QLabel *>(obj);
    ptr->clear();
}

void QWvalidateCB_QLabel(void *obj, int32_t objId, char *methodName)
{
    SCQLabel * ptr = reinterpret_cast<SCQLabel *>(obj);

    ptr->validateEvent(objId, methodName);

}
void QWQLabelDtor(void * obj)
{
    QLabel * ptr = reinterpret_cast<QLabel *>(obj);
    delete ptr;
}

void SCWQLabelDtor(void * obj)
{
    QLabel * ptr = reinterpret_cast<QLabel *>(obj);
    delete ptr;
}

