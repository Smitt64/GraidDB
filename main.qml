import QtQuick 2.14
import QtQuick.Window 2.14
import QtQuick.Controls 1.4

ApplicationWindow {
    visible: true
    width: 640
    height: 480
    title: qsTr("Hello World")

    Rectangle {
        color: "#EFEFEF"
        anchors.fill: parent
    }

    toolBar: BorderImage {
        border.bottom: 8
        source: "images/toolbar.png"
        width: parent.width
        height: 50

        Rectangle {
            id: backButton
            width: opacity ? 30 : 0
            anchors.left: parent.left
            anchors.leftMargin: 20
            opacity: stackView.depth > 1 ? 1 : 0
            anchors.verticalCenter: parent.verticalCenter
            antialiasing: true
            height: 30
            radius: 4
            color: backmouse.pressed ? "#AEA085" : "transparent"
            Behavior on opacity { NumberAnimation{} }
            Image {
                anchors.fill: parent
                fillMode: Image.Stretch
                source: "images/navigation_previous_item.png"
            }
            MouseArea {
                id: backmouse
                anchors.fill: parent
                anchors.margins: -10
                onClicked: stackView.pop()
            }
        }

        Text {
            font.pixelSize: 21
            font.bold: true
            Behavior on x { NumberAnimation{ easing.type: Easing.OutCubic} }
            x: backButton.x + backButton.width + 10
            anchors.verticalCenter: parent.verticalCenter
            color: "#006B73"
            text: "Курсы"
        }
    }

    ListModel {
        id: pageModel
        ListElement {
            title: "Element1"
            page: "content/Element1.qml"
        }
        ListElement {
            title: "Element2"
            page: "content/Element2.qml"
        }
        ListElement {
            title: "Element3"
            page: "content/Element3.qml"
        }
        ListElement {
            title: "Element4"
            page: "content/Element4.qml"
        }
        ListElement {
            title: "Element5"
            page: "content/Element5.qml"
        }
        ListElement {
            title: "Element6"
            page: "content/Element6.qml"
        }
    }

    StackView {
        id: stackView
        anchors.fill: parent
        // Implements back key navigation
        focus: true
        Keys.onReleased: {
            if (event.key === Qt.Key_Back && stackView.depth > 1) {
                stackView.pop();
                event.accepted = true;
            }
        }

        initialItem: StackMainItem {
            model: pageModel
            stackView: stackView
        }
    }
}
