
// 
// This file has been automatically generated by RaQt_maker V0.0.6.
// To modify and regenerate it, see the source code available here: 
//         https://github.com/yguillemot/RaQt_maker
// 

#include <stdint.h>
#include <QtWidgets>
#include "externc.h"

EXTERNC void * QWQRectCtor_1();
EXTERNC void * SCWQRectCtor_1();
EXTERNC void * QWQRectCtor_2(void * topleft, void * bottomright);
EXTERNC void * SCWQRectCtor_2(void * topleft, void * bottomright);
EXTERNC void * QWQRectCtor_4(int32_t  left, int32_t  top, int32_t  width, int32_t  height);
EXTERNC void * SCWQRectCtor_4(int32_t  left, int32_t  top, int32_t  width, int32_t  height);
EXTERNC int8_t QWQRectisNull(void * obj);
EXTERNC int8_t QWQRectisEmpty(void * obj);
EXTERNC int8_t QWQRectisValid(void * obj);
EXTERNC int32_t QWQRectleft(void * obj);
EXTERNC int32_t QWQRecttop(void * obj);
EXTERNC int32_t QWQRectright(void * obj);
EXTERNC int32_t QWQRectbottom(void * obj);
EXTERNC void * QWQRectnormalized(void * obj);
EXTERNC int32_t QWQRectx(void * obj);
EXTERNC int32_t QWQRecty(void * obj);
EXTERNC void QWQRectsetX(void * obj, int32_t  x);
EXTERNC void QWQRectsetY(void * obj, int32_t  y);
EXTERNC void * QWQRecttopLeft(void * obj);
EXTERNC void * QWQRectbottomRight(void * obj);
EXTERNC void * QWQRecttopRight(void * obj);
EXTERNC void * QWQRectbottomLeft(void * obj);
EXTERNC void * QWQRectcenter(void * obj);
EXTERNC void QWQRecttranslate_1(void * obj, int32_t  dx, int32_t  dy);
EXTERNC void QWQRecttranslate_2(void * obj, void * p);
EXTERNC void * QWQRecttranslated_1(void * obj, int32_t  dx, int32_t  dy);
EXTERNC void * QWQRecttranslated_2(void * obj, void * p);
EXTERNC void * QWQRecttransposed(void * obj);
EXTERNC void QWQRectsetRect(void * obj, int32_t  x, int32_t  y, int32_t  w, int32_t  h);
EXTERNC void QWQRectadjust(void * obj, int32_t  x1, int32_t  y1, int32_t  x2, int32_t  y2);
EXTERNC void * QWQRectadjusted(void * obj, int32_t  x1, int32_t  y1, int32_t  x2, int32_t  y2);
EXTERNC void * QWQRectsize(void * obj);
EXTERNC int32_t QWQRectwidth(void * obj);
EXTERNC int32_t QWQRectheight(void * obj);
EXTERNC void QWQRectsetWidth(void * obj, int32_t  w);
EXTERNC void QWQRectsetHeight(void * obj, int32_t  h);
EXTERNC void * QWQRectunited(void * obj, void * other);
EXTERNC void QWvalidateCB_QRect(void *obj, int32_t objId, char *methodName);
EXTERNC void QWQRectDtor(void *);
EXTERNC void SCWQRectDtor(void *);
