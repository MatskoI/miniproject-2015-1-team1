import QtQuick 2.4

Item{
    id: root
    property string text
    property real textWidth: rootTxt.width
    property real textHeight: rootTxt.height
    signal btnClicked()
    Text {
        id: rootTxt
        text: qsTr(root.text)
        color: "white"
        font.family: "pacfont"
        font.pixelSize: 20
        MouseArea {
            hoverEnabled: true
            anchors.fill: parent
            onContainsMouseChanged: {
                if (containsMouse) {
                    rootTxt.color = "green"
                    rootTxt.font.pixelSize = 30
                } else {
                    rootTxt.color = "white"
                    rootTxt.font.pixelSize = 20
                }
            }
            onClicked: {
                btnClicked()
            }
        }
    }
}

