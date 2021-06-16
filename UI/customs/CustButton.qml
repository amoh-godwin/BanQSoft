import QtQuick 2.15
import QtQuick.Controls 2.15

Button {
    id: ctrl

    background: Rectangle {
        implicitWidth: 128
        implicitHeight: 24
        color: ctrl.pressed? Qt.darker(accent) : accent
    }

    contentItem: Text {
        text: ctrl.text
        font: ctrl.font
        verticalAlignment: Text.AlignVCenter
        horizontalAlignment: Text.AlignHCenter
        color: "white"
    }

}
