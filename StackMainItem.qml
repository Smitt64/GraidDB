import QtQuick 2.0

Item {
    id: element
    property alias model: listView.model
    property var stackView
    width: parent.width
    height: parent.height

    ListView {
        id: listView
        clip: true
        anchors.bottom: button.top
        anchors.right: parent.right
        anchors.left: parent.left
        anchors.top: parent.top

        delegate: AndroidDelegate {
            text: title
            onClicked: stackView.push(Qt.resolvedUrl(page))
        }
    }

    DbButton {
        id: button
        y: 600
        height: 40
        text: "Добавить курс"
        anchors.left: parent.left
        anchors.leftMargin: 0
        anchors.right: parent.right
        anchors.bottom: parent.bottom
    }
}
