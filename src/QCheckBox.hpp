
// 
// This file has been automatically generated by RaQt_maker V0.0.6.
// To modify and regenerate it, see the source code available here: 
//         https://github.com/yguillemot/RaQt_maker
// 


#include "QCheckBox.h"
#include "QtWidgetsWrapper.hpp"

class SCQCheckBox : public QCheckBox, public CallbackValidator
{
public:
    SCQCheckBox(QWidget* parent):
        QCheckBox(parent)
    { }

    SCQCheckBox(const QString& text, QWidget* parent):
        QCheckBox(text, parent)
    { }

    ~SCQCheckBox() { }

    void closeEvent(QCloseEvent* event)
    {
        if (m_closeEvent) {
            (*callbackQCloseEvent)(
                m_objId, "closeEvent",
                event
            );
        } else {
            QCheckBox::closeEvent(event);
        }
    }

    void customEvent(QEvent* event)
    {
        if (m_customEvent) {
            (*callbackQEvent)(
                m_objId, "customEvent",
                event
            );
        } else {
            QCheckBox::customEvent(event);
        }
    }

    void enterEvent(QEvent* event)
    {
        if (m_enterEvent) {
            (*callbackQEvent)(
                m_objId, "enterEvent",
                event
            );
        } else {
            QCheckBox::enterEvent(event);
        }
    }

    bool event(QEvent* event)
    {
        if (m_event) {
            return (*callbackQEventReturnsBool)(
                m_objId, "event",
                event
            );
        } else {
            return QCheckBox::event(event);
        }
    }

    bool eventFilter(QObject* watched, QEvent* event)
    {
        if (m_eventFilter) {
            return (*callbackQObjectQEventReturnsBool)(
                m_objId, "eventFilter",
                watched,
                event
            );
        } else {
            return QCheckBox::eventFilter(watched, event);
        }
    }

    bool hasHeightForWidth() const
    {
        if (m_hasHeightForWidth) {
            return (*callbackReturnsBool)(
                m_objId, "hasHeightForWidth"
            );
        } else {
            return QCheckBox::hasHeightForWidth();
        }
    }

    int heightForWidth(int arg1) const
    {
        if (m_heightForWidth) {
            return (*callbackIntReturnsInt)(
                m_objId, "heightForWidth",
                arg1
            );
        } else {
            return QCheckBox::heightForWidth(arg1);
        }
    }

    void leaveEvent(QEvent* event)
    {
        if (m_leaveEvent) {
            (*callbackQEvent)(
                m_objId, "leaveEvent",
                event
            );
        } else {
            QCheckBox::leaveEvent(event);
        }
    }

    void mouseMoveEvent(QMouseEvent* event)
    {
        if (m_mouseMoveEvent) {
            (*callbackQMouseEvent)(
                m_objId, "mouseMoveEvent",
                event
            );
        } else {
            QCheckBox::mouseMoveEvent(event);
        }
    }

    void mousePressEvent(QMouseEvent* event)
    {
        if (m_mousePressEvent) {
            (*callbackQMouseEvent)(
                m_objId, "mousePressEvent",
                event
            );
        } else {
            QCheckBox::mousePressEvent(event);
        }
    }

    void mouseReleaseEvent(QMouseEvent* event)
    {
        if (m_mouseReleaseEvent) {
            (*callbackQMouseEvent)(
                m_objId, "mouseReleaseEvent",
                event
            );
        } else {
            QCheckBox::mouseReleaseEvent(event);
        }
    }

    void nextCheckState()
    {
        if (m_nextCheckState) {
            (*callback)(
                m_objId, "nextCheckState"
            );
        } else {
            QCheckBox::nextCheckState();
        }
    }

    void paintEvent(QPaintEvent* event)
    {
        if (m_paintEvent) {
            (*callbackQPaintEvent)(
                m_objId, "paintEvent",
                event
            );
        } else {
            QCheckBox::paintEvent(event);
        }
    }

    void resizeEvent(QResizeEvent* event)
    {
        if (m_resizeEvent) {
            (*callbackQResizeEvent)(
                m_objId, "resizeEvent",
                event
            );
        } else {
            QCheckBox::resizeEvent(event);
        }
    }

    void timerEvent(QTimerEvent* event)
    {
        if (m_timerEvent) {
            (*callbackQTimerEvent)(
                m_objId, "timerEvent",
                event
            );
        } else {
            QCheckBox::timerEvent(event);
        }
    }

};
