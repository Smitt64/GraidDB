import QtQuick 2.0

Item {
    height: 240

    Row {
        id: row
        anchors.fill: parent
    }

    Text {
        id: element
        x: 8
        y: 8
        text: qsTr("Text")
        font.pixelSize: 13
        font.family: "Arial"
    }

}

/*##^##
Designer {
    D{i:1;anchors_height:400;anchors_width:200;anchors_x:42;anchors_y:8}
}
##^##*/
