QT       += core gui

greaterThan(QT_MAJOR_VERSION, 4): QT += widgets

CONFIG += c++11
QT += multimedia
# The following define makes your compiler emit warnings if you use
# any Qt feature that has been marked deprecated (the exact warnings
# depend on your compiler). Please consult the documentation of the
# deprecated API in order to know how to port your code away from it.
DEFINES += QT_DEPRECATED_WARNINGS

# You can also make your code fail to compile if it uses deprecated APIs.
# In order to do so, uncomment the following line.
# You can also select to disable deprecated APIs only up to a certain version of Qt.
#DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0x060000    # disables all the APIs deprecated before Qt 6.0.0

RC_ICONS = logo.ico

SOURCES += \
    admininfo.cpp \
    adminm.cpp \
    am_addadmin.cpp \
    bm_addbook.cpp \
    bm_modifybook.cpp \
    bookm.cpp \
    borrowbook.cpp \
    borrowhistory.cpp \
    borrowlistm.cpp \
    main.cpp \
    mainwindow.cpp \
    managecenter.cpp \
    readercenter.cpp \
    readerinfo.cpp \
    readerm.cpp \
    returnbook.cpp \
    returnlistm.cpp \
    rm_addreader.cpp \
    rm_modifyreader.cpp \
    tm.cpp \
    mythread.cpp

HEADERS += \
    Classes/Admin.h \
    Classes/AdminManagement.h \
    Classes/Book.h \
    Classes/BookManagement.h \
    Classes/BorrowList.h \
    Classes/BorrowListManagement.h \
    Classes/Reader.h \
    Classes/ReaderManagement.h \
    Classes/ReturnList.h \
    Classes/ReturnListManagement.h \
    Classes/tm.h \
    admininfo.h \
    adminm.h \
    am_addadmin.h \
    bm_addbook.h \
    bm_modifybook.h \
    bookm.h \
    borrowbook.h \
    borrowhistory.h \
    borrowlistm.h \
    mainwindow.h \
    managecenter.h \
    readercenter.h \
    readerinfo.h \
    readerm.h \
    returnbook.h \
    returnlistm.h \
    rm_addreader.h \
    rm_modifyreader.h \
    mythread.h

FORMS += \
    admininfo.ui \
    adminm.ui \
    am_addadmin.ui \
    bm_addbook.ui \
    bm_modifybook.ui \
    bookm.ui \
    borrowbook.ui \
    borrowhistory.ui \
    borrowlistm.ui \
    mainwindow.ui \
    managecenter.ui \
    readercenter.ui \
    readerinfo.ui \
    readerm.ui \
    returnbook.ui \
    returnlistm.ui \
    rm_addreader.ui \
    rm_modifyreader.ui

# Default rules for deployment.
qnx: target.path = /tmp/$${TARGET}/bin
else: unix:!android: target.path = /opt/$${TARGET}/bin
!isEmpty(target.path): INSTALLS += target

RESOURCES += \
    images.qrc \
    image1.qrc

DISTFILES += \
    Classes/Data/admin_data.txt \
    Classes/Data/book_data.txt \
    Classes/Data/borrowlist_data.txt \
    Classes/Data/reader_data.txt
