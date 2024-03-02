import QtQuick
import QtQuick.Window
import QtQuick.Controls 2.15

import "content"
import "content/sudoku.js" as SudokuEngine

Window {
    id: window
    maximumHeight: toolbar.height + sudokutable.totalHeight + 10
    maximumWidth: numPad.x + numPad.totalWidth + 5
    minimumHeight: toolbar.height + sudokutable.totalHeight + 10
    minimumWidth: numPad.x + numPad.totalWidth + 5
    width: Screen.width
    height: Screen.height
    visible: true
    title: qsTr("Sudoku")
    color: "#FFFFFF"

    function close_game(){
        toolbar.visible = false
        sudokutable.visible = false
        numPad.visible = false
        difficultypad.visible = true
    }

    function open_game(){
        difficultypad.visible = false
        toolbar.visible = true
        sudokutable.visible = true
        numPad.visible = true
    }

    DifficultyPad{
        id: difficultypad
        sudokutable: sudokutable
        openGameFunction: open_game
        totalWidth: (Qt.platform.os === "android" || Qt.platform.os === "ios" ) ? Screen.width : window.maximumWidth
        totalHeight: (Qt.platform.os === "android" || Qt.platform.os === "ios" ) ? Screen.desktopAvailableHeight : window.maximumHeight
    }

    SudokuToolBar {
        id: toolbar
        visible: false
        closeGameFunction: close_game
    }

    SudokuTable {
        x: (Qt.platform.os === "android" || Qt.platform.os === "ios" ) ? Math.floor((Screen.width-Math.min(Screen.width, Math.floor(Screen.height/2)-toolbar.height-5)+10)/2) : 5
        y: toolbar.height + 5
        id: sudokutable
        visible: false
        totalWidth: (Qt.platform.os === "android" || Qt.platform.os === "ios" ) ? Math.min(Screen.width, Math.floor(Screen.height/2)-toolbar.height-5)-10 : 450
        totalHeight: (Qt.platform.os === "android" || Qt.platform.os === "ios" ) ? Math.min(Screen.width, Math.floor(Screen.height/2)-toolbar.height-5)-10 : 450
    }

    NumberPad {
        x: (Qt.platform.os === "android" || Qt.platform.os === "ios" ) ? Math.floor((Screen.width-Math.min(Screen.width, Math.floor(Screen.height/2)-toolbar.height-5)+10)/2) : sudokutable.x + sudokutable.totalWidth + 10
        y: (Qt.platform.os === "android" || Qt.platform.os === "ios" ) ? sudokutable.y + sudokutable.height + 5 : toolbar.height + 5
        id: numPad
        visible: false
        sudokutable: sudokutable
        totalWidth: (Qt.platform.os === "android" || Qt.platform.os === "ios" ) ? Math.min(Screen.width, Math.floor(Screen.height/2)-toolbar.height-5)-10 : 300
        totalHeight: (Qt.platform.os === "android" || Qt.platform.os === "ios" ) ? Screen.desktopAvailableHeight-Math.min(Screen.width, Math.floor(Screen.height/2)-toolbar.height-5) - toolbar.height - 5 : 450
    }
}
