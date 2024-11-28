
// 
// This file has been automatically generated by RaQt_maker V0.0.6.
// To modify and regenerate it, see the source code available here: 
//         https://github.com/yguillemot/RaQt_maker
// 


#include "QGraphicsEllipseItem.h"
#include "QtWidgetsWrapper.hpp"

class SCQGraphicsEllipseItem : public QGraphicsEllipseItem, public CallbackValidator
{
public:
    SCQGraphicsEllipseItem(QGraphicsItem* parent):
        QGraphicsEllipseItem(parent)
    { }

    SCQGraphicsEllipseItem(const QRectF& rect, QGraphicsItem* parent):
        QGraphicsEllipseItem(rect, parent)
    { }

    SCQGraphicsEllipseItem(qreal x, qreal y, qreal w, qreal h, QGraphicsItem* parent):
        QGraphicsEllipseItem(x, y, w, h, parent)
    { }

    ~SCQGraphicsEllipseItem() { }

    bool contains(const QPointF& point) const
    {
        if (m_contains) {
            return (*callbackQPointFReturnsBool)(
                m_objId, "contains",
                point
            );
        } else {
            return QGraphicsEllipseItem::contains(point);
        }
    }

};

