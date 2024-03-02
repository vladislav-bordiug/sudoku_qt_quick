import QtQuick
import QtQuick.Controls

Button {
    id: gamebuttonwithicon
    property color textColor: "#5a7bc0"
    required property string imagePath
    required property int sizeH
    required property int sizeW

    Image{
        id: img
        source: gamebuttonwithicon.imagePath
        width: Math.min(gamebuttonwithicon.sizeH,gamebuttonwithicon.sizeW)-25
        height: Math.min(gamebuttonwithicon.sizeH,gamebuttonwithicon.sizeW)-25
        horizontalAlignment: Image.AlignHCenter
        verticalAlignment: Image.AlignTop
        anchors.centerIn: parent
    }

    contentItem: Text {
        id: txt
        text: gamebuttonwithicon.text
        font.pixelSize: 14
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignBottom
        color: gamebuttonwithicon.textColor
        anchors.bottom: parent.bottom
    }

    background: Rectangle {
        color: gamebuttonwithicon.hovered ? (gamebuttonwithicon.pressed ? "#d2dae7" : "#dce3ed"): (gamebuttonwithicon.pressed ? "#d2dae7" : "#eaeef4")
        Behavior on color {
            ColorAnimation {
                duration: 800
                easing.type: Easing.OutElastic
            }
        }
    }
}
