
// 
// This file has been automatically generated by RaQt_maker V0.0.7.
// To modify and regenerate it, see the source code available here: 
//         https://github.com/yguillemot/RaQt_maker
// 

#include "QFileDialog.hpp"
#include "StrBuffer.h"


void QWQFileDialoggetOpenFileName(
        void * retBuffer,
        void * parent, 
        char * caption,
        char * dir,
        char * filter,
        void * sfBuffer,
        int32_t options)
{
    QWidget * xparent = reinterpret_cast<QWidget *>(parent);
    QString xcaption = QString(caption);
    QString xdir = QString(dir);
    QString xfilter = QString(filter);
    
    QString * xselectedFilter = nullptr;
    if (sfBuffer) {
        char * selectedFilter = 
                reinterpret_cast<struct StrBuffer *>(sfBuffer)->buffer;
        xselectedFilter = new QString(selectedFilter);
    }
    
    QFileDialog::Options xoptions = static_cast<QFileDialog::Options>(options);
    
    QString  retVal = QFileDialog::getOpenFileName(
        xparent, xcaption, xdir, xfilter, xselectedFilter, xoptions);

    if (sfBuffer) {
        QWStrBufferWrite(sfBuffer, xselectedFilter->toUtf8().data());
        delete xselectedFilter;                   // Delete the QString
    }
    
    if (!retVal.isNull()) {
        QWStrBufferWrite(retBuffer, retVal.toUtf8().data());
    }
}


void QWQFileDialoggetSaveFileName(
        void * retBuffer,
        void * parent, 
        char * caption,
        char * dir,
        char * filter,
        void * sfBuffer,
        int32_t options)
{
    QWidget * xparent = reinterpret_cast<QWidget *>(parent);
    QString xcaption = QString(caption);
    QString xdir = QString(dir);
    QString xfilter = QString(filter);
    
    QString * xselectedFilter = nullptr;
    if (sfBuffer) {
        char * selectedFilter = 
                reinterpret_cast<struct StrBuffer *>(sfBuffer)->buffer;
        xselectedFilter = new QString(selectedFilter);
    }
    
    QFileDialog::Options xoptions = static_cast<QFileDialog::Options>(options);
    
    QString  retVal = QFileDialog::getSaveFileName(
        xparent, xcaption, xdir, xfilter, xselectedFilter, xoptions);
    
    if (sfBuffer) {
        QWStrBufferWrite(sfBuffer, xselectedFilter->toUtf8().data());
        delete xselectedFilter;                   // Delete the QString
    }

    if (!retVal.isNull()) {
        QWStrBufferWrite(retBuffer, retVal.toUtf8().data());
    } 
}

