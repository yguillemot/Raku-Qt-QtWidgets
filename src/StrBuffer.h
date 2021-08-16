
// 
// This file has been automatically copied by RaQt_maker V0.0.4.
// To modify and regenerate it, see the source code available here: 
//         https://github.com/yguillemot/RaQt_maker
// 




#include "externc.h"



struct StrBuffer {
    int size;
    char * buffer;
};


EXTERNC void * QWStrBufferAlloc();
        
EXTERNC void QWStrBufferWrite(void * strBuffer, char * data);
         
EXTERNC char * QWStrBufferRead(void * strBuffer);

EXTERNC void QWStrBufferFree(void * strBuffer);
 
