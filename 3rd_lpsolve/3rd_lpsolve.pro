#-------------------------------------------------
#
# Project created by QtCreator 2014-11-28T00:19:41
#
#-------------------------------------------------

CONFIG -= qt

TARGET = 3rd_lpsolve
TEMPLATE = lib
CONFIG += staticlib

win32 { DEFINES += WIN32 WIN64}

CONFIG(debug, debug|release) { DEFINES += _DEBUG   CHECK_SOLUTION YY_NEVER_INTERACTIVE PARSER_LP INVERSE_ACTIVE=INVERSE_LUSOL RoleIsExternalInvEngine}
CONFIG(release, debug|release) { DEFINES += NDEBUG CHECK_SOLUTION YY_NEVER_INTERACTIVE PARSER_LP INVERSE_ACTIVE=INVERSE_LUSOL RoleIsExternalInvEngine}


INCLUDEPATH += ./shared \
    ./bfp \
    ./bfp/bfp_LUSOL \
    ./bfp/bfp_LUSOL/LUSOL \
    ./colamd


SOURCES += \
    fortify.c \
    ini.c \
    lp_crash.c \
    lp_Hash.c \
    lp_lib.c \
    lp_matrix.c \
    lp_MDO.c \
    lp_mipbb.c \
    lp_MPS.c \
    lp_params.c \
    lp_presolve.c \
    lp_price.c \
    lp_pricePSE.c \
    lp_report.c \
    lp_rlp.c \
    lp_scale.c \
    lp_simplex.c \
    lp_SOS.c \
    lp_utils.c \
    lp_wlp.c \
    yacc_read.c \
    shared/commonlib.c \
    shared/mmio.c \
    shared/myblas.c \
    bfp/bfp_LUSOL/LUSOL/lusol.c \
#    bfp/bfp_LUSOL/LUSOL/lusol1.c \
#    bfp/bfp_LUSOL/LUSOL/lusol2.c \
#    bfp/bfp_LUSOL/LUSOL/lusol6a.c \
#    bfp/bfp_LUSOL/LUSOL/lusol6l0.c \
#    bfp/bfp_LUSOL/LUSOL/lusol6u.c \
#    bfp/bfp_LUSOL/LUSOL/lusol7a.c \
#    bfp/bfp_LUSOL/LUSOL/lusol8a.c \
    bfp/bfp_LUSOL/lp_LUSOL.c \
    colamd/colamd.c

HEADERS += \
    fortify.h \
    ini.h \
    lp_bit.h \
    lp_crash.h \
    lp_explicit.h \
    lp_Hash.h \
    lp_lib.h \
    lp_matrix.h \
    lp_MDO.h \
    lp_mipbb.h \
    lp_MPS.h \
    lp_presolve.h \
    lp_price.h \
    lp_pricePSE.h \
    lp_report.h \
    lp_rlp.h \
    lp_scale.h \
    lp_simplex.h \
    lp_SOS.h \
    lp_types.h \
    lp_utils.h \
    lp_wlp.h \
    lpkit.h \
    yacc_read.h \
    shared/commonlib.h \
    shared/mmio.h \
    shared/myblas.h \
    bfp/lp_BFP.h \
    bfp/bfp_LUSOL/LUSOL/lusol.h \
    bfp/bfp_LUSOL/bfp_LUSOL.h \
    bfp/bfp_LUSOL/lp_LUSOL.h \
    colamd/colamd.h

unix:!symbian {
    maemo5 {
        target.path = /opt/usr/lib
    } else {
        target.path = /usr/lib
    }
    INSTALLS += target
}

## Liangliang: there must be a better way to do this. Please let me know. liangliang.nan@gmail.com
#macx {
#    MAC_SDK  = /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX10.10.sdk
#    if( !exists( $$MAC_SDK) ) {
#        MAC_SDK  = /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX10.9.sdk
#        if( !exists( $$MAC_SDK) ) {
#            MAC_SDK  = /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX10.8.sdk
#            if( !exists( $$MAC_SDK) ) {
#                MAC_SDK  = /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX10.7.sdk
#                if( !exists( $$MAC_SDK) ) {
#                    error("The selected Mac OSX SDK does not exist at $$MAC_SDK!")
#                }
#            }
#        }
#    }
#    macx:QMAKE_MAC_SDK = $$MAC_SDK
#}

