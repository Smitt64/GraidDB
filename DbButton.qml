import QtQuick 2.0

BorderImage {
    property alias text: element.text

    id: name
    source: backmouse.pressed ? "images/button_pressed.png" : "images/button_default.png"//"images/button_pressed.png"
    width: 100; height: 100
    border.left: 5; border.top: 5
    border.right: 5; border.bottom: 5

    MouseArea {
        id: backmouse
        anchors.fill: parent
        anchors.margins: -10

        Text {
            id: element
            x: 36
            y: 20
            color: "black"
            text: qsTr("Text")
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.verticalCenter: parent.verticalCenter
            font.pixelSize: 22
        }
    }
}
