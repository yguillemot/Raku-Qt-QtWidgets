
// 
// This file has been automatically generated by RaQt_maker V0.0.6.
// To modify and regenerate it, see the source code available here: 
//         https://github.com/yguillemot/RaQt_maker
// 

#include <stdint.h>
#include <QtWidgets>
#include "externc.h"

EXTERNC void * QWQEventCtor_1(int  type);
EXTERNC void * SCWQEventCtor_1(int  type);
EXTERNC void * QWQEventCtor_2(void * other);
EXTERNC void * SCWQEventCtor_2(void * other);
EXTERNC int QWQEventtype(void * obj);
EXTERNC int8_t QWQEventspontaneous(void * obj);
EXTERNC int8_t QWQEventisAccepted(void * obj);
EXTERNC void QWQEventaccept(void * obj);
EXTERNC void QWQEventignore(void * obj);
EXTERNC void QWvalidateCB_QEvent(void *obj, int32_t objId, char *methodName);
EXTERNC void QWQEventDtor(void *);
EXTERNC void SCWQEventDtor(void *);
