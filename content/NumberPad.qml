import QtQuick
import QtQuick.Layouts
import "sudoku.js" as SudokuEngine

Rectangle {
    id: numberpad
    required property SudokuTable sudokutable
    required property int totalWidth
    required property int totalHeight

    component DigitButton: SudokuButton {
        Layout.preferredWidth: (Qt.platform.os === "android" || Qt.platform.os === "ios" ) ? Math.floor((totalWidth-15)/4) : Math.floor((totalWidth-10)/3)
        Layout.preferredHeight: (Qt.platform.os === "android" || Qt.platform.os === "ios" ) ? Math.floor((totalHeight-15)/4) : Math.floor((totalWidth-10)/3)
        onClicked: function() {
            SudokuEngine.numButtonPressed(text, numberpad.sudokutable)
        }
    }
    component GameButton: SudokuGameButton {
        Layout.preferredWidth: (Qt.platform.os === "android" || Qt.platform.os === "ios" ) ? (Math.floor((totalWidth-15)/4)*3+10-5)/2 : Math.floor((totalWidth-5)/2)
        Layout.preferredHeight: (Qt.platform.os === "android" || Qt.platform.os === "ios" ) ? Math.floor((totalHeight-15)/4) : Math.floor((totalHeight - totalWidth - 10)/2)
        onClicked: function() {
            SudokuEngine.gameButtonPressed(text, numberpad.sudokutable)
        }
    }
    component GameButtonWithIcon: SudokuGameButtonWithIcon {
        Layout.preferredWidth: (Qt.platform.os === "android" || Qt.platform.os === "ios" ) ? Math.floor((totalWidth-15)/4) : Math.floor((totalWidth-15)/4)
        Layout.preferredHeight: (Qt.platform.os === "android" || Qt.platform.os === "ios" ) ? Math.floor((totalHeight-15)/4) : Math.floor((totalHeight - totalWidth - 10)/2)
        sizeW: (Qt.platform.os === "android" || Qt.platform.os === "ios" ) ? Math.floor((totalWidth-15)/4) : Math.floor((totalWidth-15)/4)
        sizeH: (Qt.platform.os === "android" || Qt.platform.os === "ios" ) ? Math.floor((totalHeight-15)/4) : Math.floor((totalHeight - totalWidth - 10)/2)
        onClicked: function() {
            SudokuEngine.gameButtonPressed(text, numberpad.sudokutable)
        }
    }

    GridLayout {
        id: root1
        columns: (Qt.platform.os === "android" || Qt.platform.os === "ios" ) ? 1 : 4
        rows: (Qt.platform.os === "android" || Qt.platform.os === "ios" ) ? 4 : 1
        x: (Qt.platform.os === "android" || Qt.platform.os === "ios" ) ? root2.x + root2.width + 5 : 0
        columnSpacing: 5
        rowSpacing: 5

        GameButtonWithIcon{
            text: "Undo"
            imagePath: "images/undo.png"
        }
        GameButtonWithIcon{
            text: "Redo"
            imagePath: "images/redo.png"
        }
        GameButtonWithIcon{
            text: "Clear"
            imagePath: "images/clear.png"
        }
        GameButtonWithIcon{
            text: "Clear all"
            imagePath: "images/clearall.png"
        }
    }

    GridLayout {
        id: root2
        y: (Qt.platform.os === "android" || Qt.platform.os === "ios" ) ? 0 : root1.y + root1.height + 5
        columns: 3
        columnSpacing: 5
        rowSpacing: 5

        DigitButton {
            text: "1"
        }
        DigitButton {
            text: "2"
        }
        DigitButton {
            text: "3"
        }
        DigitButton {
            text: "4"
        }
        DigitButton {
            text: "5"
        }
        DigitButton {
            text: "6"
        }
        DigitButton {
            text: "7"
        }
        DigitButton {
            text: "8"
        }
        DigitButton {
            text: "9"
        }
    }
    GridLayout {
        id: root3
        y: root2.y + root2.height + 5
        columns: 2
        columnSpacing: 5
        GameButton{
            text: "Solve"
        }
        GameButton{
            text: "New game"
        }
    }
}
