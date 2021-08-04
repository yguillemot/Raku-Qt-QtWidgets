
// 
// This file has been automatically generated by RaQt_maker V0.0.3.
// To modify and regenerate it, see the source code available here: 
//         https://github.com/yguillemot/RaQt_maker
// 




#include <QtWidgets>

#include <iostream>
#include <string.h>
#include <stdint.h>

#include "QtWidgetsWrapper.hpp"



// Only for debug
#include <stdio.h>
FILE * connectLog;


QMap<QString, QtSignal * > * signalDict = 0;
QMap<QString, QString> * slotDict = 0;

void (*slotCallback)(int objId, char *slotName) = 0;
void (*slotCallbackInt)(int objId, char *slotName, STD_INT i) = 0;
void (*slotCallbackInt2)(int objId, char *slotName, STD_INT i1, STD_INT i2) = 0;
void (*slotCallbackStr)(int objId, char *slotName, char *s) = 0;
void (*slotCallbackIntStr)(int objId, char *slotName, STD_INT i, char *s) = 0;
void (*slotCallbackBool)(int objId, char *slotName, uchar b) = 0;

void (*slotCallbackPointer)(int objId, char *slotName, void *p) = 0;

void (*slotCallbackQEvent)
    (int32_t objId, const char *slotName, QEvent* event) = 0;

void (*slotCallbackQMouseEvent)
    (int32_t objId, const char *slotName, QMouseEvent* event) = 0;

void (*slotCallbackQPaintEvent)
    (int32_t objId, const char *slotName, QPaintEvent* event) = 0;

void (*slotCallbackQResizeEvent)
    (int32_t objId, const char *slotName, QResizeEvent* event) = 0;



void (*slotCallbackComplexSig)(int32_t objId, char *slotName, uint32_t dataId) = 0;



// Conversion routines

char * toStdStr(QString qs)
{
    return qs.toLocal8Bit().data();
}





// Qt emit wrappers

// Possible simplification using QMetaObject::invokeMethod() ???????


void emit_QWSignal_(QWConnectorE * obj) {
// std::cout << "emit_QWSignal  obj = " << obj << "\n";

   obj->emit_QWSignal();    
}
    
void emit_QWSignal_int(QWConnectorE * obj, int v) {
// std::cout << "emit_QWSignal_int  obj = " << obj << "   v = " << v << "\n";

   obj->emit_QWSignal(v);    
}

void emit_QWSignal_bool(QWConnectorE * obj, bool b) {
// std::cout << "emit_QWSignal_bool  obj = " << obj << "   b = " << b << "\n";

   obj->emit_QWSignal(b);
}

void emit_QWSignal_str(QWConnectorE * obj, QString s) {
// std::cout << "emit_QWSignal_str  obj = " << obj << "   s = "
//                         << s.toLocal8Bit().data() << "\n";

   obj->emit_QWSignal(s);
}

void * QWApplicationCtor(int argc, char **argv)
{
    // Copie dans variables statiques (argc et argv ne seront vraiment
    // utilisés qu'au premier appel de QWidget::show())
    static int cc = argc;
    static char ** vv;
    vv = new char * [cc];
    for (int i=0; i<cc; i++) {
        int size = strlen(argv[i]);
        vv[i] = new char[size+1];
        strcpy(vv[i], argv[i]);
    }

    // Create Qt standard signals dictionnary
    signalDict = new QMap<QString, QtSignal * >;
    signalDict->clear();

    signalDict->insert("QWLocalToLocalSignal(int)",
        new QtSignal(SIGNAL(QWLocalToLocalSignal(int)),
                       (void *)emit_QWSignal_int));
    
    signalDict->insert("QWSignal()",
        new QtSignal(SIGNAL(QWSignal()),
                       (void *)emit_QWSignal_));
    signalDict->insert("QWSignal(int)",
        new QtSignal(SIGNAL(QWSignal(int)),
                       (void *)emit_QWSignal_int));
    signalDict->insert("QWSignal(bool)",
        new QtSignal(SIGNAL(QWSignal(bool)),
                       (void *)emit_QWSignal_bool));
    signalDict->insert("QWSignal(QString)",
        new QtSignal(SIGNAL(QWSignal(const QString)),
                       (void *)emit_QWSignal_str));

    signalDict->insert("pressed()",
        new QtSignal(SIGNAL(pressed()), nullptr));
    signalDict->insert("clicked(bool)",
        new QtSignal(SIGNAL(clicked(bool)), nullptr));
    signalDict->insert("clicked()",
        new QtSignal(SIGNAL(clicked()), nullptr));
    signalDict->insert("triggered(bool)",
        new QtSignal(SIGNAL(triggered(bool)), nullptr));
    signalDict->insert("triggered()",
        new QtSignal(SIGNAL(triggered()), nullptr));
    signalDict->insert("returnPressed()",
        new QtSignal(SIGNAL(returnPressed()), nullptr));
    signalDict->insert("editingFinished()",
        new QtSignal(SIGNAL(editingFinished()), nullptr));
    signalDict->insert("timeout()",
        new QtSignal(SIGNAL(timeout()), nullptr));


//     signalDict->insert("localToLocal(int)", new QtSignal(SIGNAL(localToLocal(int)),
//                        (void *)emit_localToLocal, INT));


    // Create Qt standard slots dictionnary
    slotDict = new QMap<QString, QString>;
    slotDict->clear();
    slotDict->insert("click()", SLOT(click()));
    slotDict->insert("trigger()", SLOT(trigger()));
    slotDict->insert("setEnabled(bool)", SLOT(setEnabled(bool)));
    slotDict->insert("setDisabled(bool)", SLOT(setDisabled(bool)));
    slotDict->insert("quit()", SLOT(quit()));
    slotDict->insert("setText(const QString&)", SLOT(setText(const QString&)));
    slotDict->insert("clear()", SLOT(clear()));
    slotDict->insert("setText(const QString&)", SLOT(setText(const QString&)));
    slotDict->insert("clear()", SLOT(clear()));
    slotDict->insert("start()", SLOT(start()));
    slotDict->insert("stop()", SLOT(stop()));
    slotDict->insert("setDisabled(bool)", SLOT(setDisabled(bool)));
    slotDict->insert("setWindowTitle(const QString&)", SLOT(setWindowTitle(const QString&)));
    slotDict->insert("setFocus()", SLOT(setFocus()));
    slotDict->insert("update()", SLOT(update()));
    slotDict->insert("show()", SLOT(show()));

    slotDict->insert("QWSlot()", SLOT(QWSlot()));
    slotDict->insert("QWSlot(int)", SLOT(QWSlot(int)));
    slotDict->insert("QWSlot(QString)", SLOT(QWSlot(const QString)));
    slotDict->insert("QWSlot(bool)", SLOT(QWSlot(bool)));
    slotDict->insert("QWLocalToLocalSlot(int)", SLOT(QWLocalToLocalSlot(int)));

    // For debug
    // printf("argc = %d\n", cc);
    // for (int i = 0; i < cc; i++) printf("argv[%d] = \"%s\"\n", i, vv[i]);
    
    // For debug
    // connectLog = fopen("connect.log", "w+");

    QApplication *app = new QApplication(cc, vv);
    return reinterpret_cast<void *>(app);
}

int QWApplicationExec(void * obj)
{
    return reinterpret_cast<QApplication * >(obj)->exec();
}

void * QWApplicationInstance()
{
    QCoreApplication * inst = QCoreApplication::instance();
    return reinterpret_cast<void *>(inst);
}


////////





// emit wrappers

void QWEmit_(void * source, char * signalName)
{
//     std::cout << "QWEmit_ " << signalName << "\n";
    QWConnectorE *src = reinterpret_cast<QWConnectorE *>(source);

    QString sigName = QString(signalName);    
    void (*f)(QWConnectorE *) = (void (*)(QWConnectorE *))
                                signalDict->value(sigName)->pcallemit;
    (*f)(src);
}

void QWEmit_Int(void * source, char * signalName, int32_t data)
{
//     std::cout << "QWEmit_Int " << signalName << "   data = " << data << "\n";
    QWConnectorE *src = reinterpret_cast<QWConnectorE *>(source);

    QString sigName = QString(signalName);
    void (*f)(QWConnectorE *, int32_t) = (void (*)(QWConnectorE *, int32_t))
                                signalDict->value(sigName)->pcallemit;
    (*f)(src, data);
}

void QWEmit_Str(void * source, char * signalName, char * data)
{
//     std::cout << "QWEmit_Str " << signalName << "   data = \"" << data << "\"\n";
    QWConnectorE *src = reinterpret_cast<QWConnectorE *>(source);

    QString sigName = QString(signalName);
    QString str = QString(data);
    void (*f)(QWConnectorE *, QString) = (void (*)(QWConnectorE *, QString))
                                signalDict->value(sigName)->pcallemit;
    (*f)(src, str);
}

void QWEmit_Bool(void * source, char * signalName, int32_t data)
{
//     std::cout << "QWEmit_Bool source: " << std::hex << source
//               << "  signalName: " << signalName
//               << "  data: " << data << "\n";
    QWConnectorE *src = reinterpret_cast<QWConnectorE *>(source);

    QString sigName = QString(signalName);  
    bool val = data;
    
//     std::cout << " A: " << std::hex << signalDict->value(sigName)->pcallemit
//               << "\n";
    
    void (*f)(QWConnectorE *, bool)
        = (void (*)(QWConnectorE *, bool))signalDict->value(sigName)->pcallemit;
    (*f)(src, val);    
    
//     std::cout << "AFTER calling (*f)(src, val)\n";
}







int8_t QWconnect(void * source, char *signal, void * destination, char *slot)
{
    QObject *src = reinterpret_cast<QObject *>(source);
    QObject *dst = reinterpret_cast<QObject *>(destination);
    
//     std::cout << "CONNECT [" << signal << " -> " << slot << "]\n";

    QString qsignal = "2UNKNOWN(UNKNOWN)";
    QString qslot = "1UNKNOWN(UNKNOWN)";
    if (signalDict->contains(signal)) {
        QtSignal * qtSignal =  signalDict->value(signal);
        qsignal = qtSignal->signalName;
    }
    if (slotDict->contains(slot)) {
//         std::cout << "    slotDict contains " << slot << " !\n";
        qslot = slotDict->value(slot);
    } else if (signalDict->contains(slot)) {
//         std::cout << "    signalDict contains " << slot << " !\n";
        qslot = signalDict->value(slot)->signalName;
    }

//     std::cout << "CONNECT 0x" << std::hex << source << " "
//               << signal << " => " << qsignal.toLocal8Bit().data() << "\n"
//               << "        0x" << std::hex << destination << " "
//               << slot << " => " << qslot.toLocal8Bit().data() << "\n";

    bool ok = QObject::connect(src, qsignal.toLocal8Bit().data(),
                               dst, qslot.toLocal8Bit().data());
    if (!ok) {
        std::cerr << "Can't connect "
                            << src << ":\"" << signal << "\""
                  << " to " << dst << ":\"" << slot   << "\"\n";
    }
    
    // for debug
//     fprintf(connectLog, "0x%08lX %s --> 0x%08lX %s\n",
//                         (ulong) src, qsignal.toLocal8Bit().data(),
//                         (ulong) dst, qslot.toLocal8Bit().data());
//     fflush(connectLog);
    
    return ok;
}





int8_t QWdisconnect(void * source, char *signal, void * destination, char *slot)
{
    QObject *src = reinterpret_cast<QObject *>(source);
    QObject *dst = reinterpret_cast<QObject *>(destination);
    
//     std::cout << "DISCONNECT [" << signal << " -> " << slot << "]\n";

    QString qsignal = "2UNKNOWN(UNKNOWN)";
    QString qslot = "1UNKNOWN(UNKNOWN)";
    if (signalDict->contains(signal)) {
        QtSignal * qtSignal =  signalDict->value(signal);
        qsignal = qtSignal->signalName;
    }
    if (slotDict->contains(slot)) {
//         std::cout << "    slotDict contains " << slot << " !\n";
        qslot = slotDict->value(slot);
    } else if (signalDict->contains(slot)) {
//         std::cout << "    signalDict contains " << slot << " !\n";
        qslot = signalDict->value(slot)->signalName;
    }

//     std::cout << "DISCONNECT 0x" << std::hex << source << " "
//               << signal << " => " << qsignal.toLocal8Bit().data() << "\n"
//               << "        0x" << std::hex << destination << " "
//               << slot << " => " << qslot.toLocal8Bit().data() << "\n";

    bool ok = QObject::disconnect(src, qsignal.toLocal8Bit().data(),
                                  dst, qslot.toLocal8Bit().data());
    if (!ok) {
        std::cerr << "Can't disconnect "
                            << src << ":\"" << signal << "\""
                  << " to " << dst << ":\"" << slot   << "\"\n";
    }
    
    // for debug
//     fprintf(connectLog, "0x%08lX %s --> 0x%08lX %s\n",
//                         (ulong) src, qsignal.toLocal8Bit().data(),
//                         (ulong) dst, qslot.toLocal8Bit().data());
//     fflush(connectLog);

    return ok;
}






void * QWConnectorRCTOR(int objId, char * slotName, char * slotSig)
{
    QWConnectorR *c = new QWConnectorR(objId, slotName, slotSig);
//     std::cerr << "QWConnectorR CTOR " << c
//               << "   objId = " << objId
//               << "   slotName = " << slotName << "\n";
    return reinterpret_cast<void *>(c);
}

void QWConnectorRDTOR(void * obj)
{
    QWConnectorR *c = reinterpret_cast<QWConnectorR *>(obj);
//      std::cerr << "QWConnectorR DTOR " << c << "\n";
     delete c;
}


QWConnectorR::QWConnectorR(int objId, char * slotName, char * slotSig)
{
    m_objId = objId;
    m_slotName = QString(slotName);
    m_slotSig = QString(slotSig);
}

void QWConnectorR::QWSlot()
{

//     std::cout << "QWConnectorR::QWSlot (A) : slotName = "
//               << m_slotName.toLocal8Bit().data()
//               << "   id = " << m_objId << "\n";
// 
//     std::cout << "QWConnectorR::QWSlot() : slotCallback called\n";
   (*slotCallback)(m_objId, m_slotName.toLocal8Bit().data());
}

// Example : ???
void QWConnectorR::QWSlot(int val)
{
//     std::cout << "QWConnectorR::QWSlot(int) (B) : slotName = "
//               << m_slotName.toLocal8Bit().data()
//               << "   id = " << m_objId << "\n";
// 
//     std::cout << "QWConnectorR::QWSlot(int) : slotCallbackInt called\n";
    (*slotCallbackInt)(m_objId, m_slotName.toLocal8Bit().data(), val);
}

void QWConnectorR::QWSlot(bool b)
{
//     std::cout << "QWConnectorR::QWSlot(bool) (D) : slotName = "
//               << m_slotName.toLocal8Bit().data()
//               << "   id = " << m_objId << "\n";
// 
//     std::cout << "QWConnectorR::QWSlot(bool) : slotCallbackBool called\n";
    (*slotCallbackBool)(m_objId, m_slotName.toLocal8Bit().data(), b ? 1 : 0);
}

// Example : signal "windowTitleChanged(const QString &title)" from QWidget
void QWConnectorR::QWSlot(const QString str)
{
//     std::cout << "QWConnectorR::QWSlot(QString) (C) : slotName = "
//               << m_slotName.toLocal8Bit().data()
//               << "   id = " << m_objId << "\n";
// 
//     std::cout << "QWConnectorR::QWSlot(Qstring &) : slotCallbackStr called\n";
//     std::cout << "      data = \"" << str.toLocal8Bit().data() << "\"\n";

   (*slotCallbackStr)(m_objId, m_slotName.toLocal8Bit().data(),
                                            str.toLocal8Bit().data());
}

void QWConnectorR::QWLocalToLocalSlot(int dataId)
{
//     std::cout << "QWConnectorR::QWLocalToLocalSlot(dataId="
//               << dataId << ") : slotName = "
//               << m_slotName.toLocal8Bit().data()
//               << "   id = " << m_objId << "\n";
// 
//     std::cout << "0x" << std::hex << this
//               << " dataId=" << dataId << " : slotCallbackComplexSig called\n";

  (*slotCallbackComplexSig)(m_objId, m_slotName.toLocal8Bit().data(), dataId);
}


///============================================================


void * QWConnectorECTOR(int objId, char * signalName, char * signalSig)
{
    QWConnectorE *c = new QWConnectorE(objId, signalName, signalSig);
//     std::cout << "QWConnectorE CTOR " << c
//               << "   objId = " << objId
//               << "   signalName = " << signalName << "\n";
    return reinterpret_cast<void *>(c);
}

void QWConnectorEDTOR(void * obj)
{
    QWConnectorE *c = reinterpret_cast<QWConnectorE *>(obj);
//    std::cerr << "QWConnectorE DTOR " << c << "\n";
    delete c;
}


QWConnectorE::QWConnectorE(int objId, char * signalName, char * signalSig)
{
//     std::cout << " ++ QWConnectorE CTOR start\n";
    m_objId = objId;
    m_signalName = QString(signalName);
    m_signalSig = QString(signalSig);
//     std::cout << " -- QWConnectorE CTOR end\n";
//     std::cout.flush();
}

///////////////////////////////////////////////////////////////

// Native helpers

char * QWGetStringFromPointer(void * ptr)
{
    char * s = (char *) ptr;
    return s;
}

void * QWGetPointerFromString(char * str)
{
    return (void *) str;
}

double QWGetDoubleFromPointer(void * ptr)
{
    double * d = (double *) ptr;
    return *d;
}

void * QWGetPointerFromDouble(double * pd)
{
    return (void *) pd;
}

int64_t QWPointer2Int(void * val)
{
    int64_t ival = (int64_t) val;
    return ival;
}

void * QWInt2Pointer(int64_t val)
{
    void * p = (void *) val;
   return p;
}



// Callbacks initializers

void QWSetupSlotCallback(void (*f)(int32_t objId, char *slotName))
{
    slotCallback = f;
}

void QWSetupSlotCallbackInt(void (*f)(int32_t objId, char *slotName, STD_INT i))
{
    slotCallbackInt = f;
}

void QWSetupSlotCallbackInt2(void (*f)(int32_t objId, char *slotName,
                                                    STD_INT i1, STD_INT i2))
{
    slotCallbackInt2 = f;
}

void QWSetupSlotCallbackStr(void (*f)(int32_t objId, char *slotName, char *s))
{
    slotCallbackStr = f;
}

void QWSetupSlotCallbackIntStr(void (*f)(int32_t objId, char *slotName,
                                                        STD_INT i, char *s))
{
    slotCallbackIntStr = f;
}

void QWSetupSlotCallbackBool(void (*f)(int32_t objId, char *slotName, uchar b))
{
//     std::cout << "QWSetupSlotCallbackBool f=" << (void *)f << "\n";
    slotCallbackBool = f;
}

void QWSetupSlotCallbackPointer(void (*f)(int32_t objId, char *slotName, void *p))
{
//     std::cout << "QWSetupSlotCallbackPointer f=" << (void *)f << "\n";
//     std::cout << "&slotCallbackPointer=" << &slotCallbackPointer << "\n";
    slotCallbackPointer = f;
}

void QWSetupSlotCallbackQEvent(
    void (*f)(int32_t objId, const char *slotName, QEvent* event))
{
    slotCallbackQEvent = f;
}

void QWSetupSlotCallbackQMouseEvent(
    void (*f)(int32_t objId, const char *slotName, QMouseEvent* event))
{
    slotCallbackQMouseEvent = f;
}

void QWSetupSlotCallbackQPaintEvent(
    void (*f)(int32_t objId, const char *slotName, QPaintEvent* event))
{
    slotCallbackQPaintEvent = f;
}

void QWSetupSlotCallbackQResizeEvent(
    void (*f)(int32_t objId, const char *slotName, QResizeEvent* event))
{
    slotCallbackQResizeEvent = f;
}




void QWSetupSlotCallbackComplexSig(void (*f)(int32_t objId, char *slotName,
                                                            uint32_t dataId))
{
    slotCallbackComplexSig = f;
}


///////////////////////////////////////////////////////////////


// Only for debug
void QWDump()
{
    std::cout << "QWDump : SIGNALDICT\n";
    QMap<QString, QtSignal * >::const_iterator it = signalDict->constBegin();
    while (it != signalDict->constEnd()) {
        std::cout << "   " << it.key().toLocal8Bit().data() << " : ";
        it.value()->dump();
        std::cout << std::endl;
        ++it;
    }

    std::cout << "QWDump : SLOTDICT\n";
    QMap<QString, QString>::const_iterator i = slotDict->constBegin();
    while (i != slotDict->constEnd()) {
        std::cout << "   " << i.key().toLocal8Bit().data()
                << " : " << i.value().toLocal8Bit().data() << std::endl;
        ++i;
    }

//     std::cout << "\n";
//     QObject::dumpObjectInfo()
//     std::cout << "\n";
}



//////////////////////////////////////////////////////////////////////////////
// Subclasses

void QWvalidateEvent(void *obj, int32_t objId, char *methodName)
{
//     std::cout << "QWvalidateEvent start\n";

    CallbackValidator * ptr = reinterpret_cast<CallbackValidator *>(obj);
    ptr->validateEvent(objId, methodName);
    
//     std::cout << "QWvalidateEvent stop\n";
}



