
// 
// This file has been automatically generated by RaQt_maker V0.0.7.
// To modify and regenerate it, see the source code available here: 
//         https://github.com/yguillemot/RaQt_maker
// 

#include "QVBoxLayout.hpp"

void * QWQVBoxLayoutCtor_1()
{
    QVBoxLayout * ptr = new QVBoxLayout();
    return reinterpret_cast<void *>(ptr);
}

void * SCWQVBoxLayoutCtor_1()
{
    SCQVBoxLayout * ptr = new SCQVBoxLayout();
    return reinterpret_cast<void *>(ptr);
}

void QWvalidateCB_QVBoxLayout(void *obj, int32_t objId, char *methodName)
{
    SCQVBoxLayout * ptr = reinterpret_cast<SCQVBoxLayout *>(obj);

    ptr->validateEvent(objId, methodName);

}
void QWQVBoxLayoutDtor(void * obj)
{
    QVBoxLayout * ptr = reinterpret_cast<QVBoxLayout *>(obj);
    delete ptr;
}

void SCWQVBoxLayoutDtor(void * obj)
{
    QVBoxLayout * ptr = reinterpret_cast<QVBoxLayout *>(obj);
    delete ptr;
}

