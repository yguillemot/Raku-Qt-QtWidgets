
// 
// This file has been automatically generated by RaQt_maker V0.0.2.
// To modify and regenerate it, see the source code available here: 
//         https://github.com/yguillemot/RaQt_maker
// 


#include "QLayout.h"

int8_t QWQLayoutsetAlignment_1(void * obj, void * w, int  alignment)
{
    QLayout * ptr = reinterpret_cast<QLayout *>(obj);
    QWidget * xw = reinterpret_cast<QWidget *>(w);
    Qt::Alignment xalignment = static_cast<Qt::Alignment>(alignment);
     bool  retVal = ptr->setAlignment(xw, xalignment);
    return retVal;
}

int8_t QWQLayoutsetAlignment_2(void * obj, void * l, int  alignment)
{
    QLayout * ptr = reinterpret_cast<QLayout *>(obj);
    QLayout * xl = reinterpret_cast<QLayout *>(l);
    Qt::Alignment xalignment = static_cast<Qt::Alignment>(alignment);
     bool  retVal = ptr->setAlignment(xl, xalignment);
    return retVal;
}

void QWQLayoutaddWidget(void * obj, void * w)
{
    QLayout * ptr = reinterpret_cast<QLayout *>(obj);
    QWidget * xw = reinterpret_cast<QWidget *>(w);
    ptr->addWidget(xw);
}

