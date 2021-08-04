
// 
// This file has been automatically generated by RaQt_maker V0.0.3.
// To modify and regenerate it, see the source code available here: 
//         https://github.com/yguillemot/RaQt_maker
// 


#include "QDialog.h"
#include "QtWidgetsWrapper.hpp"

class SCQDialog : public QDialog, public CallbackValidator
{
public:
    ~SCQDialog() { }

    void enterEvent(QEvent* event)
    {
        if (m_enterEvent) {
            (*slotCallbackQEvent)(
                m_objId, "enterEvent",
                event
            );
        }
        QDialog::enterEvent(event);
    }

    void leaveEvent(QEvent* event)
    {
        if (m_leaveEvent) {
            (*slotCallbackQEvent)(
                m_objId, "leaveEvent",
                event
            );
        }
        QDialog::leaveEvent(event);
    }

    void mouseMoveEvent(QMouseEvent* event)
    {
        if (m_mouseMoveEvent) {
            (*slotCallbackQMouseEvent)(
                m_objId, "mouseMoveEvent",
                event
            );
        }
        QDialog::mouseMoveEvent(event);
    }

    void mousePressEvent(QMouseEvent* event)
    {
        if (m_mousePressEvent) {
            (*slotCallbackQMouseEvent)(
                m_objId, "mousePressEvent",
                event
            );
        }
        QDialog::mousePressEvent(event);
    }

    void mouseReleaseEvent(QMouseEvent* event)
    {
        if (m_mouseReleaseEvent) {
            (*slotCallbackQMouseEvent)(
                m_objId, "mouseReleaseEvent",
                event
            );
        }
        QDialog::mouseReleaseEvent(event);
    }

    void paintEvent(QPaintEvent* event)
    {
        if (m_paintEvent) {
            (*slotCallbackQPaintEvent)(
                m_objId, "paintEvent",
                event
            );
        }
        QDialog::paintEvent(event);
    }

    void resizeEvent(QResizeEvent* event)
    {
        if (m_resizeEvent) {
            (*slotCallbackQResizeEvent)(
                m_objId, "resizeEvent",
                event
            );
        }
        QDialog::resizeEvent(event);
    }

};

