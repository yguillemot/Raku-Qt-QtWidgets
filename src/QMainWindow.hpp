
// 
// This file has been automatically generated by RaQt_maker V0.0.6.
// To modify and regenerate it, see the source code available here: 
//         https://github.com/yguillemot/RaQt_maker
// 


#include "QMainWindow.h"
#include "QtWidgetsWrapper.hpp"

class SCQMainWindow : public QMainWindow, public CallbackValidator
{
public:
    SCQMainWindow(QWidget* parent, Qt::WindowFlags flags):
        QMainWindow(parent, flags)
    { }

    ~SCQMainWindow() { }

    void closeEvent(QCloseEvent* event)
    {
        if (m_closeEvent) {
            (*callbackQCloseEvent)(
                m_objId, "closeEvent",
                event
            );
        } else {
            QMainWindow::closeEvent(event);
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
            QMainWindow::customEvent(event);
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
            QMainWindow::enterEvent(event);
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
            return QMainWindow::event(event);
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
            return QMainWindow::eventFilter(watched, event);
        }
    }

    bool hasHeightForWidth() const
    {
        if (m_hasHeightForWidth) {
            return (*callbackReturnsBool)(
                m_objId, "hasHeightForWidth"
            );
        } else {
            return QMainWindow::hasHeightForWidth();
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
            return QMainWindow::heightForWidth(arg1);
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
            QMainWindow::leaveEvent(event);
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
            QMainWindow::mouseMoveEvent(event);
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
            QMainWindow::mousePressEvent(event);
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
            QMainWindow::mouseReleaseEvent(event);
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
            QMainWindow::paintEvent(event);
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
            QMainWindow::resizeEvent(event);
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
            QMainWindow::timerEvent(event);
        }
    }

};

