project(QtDockTile)
cmake_minimum_required(VERSION 2.8 FATAL_ERROR)

if(COMMAND cmake_policy)
    cmake_policy(SET CMP0003 NEW)
    cmake_policy(SET CMP0002 OLD)
endif(COMMAND cmake_policy)

list(APPEND CMAKE_MODULE_PATH "${CMAKE_CURRENT_SOURCE_DIR}/cmake")

set(QT_USE_QTGUI true)
set(QT_USE_QTCORE true)
set(QT_MIN_VERSION "4.7.0")

find_package(Qt4 REQUIRED)
include(${QT_USE_FILE})
include(CommonUtils)

#TODO check if vars is defined
set(RLIBDIR bin)
set(BINDIR bin)
set(LIBDIR lib${LIB_SUFFIX})
set(LIB_DESTINATION ${CMAKE_INSTALL_PREFIX}/${LIBDIR})

set(CMAKE_QTDOCKTILE_VERSION_MAJOR 1 CACHE INT "Major QtDockTile version number" FORCE)
set(CMAKE_QTDOCKTILE_VERSION_MINOR 0 CACHE INT "Minor QtDockTile version number" FORCE)
set(CMAKE_QTDOCKTILE_VERSION_PATCH 0 CACHE INT "Release QtDockTile version number" FORCE)
set(CMAKE_QTDOCKTILE_VERSION_STRING "${CMAKE_QTDOCKTILE_VERSION_MAJOR}.${CMAKE_QTDOCKTILE_VERSION_MINOR}.${CMAKE_QTDOCKTILE_VERSION_PATCH}" CACHE STRING "QtDockTile version string" FORCE)

option(QT_QTDOCKTILE_WITH_QMLAPI "Enable QtQuick bindings for qtdocktile" ON)
option(QT_QTDOCKTILE_INSTALL_HEADERS "Install devel headers for qtdocktile" ON)
option(QT_QTDOCKTILE_INSTALL_EXAMPLES "Install examples for qtdocktile" OFF)

add_subdirectory(src)
if(QT_QTDOCKTILE_INSTALL_EXAMPLES)
    add_subdirectory(examples)
endif()
#add_subdirectory(doc)
