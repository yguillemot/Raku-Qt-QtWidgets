
// 
// This file has been automatically generated by RaQt_maker V0.0.4.
// To modify and regenerate it, see the source code available here: 
//         https://github.com/yguillemot/RaQt_maker
// 

#include "QWidget.hpp"

void * QWQWidgetCtor(void * parent, int  f)
{
    QWidget * xparent = reinterpret_cast<QWidget *>(parent);
    Qt::WindowFlags xf = static_cast<Qt::WindowFlags>(f);
    QWidget * ptr = new QWidget(xparent, xf);
    return reinterpret_cast<void *>(ptr);
}

void * SCWQWidgetCtor(void * parent, int  f)
{
    QWidget * xparent = reinterpret_cast<QWidget *>(parent);
    Qt::WindowFlags xf = static_cast<Qt::WindowFlags>(f);
    SCQWidget * ptr = new SCQWidget(xparent, xf);
    return reinterpret_cast<void *>(ptr);
}

void QWQWidgetsetDisabled(void * obj, int8_t  arg1)
{
    QWidget * ptr = reinterpret_cast<QWidget *>(obj);
    bool xarg1 = arg1;
    ptr->setDisabled(xarg1);
}

int32_t QWQWidgetwidth(void * obj)
{
    QWidget * ptr = reinterpret_cast<QWidget *>(obj);
    int retVal = ptr->width();
    return retVal;
}

int32_t QWQWidgetheight(void * obj)
{
    QWidget * ptr = reinterpret_cast<QWidget *>(obj);
    int retVal = ptr->height();
    return retVal;
}

void QWQWidgetsetMinimumSize_2(void * obj, int32_t  minw, int32_t  minh)
{
    QWidget * ptr = reinterpret_cast<QWidget *>(obj);
    int xminw = minw;
    int xminh = minh;
    ptr->setMinimumSize(xminw, xminh);
}

void QWQWidgetsetFixedSize_2(void * obj, int32_t  w, int32_t  h)
{
    QWidget * ptr = reinterpret_cast<QWidget *>(obj);
    int xw = w;
    int xh = h;
    ptr->setFixedSize(xw, xh);
}

void QWQWidgetsetFixedWidth(void * obj, int32_t  w)
{
    QWidget * ptr = reinterpret_cast<QWidget *>(obj);
    int xw = w;
    ptr->setFixedWidth(xw);
}

void QWQWidgetsetFixedHeight(void * obj, int32_t  h)
{
    QWidget * ptr = reinterpret_cast<QWidget *>(obj);
    int xh = h;
    ptr->setFixedHeight(xh);
}

void * QWQWidgetfont(void * obj)
{
    QWidget * ptr = reinterpret_cast<QWidget *>(obj);
    const QFont & retVal = ptr->font();
    void * xretVal = const_cast<void *>(reinterpret_cast<const void *>(& retVal));
    return xretVal;
}

void QWQWidgetsetFont(void * obj, void * arg1)
{
    QWidget * ptr = reinterpret_cast<QWidget *>(obj);
    QFont & xarg1 = * reinterpret_cast<QFont *>(arg1);
    ptr->setFont(xarg1);
}

void QWQWidgetrender_1(void * obj, void * target, void * targetOffset, void * sourceRegion, int  renderFlags)
{
    QWidget * ptr = reinterpret_cast<QWidget *>(obj);
    QPaintDevice * xtarget = reinterpret_cast<QPaintDevice *>(target);
    QPoint & xtargetOffset = * reinterpret_cast<QPoint *>(targetOffset);
    QRegion & xsourceRegion = * reinterpret_cast<QRegion *>(sourceRegion);
    QWidget::RenderFlags xrenderFlags = static_cast<QWidget::RenderFlags>(renderFlags);
    ptr->render(xtarget, xtargetOffset, xsourceRegion, xrenderFlags);
}

void QWQWidgetsetWindowTitle(void * obj, char * arg1)
{
    QWidget * ptr = reinterpret_cast<QWidget *>(obj);
    QString xarg1 = QString(arg1);
    ptr->setWindowTitle(xarg1);
}

void QWQWidgetsetToolTip(void * obj, char * arg1)
{
    QWidget * ptr = reinterpret_cast<QWidget *>(obj);
    QString xarg1 = QString(arg1);
    ptr->setToolTip(xarg1);
}

void QWQWidgetsetFocus_1(void * obj)
{
    QWidget * ptr = reinterpret_cast<QWidget *>(obj);
    ptr->setFocus();
}

int8_t QWQWidgetisActiveWindow(void * obj)
{
    QWidget * ptr = reinterpret_cast<QWidget *>(obj);
    bool retVal = ptr->isActiveWindow();
    return retVal;
}

void QWQWidgetactivateWindow(void * obj)
{
    QWidget * ptr = reinterpret_cast<QWidget *>(obj);
    ptr->activateWindow();
}

void QWQWidgetsetFocus_2(void * obj, int  reason)
{
    QWidget * ptr = reinterpret_cast<QWidget *>(obj);
    Qt::FocusReason xreason = static_cast<Qt::FocusReason>(reason);
    ptr->setFocus(xreason);
}

void QWQWidgetsetFocusPolicy(void * obj, int  policy)
{
    QWidget * ptr = reinterpret_cast<QWidget *>(obj);
    Qt::FocusPolicy xpolicy = static_cast<Qt::FocusPolicy>(policy);
    ptr->setFocusPolicy(xpolicy);
}

void QWQWidgetupdate_1(void * obj)
{
    QWidget * ptr = reinterpret_cast<QWidget *>(obj);
    ptr->update();
}

void QWQWidgetupdate_2(void * obj, int32_t  x, int32_t  y, int32_t  w, int32_t  h)
{
    QWidget * ptr = reinterpret_cast<QWidget *>(obj);
    int xx = x;
    int xy = y;
    int xw = w;
    int xh = h;
    ptr->update(xx, xy, xw, xh);
}

void QWQWidgetshow(void * obj)
{
    QWidget * ptr = reinterpret_cast<QWidget *>(obj);
    ptr->show();
}

void QWQWidgetsetLayout(void * obj, void * arg1)
{
    QWidget * ptr = reinterpret_cast<QWidget *>(obj);
    QLayout * xarg1 = reinterpret_cast<QLayout *>(arg1);
    ptr->setLayout(xarg1);
}

void QWvalidateCB_QWidget(void *obj, int32_t objId, char *methodName)
{
    SCQWidget * ptr = reinterpret_cast<SCQWidget *>(obj);

    ptr->validateEvent(objId, methodName);

}
void QWQWidgetDtor(void * obj)
{
    QWidget * ptr = reinterpret_cast<QWidget *>(obj);
    delete ptr;
}

void SCWQWidgetDtor(void * obj)
{
    QWidget * ptr = reinterpret_cast<QWidget *>(obj);
    delete ptr;
}

