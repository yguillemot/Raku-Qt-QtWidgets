
// 
// This file has been automatically generated by RaQt_maker V0.0.7.
// To modify and regenerate it, see the source code available here: 
//         https://github.com/yguillemot/RaQt_maker
// 


#include "QBrush.h"
#include "QtWidgetsWrapper.hpp"

class SCQBrush : public QBrush, public CallbackValidator
{
public:
    SCQBrush():
        QBrush()
    { }

    SCQBrush(Qt::BrushStyle bs):
        QBrush(bs)
    { }

    SCQBrush(const QColor& color, Qt::BrushStyle bs):
        QBrush(color, bs)
    { }

    ~SCQBrush() { }

};

