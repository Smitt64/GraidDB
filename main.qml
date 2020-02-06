import QtQuick 2.14
import QtQuick.Window 2.14
import QtQuick.Controls 1.4

ApplicationWindow {
    visible: true
    width: 640
    height: 480
    title: qsTr("Hello World")

    Rectangle {
        color: "#212126"
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
            //opacity: stackView.depth > 1 ? 1 : 0
            anchors.verticalCenter: parent.verticalCenter
            antialiasing: true
            height: 30
            radius: 4
            color: backmouse.pressed ? "#222" : "transparent"
            Behavior on opacity { NumberAnimation{} }
            Image {
                anchors.fill: parent
                fillMode: Image.Stretch
                //anchors.verticalCenter: parent.verticalCenter
                source: "images/navigation_previous_item.png"
            }
            MouseArea {
                id: backmouse
                anchors.fill: parent
                anchors.margins: -10
                //onClicked: stackView.pop()
            }
        }

        Text {
            font.pixelSize: 21
            Behavior on x { NumberAnimation{ easing.type: Easing.OutCubic} }
            x: backButton.x + backButton.width + 10
            anchors.verticalCenter: parent.verticalCenter
            color: "white"
            text: "Курсы"
        }
    }

    /*StackView {
        id: mainView
        anchors.fill: parent
        delegate: StackViewDelegate {
            function transitionFinished(properties)
            {
                properties.exitItem.x = 0
                properties.exitItem.rotation = 0
            }

            pushTransition: StackViewTransition {
                SequentialAnimation {
                    ScriptAction {
                        script: enterItem.rotation = 90
                    }
                    PropertyAnimation {
                        target: enterItem
                        property: "x"
                        from: enterItem.width
                        to: 0
                    }
                    PropertyAnimation {
                        target: enterItem
                        property: "rotation"
                        from: 90
                        to: 0
                    }
                }
                PropertyAnimation {
                    target: exitItem
                    property: "x"
                    from: 0
                    to: -exitItem.width
                }
            }
        }
    }

    Component.onCompleted: {
        var newObject = Qt.createQmlObject('import QtQuick 2.0; Rectangle {color: "red"; width: 20; height: 20}',
                                           mainView.parent,
                                           "dynamicSnippet1");
        mainView.push(newObject)
    }*/
}
