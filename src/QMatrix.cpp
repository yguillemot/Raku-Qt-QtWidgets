
// 
// This file has been automatically generated by RaQt_maker V0.0.6.
// To modify and regenerate it, see the source code available here: 
//         https://github.com/yguillemot/RaQt_maker
// 

#include "QMatrix.hpp"

void * QWQMatrixCtor_1(int  arg1)
{
    Qt::Initialization xarg1 = static_cast<Qt::Initialization>(arg1);
    QMatrix * ptr = new QMatrix(xarg1);
    return reinterpret_cast<void *>(ptr);
}

void * SCWQMatrixCtor_1(int  arg1)
{
    Qt::Initialization xarg1 = static_cast<Qt::Initialization>(arg1);
    SCQMatrix * ptr = new SCQMatrix(xarg1);
    return reinterpret_cast<void *>(ptr);
}

void * QWQMatrixCtor_2()
{
    QMatrix * ptr = new QMatrix();
    return reinterpret_cast<void *>(ptr);
}

void * SCWQMatrixCtor_2()
{
    SCQMatrix * ptr = new SCQMatrix();
    return reinterpret_cast<void *>(ptr);
}

void QWQMatrixsetMatrix(void * obj, double  m11, double  m12, double  m21, double  m22, double  dx, double  dy)
{
    QMatrix * ptr = reinterpret_cast<QMatrix *>(obj);
    qreal xm11 = m11;
    qreal xm12 = m12;
    qreal xm21 = m21;
    qreal xm22 = m22;
    qreal xdx = dx;
    qreal xdy = dy;
    ptr->setMatrix(xm11, xm12, xm21, xm22, xdx, xdy);
}

void * QWQMatrixmapRect_1(void * obj, void * arg1)
{
    QMatrix * ptr = reinterpret_cast<QMatrix *>(obj);
    QRect & xarg1 = * reinterpret_cast<QRect *>(arg1);
    QRect retVal = ptr->mapRect(xarg1);
    QRect * xxretVal = new QRect(retVal);
    void * xretVal = reinterpret_cast<void *>(xxretVal);
    return xretVal;
}

void * QWQMatrixmapRect_2(void * obj, void * arg1)
{
    QMatrix * ptr = reinterpret_cast<QMatrix *>(obj);
    QRectF & xarg1 = * reinterpret_cast<QRectF *>(arg1);
    QRectF retVal = ptr->mapRect(xarg1);
    QRectF * xxretVal = new QRectF(retVal);
    void * xretVal = reinterpret_cast<void *>(xxretVal);
    return xretVal;
}

void QWQMatrixreset(void * obj)
{
    QMatrix * ptr = reinterpret_cast<QMatrix *>(obj);
    ptr->reset();
}

void * QWQMatrixtranslate(void * obj, double  dx, double  dy)
{
    QMatrix * ptr = reinterpret_cast<QMatrix *>(obj);
    qreal xdx = dx;
    qreal xdy = dy;
    QMatrix & retVal = ptr->translate(xdx, xdy);
    void * xretVal = reinterpret_cast<void *>(& retVal);
    return xretVal;
}

void * QWQMatrixscale(void * obj, double  sx, double  sy)
{
    QMatrix * ptr = reinterpret_cast<QMatrix *>(obj);
    qreal xsx = sx;
    qreal xsy = sy;
    QMatrix & retVal = ptr->scale(xsx, xsy);
    void * xretVal = reinterpret_cast<void *>(& retVal);
    return xretVal;
}

void * QWQMatrixshear(void * obj, double  sh, double  sv)
{
    QMatrix * ptr = reinterpret_cast<QMatrix *>(obj);
    qreal xsh = sh;
    qreal xsv = sv;
    QMatrix & retVal = ptr->shear(xsh, xsv);
    void * xretVal = reinterpret_cast<void *>(& retVal);
    return xretVal;
}

void * QWQMatrixrotate(void * obj, double  a)
{
    QMatrix * ptr = reinterpret_cast<QMatrix *>(obj);
    qreal xa = a;
    QMatrix & retVal = ptr->rotate(xa);
    void * xretVal = reinterpret_cast<void *>(& retVal);
    return xretVal;
}

void QWvalidateCB_QMatrix(void *obj, int32_t objId, char *methodName)
{
    SCQMatrix * ptr = reinterpret_cast<SCQMatrix *>(obj);

    ptr->validateEvent(objId, methodName);

}
void QWQMatrixDtor(void * obj)
{
    QMatrix * ptr = reinterpret_cast<QMatrix *>(obj);
    delete ptr;
}

void SCWQMatrixDtor(void * obj)
{
    QMatrix * ptr = reinterpret_cast<QMatrix *>(obj);
    delete ptr;
}
