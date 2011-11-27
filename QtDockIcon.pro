#-------------------------------------------------
#
# Project created by QtCreator 2011-11-27T17:33:04
#
#-------------------------------------------------

TARGET = QtDockIcon
TEMPLATE = lib

DEFINES += QTDOCKICON_LIBRARY

SOURCES += qtdockicon.cpp

HEADERS += qtdockicon.h \
    qtdockicon_global.h \
    qtdockicon_p.h

symbian {
    MMP_RULES += EXPORTUNFROZEN
    TARGET.UID3 = 0xE5A41B03
    TARGET.CAPABILITY = 
    TARGET.EPOCALLOWDLLDATA = 1
    addFiles.sources = QtDockIcon.dll
    addFiles.path = !:/sys/bin
    DEPLOYMENT += addFiles
}

unix:!symbian {
    maemo5 {
        target.path = /opt/usr/lib
    } else {
        target.path = /usr/lib
    }
    INSTALLS += target
}



