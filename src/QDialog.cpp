
// 
// This file has been automatically generated by RaQt_maker V0.0.6.
// To modify and regenerate it, see the source code available here: 
//         https://github.com/yguillemot/RaQt_maker
// 

#include "QDialog.hpp"

int32_t QWQDialogexec(void * obj)
{
    QDialog * ptr = reinterpret_cast<QDialog *>(obj);
    int retVal = ptr->exec();
    return retVal;
}

