import QtQuick
import QtQuick.Controls

Button {
    id: gamebutton

    property color textColor: "#FFFFFF"
    property int textSize: 22

    contentItem: Text {
        text: gamebutton.text
        font.pixelSize: gamebutton.textSize
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignVCenter
        color: gamebutton.textColor
    }
    background: Rectangle {
        id: myRectId
        color: gamebutton.hovered ? (gamebutton.pressed ? "#4363a7" : "#7091d5"): (gamebutton.pressed ? "#4363a7" : "#5a7bc0")
        Behavior on color {
            ColorAnimation {
                duration: 800
                easing.type: Easing.OutElastic
            }
        }
    }
}
