
// 
// This file has been automatically generated by RaQt_maker V0.0.2.
// To modify and regenerate it, see the source code available here: 
//         https://github.com/yguillemot/RaQt_maker
// 


#include "QPushButton.h"
#include "QtWidgetsWrapper.hpp"

class SCQPushButton : public QPushButton, public CallbackValidator
{
public:
    SCQPushButton(const QString& text, QWidget* parent):
        QPushButton(text, parent)
    { }

    ~SCQPushButton() { }

    void enterEvent(QEvent* event)
    {
        if (m_enterEvent) {
            (*slotCallbackQEvent)(
                m_objId, "enterEvent",
                event
            );
        }
        QPushButton::enterEvent(event);
    }

    void leaveEvent(QEvent* event)
    {
        if (m_leaveEvent) {
            (*slotCallbackQEvent)(
                m_objId, "leaveEvent",
                event
            );
        }
        QPushButton::leaveEvent(event);
    }

    void mouseMoveEvent(QMouseEvent* event)
    {
        if (m_mouseMoveEvent) {
            (*slotCallbackQMouseEvent)(
                m_objId, "mouseMoveEvent",
                event
            );
        }
        QPushButton::mouseMoveEvent(event);
    }

    void mousePressEvent(QMouseEvent* event)
    {
        if (m_mousePressEvent) {
            (*slotCallbackQMouseEvent)(
                m_objId, "mousePressEvent",
                event
            );
        }
        QPushButton::mousePressEvent(event);
    }

    void mouseReleaseEvent(QMouseEvent* event)
    {
        if (m_mouseReleaseEvent) {
            (*slotCallbackQMouseEvent)(
                m_objId, "mouseReleaseEvent",
                event
            );
        }
        QPushButton::mouseReleaseEvent(event);
    }

    void paintEvent(QPaintEvent* event)
    {
        if (m_paintEvent) {
            (*slotCallbackQPaintEvent)(
                m_objId, "paintEvent",
                event
            );
        }
        QPushButton::paintEvent(event);
    }

};
