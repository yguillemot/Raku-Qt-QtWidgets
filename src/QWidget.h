
// 
// This file has been automatically generated by RaQt_maker V0.0.2.
// To modify and regenerate it, see the source code available here: 
//         https://github.com/yguillemot/RaQt_maker
// 

#include <stdint.h>
#include <QtWidgets>
#include "externc.h"

EXTERNC void * QWQWidgetCtor(void * parent, int  f);
EXTERNC void * SCWQWidgetCtor(void * parent, int  f);
EXTERNC void  QWQWidgetsetDisabled(void * obj, int8_t  arg1);
EXTERNC int32_t  QWQWidgetwidth(void * obj);
EXTERNC int32_t  QWQWidgetheight(void * obj);
EXTERNC void  QWQWidgetsetMinimumSize_2(void * obj, int32_t  minw, int32_t  minh);
EXTERNC void  QWQWidgetsetFixedSize_2(void * obj, int32_t  w, int32_t  h);
EXTERNC void  QWQWidgetsetFixedWidth(void * obj, int32_t  w);
EXTERNC void  QWQWidgetsetFixedHeight(void * obj, int32_t  h);
EXTERNC void * QWQWidgetfont(void * obj);
EXTERNC void  QWQWidgetsetFont(void * obj, void * arg1);
EXTERNC void  QWQWidgetrender_1(void * obj, void * target, void * targetOffset, void * sourceRegion, int  renderFlags);
EXTERNC void  QWQWidgetsetWindowTitle(void * obj, char * arg1);
EXTERNC void  QWQWidgetsetToolTip(void * obj, char * arg1);
EXTERNC void  QWQWidgetsetFocus_1(void * obj);
EXTERNC int8_t  QWQWidgetisActiveWindow(void * obj);
EXTERNC void  QWQWidgetactivateWindow(void * obj);
EXTERNC void  QWQWidgetsetFocus_2(void * obj, int  reason);
EXTERNC void  QWQWidgetsetFocusPolicy(void * obj, int  policy);
EXTERNC void  QWQWidgetupdate_1(void * obj);
EXTERNC void  QWQWidgetupdate_2(void * obj, int32_t  x, int32_t  y, int32_t  w, int32_t  h);
EXTERNC void  QWQWidgetshow(void * obj);
EXTERNC void  QWQWidgetsetLayout(void * obj, void * arg1);
EXTERNC void  QWQWidgetmousePressEvent(void * obj, void * event);
EXTERNC void  QWQWidgetmouseReleaseEvent(void * obj, void * event);
EXTERNC void  QWQWidgetmouseMoveEvent(void * obj, void * event);
EXTERNC void  QWQWidgetenterEvent(void * obj, void * event);
EXTERNC void  QWQWidgetleaveEvent(void * obj, void * event);
EXTERNC void  QWQWidgetpaintEvent(void * obj, void * event);
EXTERNC void QWvalidateCB_QWidget(void *obj, int32_t objId, char *methodName);
EXTERNC void QWQWidgetDtor(void *);
EXTERNC void SCWQWidgetDtor(void *);