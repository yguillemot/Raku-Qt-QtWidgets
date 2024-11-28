
// 
// This file has been automatically copied by RaQt_maker V0.0.6.
// To modify and regenerate it, see the source code available here: 
//         https://github.com/yguillemot/RaQt_maker
// 




#include <malloc.h>
#include <string.h>
#include <stdint.h>

#include "StrBuffer.h"




void * QWStrBufferAlloc() {
    struct StrBuffer * sb = (struct StrBuffer *) malloc(sizeof(struct StrBuffer));
    sb->size = 0;
    sb->buffer = 0;
    return (void *) sb;
}

void QWStrBufferWrite(void * strBuffer, char * data) {
    struct StrBuffer * sb = (struct StrBuffer *) strBuffer;
    if (sb->buffer) free(sb->buffer);
    sb->size = strlen(data);
    sb->buffer = (char *) malloc(sb->size + 1);
    strcpy(sb->buffer, data);
}

char * QWStrBufferRead(void * strBuffer) {
    struct StrBuffer * sb = (struct StrBuffer *) strBuffer;
    return sb->buffer;
}

void QWStrBufferFree(void * strBuffer) {
    struct StrBuffer * sb = (struct StrBuffer *) strBuffer;
    free(sb->buffer);
    free(sb);
}



