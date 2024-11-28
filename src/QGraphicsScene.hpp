
// 
// This file has been automatically generated by RaQt_maker V0.0.6.
// To modify and regenerate it, see the source code available here: 
//         https://github.com/yguillemot/RaQt_maker
// 


#include "QGraphicsScene.h"
#include "QtWidgetsWrapper.hpp"

class SCQGraphicsScene : public QGraphicsScene, public CallbackValidator
{
public:
    SCQGraphicsScene(QObject* parent):
        QGraphicsScene(parent)
    { }

    SCQGraphicsScene(qreal x, qreal y, qreal width, qreal height, QObject* parent):
        QGraphicsScene(x, y, width, height, parent)
    { }

    ~SCQGraphicsScene() { }

    void customEvent(QEvent* event)
    {
        if (m_customEvent) {
            (*callbackQEvent)(
                m_objId, "customEvent",
                event
            );
        } else {
            QGraphicsScene::customEvent(event);
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
            return QGraphicsScene::event(event);
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
            return QGraphicsScene::eventFilter(watched, event);
        }
    }

    void keyPressEvent(QKeyEvent* event)
    {
        if (m_keyPressEvent) {
            (*callbackQKeyEvent)(
                m_objId, "keyPressEvent",
                event
            );
        } else {
            QGraphicsScene::keyPressEvent(event);
        }
    }

    void keyReleaseEvent(QKeyEvent* event)
    {
        if (m_keyReleaseEvent) {
            (*callbackQKeyEvent)(
                m_objId, "keyReleaseEvent",
                event
            );
        } else {
            QGraphicsScene::keyReleaseEvent(event);
        }
    }

    void mouseDoubleClickEvent(QGraphicsSceneMouseEvent* event)
    {
        if (m_mouseDoubleClickEvent) {
            (*callbackQGraphicsSceneMouseEvent)(
                m_objId, "mouseDoubleClickEvent",
                event
            );
        } else {
            QGraphicsScene::mouseDoubleClickEvent(event);
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
            QGraphicsScene::timerEvent(event);
        }
    }

};

