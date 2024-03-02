import QtQuick
import QtQuick.Controls

Button {
    id: button

    property color textColor: "#5a7bc0"

    contentItem: Text {
        text: button.text
        font.pixelSize: 48
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignVCenter
        color: button.pressed ? Qt.lighter(button.textColor) : button.textColor
        Behavior on color {
            ColorAnimation {
                duration: 200
                easing.type: Easing.OutCubic
            }
        }
    }

    background: Rectangle {
        color: button.hovered ? (button.pressed ? "#d2dae7" : "#dce3ed"): (button.pressed ? "#d2dae7" : "#eaeef4")
        Behavior on color {
            ColorAnimation {
                duration: 800
                easing.type: Easing.OutElastic
            }
        }
    }
}
