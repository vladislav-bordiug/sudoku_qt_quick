cmake_minimum_required(VERSION 3.16)
project(sudokuapp VERSION 0.1 LANGUAGES CXX)

set(CMAKE_CXX_STANDARD_REQUIRED ON)
set(CMAKE_AUTOMOC ON)

find_package(Qt6 6.4 REQUIRED COMPONENTS Core Gui Qml Quick QuickControls2)

qt_standard_project_setup()
set(APP_ICON_RESOURCE_WINDOWS "${CMAKE_CURRENT_SOURCE_DIR}/resources.rc")
set(MACOSX_BUNDLE_ICON_FILE icon.icns)
set(APP_ICON_MACOSX ${CMAKE_CURRENT_SOURCE_DIR}/icon.icns)
set_source_files_properties(${APP_ICON_MACOSX} PROPERTIES
           MACOSX_PACKAGE_LOCATION "Resources")

qt_add_executable(Sudoku WIN32 MACOSX_BUNDLE
    main.cpp
    ${APP_ICON_RESOURCE_WINDOWS}
    ${APP_ICON_MACOSX}
)

target_link_libraries(Sudoku PRIVATE
    Qt6::Core
    Qt6::Gui
    Qt6::Qml
    Qt6::Quick
    Qt6::QuickControls2
)

qt_add_qml_module(Sudoku
    URI sudoku
    VERSION 1.0
    QML_FILES
        "Main.qml"
        "content/SudokuTable.qml"
        "content/NumberPad.qml"
        "content/SudokuButton.qml"
        "content/SudokuGameButton.qml"
        "content/sudoku.js"
        "content/SudokuGameButtonWithIcon.qml"
    RESOURCES
        "content/images/undo.png"
        "content/images/redo.png"
        "content/images/clear.png"
        "content/images/clearall.png"
        "content/images/logo.png"
        "content/SudokuToolBar.qml"
        "content/DifficultyPad.qml"
    RESOURCE_PREFIX /
)

if(ANDROID)
    set_target_properties(Sudoku
        PROPERTIES
            QT_ANDROID_PACKAGE_SOURCE_DIR ${CMAKE_CURRENT_SOURCE_DIR}/android
            QT_ANDROID_TARGET_SDK_VERSION "34")
endif()
if(IOS)
    set(asset_catalog_path "ios/Assets.xcassets")
    target_sources(Sudoku PRIVATE "${asset_catalog_path}")
    set_source_files_properties(${asset_catalog_path} PROPERTIES MACOSX_PACKAGE_LOCATION Resources)
    set_target_properties(Sudoku
        PROPERTIES XCODE_ATTRIBUTE_ASSETCATALOG_COMPILER_APPICON_NAME AppIcon)
endif()

install(TARGETS Sudoku
    RUNTIME DESTINATION ${CMAKE_INSTALL_LIBDIR}
    BUNDLE DESTINATION ${CMAKE_INSTALL_LIBDIR}
    LIBRARY DESTINATION ${CMAKE_INSTALL_LIBDIR}
)
