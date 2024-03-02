import QtQuick
import "sudoku.js" as SudokuEngine

Rectangle {
    id: sudokutable
    required property int totalWidth
    required property int totalHeight
    width: totalWidth
    height: totalHeight

    function updateData(data){
        grid.model = data
    }

    function setColor(x, color){
        grid.contentItem.children[x].color = color
    }

    function wrong(x){
        grid.contentItem.children[x].wrong()
    }

    GridView {
        id: grid
        interactive: false
        anchors.fill: parent
        cellWidth: sudokutable.width/9
        cellHeight: sudokutable.width/9
        model: []

        delegate: Rectangle {
            id: deleg
            width: grid.cellWidth
            height: grid.cellHeight
            color: "white"

            function wrong(){
                anim.running = true
            }

            SequentialAnimation {
                id: anim
                PropertyAnimation {
                    easing.type: Easing.OutCubic
                    target: deleg
                    property: "color"
                    to: "#DC143C"
                    duration: 100

                }
                PropertyAnimation {
                    easing.type: Easing.OutCubic
                    target: deleg
                    property: "color"
                    to: deleg.color
                    duration: 100
                }
            }

            MouseArea {
                anchors.fill: parent
                onClicked: {
                    SudokuEngine.setSelected(model.row)
                    SudokuEngine.updateSelectTable(sudokutable)
                }
            }

            Rectangle {
                height: (Math.floor(model.row/9) == 0 || Math.floor(model.row/9) == 3 || Math.floor(model.row/9) == 6) ? 4 : 1
                color: "#344861"
                anchors.top: parent.top
                anchors.left: parent.left
                anchors.right: parent.right
            }
            Rectangle {
                width: (model.row%9 == 0 || model.row%9 == 3 || model.row%9 == 6) ? 4 : 1
                color: "#344861"
                anchors.top: parent.top
                anchors.left: parent.left
                anchors.bottom: parent.bottom
            }
            Text {
                text: modelData
                color: "#344861"
                font.pixelSize: 32
                anchors.centerIn: parent
            }
            Rectangle {
                height: (Math.floor(model.row/9) == 8) ? 4 : 0
                color: "#344861"
                anchors.bottom: parent.bottom
                anchors.left: parent.left
                anchors.right: parent.right
            }
            Rectangle {
                width: (model.row%9 == 8) ? 4 : 0
                color: "#344861"
                anchors.top: parent.top
                anchors.right: parent.right
                anchors.bottom: parent.bottom
            }
        }
    }
}
