
// 
// This file has been automatically generated by RaQt_maker V0.0.6.
// To modify and regenerate it, see the source code available here: 
//         https://github.com/yguillemot/RaQt_maker
// 


#include "QResizeEvent.h"
#include "QtWidgetsWrapper.hpp"

class SCQResizeEvent : public QResizeEvent, public CallbackValidator
{
public:
    SCQResizeEvent(const QSize& size, const QSize& oldSize):
        QResizeEvent(size, oldSize)
    { }

    ~SCQResizeEvent() { }

};
