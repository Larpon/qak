QT += qml quick multimedia gui
!no_desktop: QT += widgets

# Additional import path used to resolve QML modules in Qt Creator's code model
QML_IMPORT_PATH += $$PWD

!contains(QAK_CONFIG,"noautoregister") {
    DEFINES += QAK_AUTO_REGISTER
    HEADERS += $$PWD/qak.h
    SOURCES += $$PWD/qak.cpp
}

contains(QAK_CONFIG,"nowarnings") {
    DEFINES += QAK_NO_WARNINGS
    message("Qak supressing warnings")
}

INCLUDEPATH += \
    $$PWD \
    $$PWD/src

HEADERS += \
    $$PWD/src/aid_p.h \
    $$PWD/src/maskedmousearea.h \
    $$PWD/src/resource.h \
    $$PWD/src/store.h \
    $$PWD/src/propertytoggle.h \
    $$PWD/src/mouserotate_p.h \
    $$PWD/src/itemanimationprivate.h

SOURCES += \
    $$PWD/src/aid_p.cpp \
    $$PWD/src/maskedmousearea.cpp \
    $$PWD/src/resource.cpp \
    $$PWD/src/store.cpp \
    $$PWD/src/propertytoggle.cpp \
    $$PWD/src/mouserotate_p.cpp \
    $$PWD/src/itemanimationprivate.cpp

RESOURCES += \
    $$PWD/qak.qrc

DISTFILES += \
    $$PWD/README.md \
    $$PWD/LICENSE

exists(.git) {
    unix {
        GIT_BRANCH_NAME = $$system(git rev-parse --abbrev-ref HEAD)
        message("Qak branch $$GIT_BRANCH_NAME")
    }
}
