
// 
// This file has been automatically generated by RaQt_maker V0.0.7.
// To modify and regenerate it, see the source code available here: 
//         https://github.com/yguillemot/RaQt_maker
// 


#include "QLayout.h"
#include "QtWidgetsWrapper.hpp"

class SCQLayout : public QLayout, public CallbackValidator
{
public:
    ~SCQLayout() { }

    void customEvent(QEvent* event)
    {
        if (m_customEvent) {
            (*callbackQEvent)(
                m_objId, "customEvent",
                event
            );
        } else {
            QLayout::customEvent(event);
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
            return QLayout::event(event);
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
            return QLayout::eventFilter(watched, event);
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
            QLayout::timerEvent(event);
        }
    }

};

