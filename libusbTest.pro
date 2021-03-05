QT -= gui

CONFIG += c++11 console
CONFIG -= app_bundle

# You can make your code fail to compile if it uses deprecated APIs.
# In order to do so, uncomment the following line.
#DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0x060000    # disables all the APIs deprecated before Qt 6.0.0


QMAKE_LFLAGS_WINDOWS += /LARGEADDRESSAWARE


SOURCES += \
        main.cpp

# Default rules for deployment.
qnx: target.path = /tmp/$${TARGET}/bin
else: unix:!android: target.path = /opt/$${TARGET}/bin
!isEmpty(target.path): INSTALLS += target

HEADERS += \
    libusb/libusb.h


#DEPENDPATH += $$libusb
#INCLUDEPATH += $$libusb

LIBS += -L$$libusb -lusb-1.0


#PRE_TARGETDEPS += libusb-1.0.a
#LIBS += -L"$$libusb" -llibusb-1.0
#LIBS += -L"$$libusb" -llibusb-1.0.dll


DISTFILES += \
    libusb/libusb-1.0.a \
    libusb/libusb-1.0.dll \
    libusb/libusb-1.0.dll.a

