import QtQuick
import QtQuick.Controls 2.15

ToolBar {
    id: toolbar
    anchors.left: parent.left
    anchors.right: parent.right
    height: btn.height
    required property var closeGameFunction

    Timer {
        id: timer
    }
    function delay(delayTime,cb) {
        timer.interval = delayTime;
        timer.repeat = false;
        timer.triggered.connect(cb);
        timer.start();
    }

    SudokuGameButton{
        id: btn
        text: qsTr("‹ Back")
        textSize: 22
        onClicked: {
            delay(200,closeGameFunction)
        }
    }
    Text {
        text: "Game"
        font.pixelSize: 22
        color: "#5a7bc0"
        anchors.centerIn: parent
    }

    background: Rectangle{
        anchors.fill: parent
        color: "#dce3ed"
    }
}
