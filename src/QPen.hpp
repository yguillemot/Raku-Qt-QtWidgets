
// 
// This file has been automatically generated by RaQt_maker V0.0.6.
// To modify and regenerate it, see the source code available here: 
//         https://github.com/yguillemot/RaQt_maker
// 


#include "QPen.h"
#include "QtWidgetsWrapper.hpp"

class SCQPen : public QPen, public CallbackValidator
{
public:
    SCQPen():
        QPen()
    { }

    SCQPen(Qt::PenStyle arg1):
        QPen(arg1)
    { }

    SCQPen(const QColor& color):
        QPen(color)
    { }

    ~SCQPen() { }

};
