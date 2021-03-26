import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts 1.15

ToolButton {
    id: tbtn
    text: ""
    Layout.fillWidth: parent

    background: Rectangle {
        implicitWidth: 128
        implicitHeight: 28
        color: "transparent"
    }

    contentItem: Text {
        leftPadding: -6
        text: tbtn.text
        font: tbtn.font
        verticalAlignment: Text.AlignHCenter
        horizontalAlignment: Text.AlignLeft
    }

}
