
// 
// This file has been automatically generated by RaQt_maker V0.0.4.
// To modify and regenerate it, see the source code available here: 
//         https://github.com/yguillemot/RaQt_maker
// 

#include "QImage.h"

void * QWQImageCtor_3(int32_t  width, int32_t  height, int  format)
{
    int xwidth = width;
    int xheight = height;
    QImage::Format xformat = static_cast<QImage::Format>(format);
    QImage * ptr = new QImage(xwidth, xheight, xformat);
    return reinterpret_cast<void *>(ptr);
}

int32_t QWQImagewidth(void * obj)
{
    QImage * ptr = reinterpret_cast<QImage *>(obj);
    int retVal = ptr->width();
    return retVal;
}

int32_t QWQImageheight(void * obj)
{
    QImage * ptr = reinterpret_cast<QImage *>(obj);
    int retVal = ptr->height();
    return retVal;
}

void * QWQImagepixelColor_1(void * obj, int32_t  x, int32_t  y)
{
    QImage * ptr = reinterpret_cast<QImage *>(obj);
    int xx = x;
    int xy = y;
    QColor retVal = ptr->pixelColor(xx, xy);
    QColor * xxretVal = new QColor(retVal);
    void * xretVal = reinterpret_cast<void *>(xxretVal);
    return xretVal;
}

void QWQImagefill_2(void * obj, void * color)
{
    QImage * ptr = reinterpret_cast<QImage *>(obj);
    QColor & xcolor = * reinterpret_cast<QColor *>(color);
    ptr->fill(xcolor);
}

void QWQImageDtor(void * obj)
{
    QImage * ptr = reinterpret_cast<QImage *>(obj);
    delete ptr;
}

