
// 
// This file has been automatically generated by RaQt_maker V0.0.7.
// To modify and regenerate it, see the source code available here: 
//         https://github.com/yguillemot/RaQt_maker
// 

#include <stdint.h>
#include <QtWidgets>
#include "externc.h"

EXTERNC void * QWQMatrixCtor_1(int  arg1);
EXTERNC void * SCWQMatrixCtor_1(int  arg1);
EXTERNC void * QWQMatrixCtor_2();
EXTERNC void * SCWQMatrixCtor_2();
EXTERNC void QWQMatrixsetMatrix(void * obj, double  m11, double  m12, double  m21, double  m22, double  dx, double  dy);
EXTERNC void * QWQMatrixmapRect_1(void * obj, void * arg1);
EXTERNC void * QWQMatrixmapRect_2(void * obj, void * arg1);
EXTERNC void QWQMatrixreset(void * obj);
EXTERNC void * QWQMatrixtranslate(void * obj, double  dx, double  dy);
EXTERNC void * QWQMatrixscale(void * obj, double  sx, double  sy);
EXTERNC void * QWQMatrixshear(void * obj, double  sh, double  sv);
EXTERNC void * QWQMatrixrotate(void * obj, double  a);
EXTERNC void QWvalidateCB_QMatrix(void *obj, int32_t objId, char *methodName);
EXTERNC void QWQMatrixDtor(void *);
EXTERNC void SCWQMatrixDtor(void *);
