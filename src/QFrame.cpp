
// 
// This file has been automatically generated by RaQt_maker V0.0.6.
// To modify and regenerate it, see the source code available here: 
//         https://github.com/yguillemot/RaQt_maker
// 

#include "QFrame.hpp"

void * QWQFrameCtor(void * parent, int  f)
{
    QWidget * xparent = reinterpret_cast<QWidget *>(parent);
    Qt::WindowFlags xf = static_cast<Qt::WindowFlags>(f);
    QFrame * ptr = new QFrame(xparent, xf);
    return reinterpret_cast<void *>(ptr);
}

void * SCWQFrameCtor(void * parent, int  f)
{
    QWidget * xparent = reinterpret_cast<QWidget *>(parent);
    Qt::WindowFlags xf = static_cast<Qt::WindowFlags>(f);
    SCQFrame * ptr = new SCQFrame(xparent, xf);
    return reinterpret_cast<void *>(ptr);
}

int32_t QWQFrameframeStyle(void * obj)
{
    QFrame * ptr = reinterpret_cast<QFrame *>(obj);
    int retVal = ptr->frameStyle();
    return retVal;
}

void QWQFramesetFrameStyle(void * obj, int32_t  arg1)
{
    QFrame * ptr = reinterpret_cast<QFrame *>(obj);
    int xarg1 = arg1;
    ptr->setFrameStyle(xarg1);
}

int32_t QWQFrameframeWidth(void * obj)
{
    QFrame * ptr = reinterpret_cast<QFrame *>(obj);
    int retVal = ptr->frameWidth();
    return retVal;
}

void * QWQFramesizeHint(void * obj)
{
    QFrame * ptr = reinterpret_cast<QFrame *>(obj);
    QSize retVal = ptr->sizeHint();
    QSize * xxretVal = new QSize(retVal);
    void * xretVal = reinterpret_cast<void *>(xxretVal);
    return xretVal;
}

int QWQFrameframeShape(void * obj)
{
    QFrame * ptr = reinterpret_cast<QFrame *>(obj);
    QFrame::Shape retVal = ptr->frameShape();
    return retVal;
}

void QWQFramesetFrameShape(void * obj, int  arg1)
{
    QFrame * ptr = reinterpret_cast<QFrame *>(obj);
    QFrame::Shape xarg1 = static_cast<QFrame::Shape>(arg1);
    ptr->setFrameShape(xarg1);
}

int QWQFrameframeShadow(void * obj)
{
    QFrame * ptr = reinterpret_cast<QFrame *>(obj);
    QFrame::Shadow retVal = ptr->frameShadow();
    return retVal;
}

void QWQFramesetFrameShadow(void * obj, int  arg1)
{
    QFrame * ptr = reinterpret_cast<QFrame *>(obj);
    QFrame::Shadow xarg1 = static_cast<QFrame::Shadow>(arg1);
    ptr->setFrameShadow(xarg1);
}

int32_t QWQFramelineWidth(void * obj)
{
    QFrame * ptr = reinterpret_cast<QFrame *>(obj);
    int retVal = ptr->lineWidth();
    return retVal;
}

void QWQFramesetLineWidth(void * obj, int32_t  arg1)
{
    QFrame * ptr = reinterpret_cast<QFrame *>(obj);
    int xarg1 = arg1;
    ptr->setLineWidth(xarg1);
}

int32_t QWQFramemidLineWidth(void * obj)
{
    QFrame * ptr = reinterpret_cast<QFrame *>(obj);
    int retVal = ptr->midLineWidth();
    return retVal;
}

void QWQFramesetMidLineWidth(void * obj, int32_t  arg1)
{
    QFrame * ptr = reinterpret_cast<QFrame *>(obj);
    int xarg1 = arg1;
    ptr->setMidLineWidth(xarg1);
}

void * QWQFrameframeRect(void * obj)
{
    QFrame * ptr = reinterpret_cast<QFrame *>(obj);
    QRect retVal = ptr->frameRect();
    QRect * xxretVal = new QRect(retVal);
    void * xretVal = reinterpret_cast<void *>(xxretVal);
    return xretVal;
}

void QWQFramesetFrameRect(void * obj, void * arg1)
{
    QFrame * ptr = reinterpret_cast<QFrame *>(obj);
    QRect & xarg1 = * reinterpret_cast<QRect *>(arg1);
    ptr->setFrameRect(xarg1);
}

void QWvalidateCB_QFrame(void *obj, int32_t objId, char *methodName)
{
    SCQFrame * ptr = reinterpret_cast<SCQFrame *>(obj);

    ptr->validateEvent(objId, methodName);

}
void QWQFrameDtor(void * obj)
{
    QFrame * ptr = reinterpret_cast<QFrame *>(obj);
    delete ptr;
}

void SCWQFrameDtor(void * obj)
{
    QFrame * ptr = reinterpret_cast<QFrame *>(obj);
    delete ptr;
}

