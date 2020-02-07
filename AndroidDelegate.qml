import QtQuick 2.2

Item {
    id: root
    width: parent.width
    height: 44

    property alias text: textitem.text
    signal clicked

    Rectangle {
        anchors.fill: parent
        color: "#E3DFD4"
        visible: mouse.pressed
    }

    Text {
        id: textitem
        color: "black"
        font.pixelSize: 22
        text: modelData
        anchors.verticalCenter: parent.verticalCenter
        anchors.left: parent.left
        anchors.leftMargin: 30
    }

    Rectangle {
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.margins: 15
        height: 1
        color: "#424246"
    }

    Image {
        width: height
        anchors.rightMargin: 20
        anchors.top: parent.top
        anchors.bottom: parent.bottom
        anchors.right: parent.right
        source: "../images/navigation_next_item.png"
        fillMode: Image.Stretch
    }

    MouseArea {
        id: mouse
        anchors.fill: parent
        onClicked: root.clicked()
    }
}
