TEMPLATE = app

QT += qml quick widgets

SOURCES += main.cpp \
    appwindow.cpp \
    piechart.cpp \
    openingpagehandler.cpp \
    addresspagehandler.cpp \
    confirmationpagehandler.cpp \
    menupagehandler.cpp \
    paymentpagehandler.cpp \
    trackpagehandler.cpp

RESOURCES += qml.qrc

# Additional import path used to resolve QML modules in Qt Creator's code model
QML_IMPORT_PATH =

# Default rules for deployment.
include(deployment.pri)

DISTFILES +=

HEADERS += \
    appwindow.h \
    piechart.h \
    openingpagehandler.h \
    addresspagehandler.h \
    confirmationpagehandler.h \
    menupagehandler.h \
    paymentpagehandler.h \
    trackpagehandler.h
