
// 
// This file has been automatically generated by RaQt_maker V0.0.6.
// To modify and regenerate it, see the source code available here: 
//         https://github.com/yguillemot/RaQt_maker
// 


#include "QGraphicsRectItem.h"
#include "QtWidgetsWrapper.hpp"

class SCQGraphicsRectItem : public QGraphicsRectItem, public CallbackValidator
{
public:
    SCQGraphicsRectItem(QGraphicsItem* parent):
        QGraphicsRectItem(parent)
    { }

    SCQGraphicsRectItem(const QRectF& rect, QGraphicsItem* parent):
        QGraphicsRectItem(rect, parent)
    { }

    SCQGraphicsRectItem(qreal x, qreal y, qreal w, qreal h, QGraphicsItem* parent):
        QGraphicsRectItem(x, y, w, h, parent)
    { }

    ~SCQGraphicsRectItem() { }

    bool contains(const QPointF& point) const
    {
        if (m_contains) {
            return (*callbackQPointFReturnsBool)(
                m_objId, "contains",
                point
            );
        } else {
            return QGraphicsRectItem::contains(point);
        }
    }

};
