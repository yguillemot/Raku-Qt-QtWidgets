
// 
// This file has been automatically generated by RaQt_maker V0.0.3.
// To modify and regenerate it, see the source code available here: 
//         https://github.com/yguillemot/RaQt_maker
// 

#include <stdint.h>
#include <QtWidgets>
#include "externc.h"

EXTERNC void * QWQMouseEventCtor_1(int  type, void * localPos, int  button, int  buttons, int  modifiers);
EXTERNC void * QWQMouseEventCtor_2(int  type, void * localPos, void * screenPos, int  button, int  buttons, int  modifiers);
EXTERNC void * QWQMouseEventCtor_3(int  type, void * localPos, void * windowPos, void * screenPos, int  button, int  buttons, int  modifiers);
EXTERNC void * QWQMouseEventCtor_4(int  type, void * localPos, void * windowPos, void * screenPos, int  button, int  buttons, int  modifiers, int  source);
EXTERNC int32_t  QWQMouseEventx(void * obj);
EXTERNC int32_t  QWQMouseEventy(void * obj);
EXTERNC int  QWQMouseEventbutton(void * obj);
EXTERNC void QWQMouseEventDtor(void *);
