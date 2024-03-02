import QtQuick
import QtQuick.Layouts
import "sudoku.js" as SudokuEngine

Rectangle {
    id: difficultypad
    required property int totalWidth
    required property int totalHeight
    required property SudokuTable sudokutable
    required property var openGameFunction
    width: totalWidth
    height: totalHeight

    Timer {
        id: timer
    }
    function delay(delayTime,cb) {
        timer.interval = delayTime;
        timer.repeat = false;
        timer.triggered.connect(cb);
        timer.start();
    }

    component DifficultyButton: SudokuGameButton {
        Layout.preferredWidth: Math.floor(totalWidth/2)
        Layout.preferredHeight: Math.floor((totalHeight-35)/8)
        onClicked: function() {
            SudokuEngine.difficultyButtonPressed(text,difficultypad.sudokutable)
            delay(200,openGameFunction)
        }
    }
    GridLayout {
        y: Math.floor((root_1.y-root_0.height)/2)
        id: root_0
        columns: 2
        rows: 1
        anchors.horizontalCenter: parent.horizontalCenter
        Image{
            id: image
            source: "images/logo.png"
            Layout.preferredWidth: (Qt.platform.os === "android" || Qt.platform.os === "ios" ) ? Math.floor((totalHeight-35)/8) : Math.floor((totalHeight-20)/8)
            Layout.preferredHeight: (Qt.platform.os === "android" || Qt.platform.os === "ios" ) ? Math.floor((totalHeight-35)/8) : Math.floor((totalHeight-20)/8)
            Layout.alignment: Qt.AlignVCenter | Qt.AlignHCenter
        }
        Text {
            id: text
            text: "Sudoku"
            font.pixelSize: 30
            color: "#5a7bc0"
            Layout.alignment: Qt.AlignVCenter | Qt.AlignHCenter
        }
    }
    GridLayout {
        id: root_1
        columns: 1
        rows: 4
        anchors.centerIn: parent
        y: Math.floor(totalHeight/4)
        columnSpacing: 5
        rowSpacing: 5
        Text {
            text: "Choose difficulty:"
            font.pixelSize: 22
            color: "#5a7bc0"
            Layout.alignment: Qt.AlignVCenter | Qt.AlignHCenter
        }
        DifficultyButton{
            text: "Easy"
        }
        DifficultyButton{
            text: "Medium"
        }
        DifficultyButton{
            text: "Hard"
        }
    }
}
