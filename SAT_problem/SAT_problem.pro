TEMPLATE = app
CONFIG += console
CONFIG -= app_bundle
CONFIG -= qt

SOURCES += \
    clause.cpp \
    cnf.cpp \
    solver.cpp \
    bitmap.cpp \
    cnfedit.cpp \
    test.cpp \
    test_clause.cpp \
    test_cnf.cpp \
    test_solver.cpp \
    main.cpp

HEADERS += \
    clause.h \
    cnf.h \
    solver.h \
    bitmap.h \
    cnfedit.h
