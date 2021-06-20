import QtQuick 2.15
import QtQuick.Controls 2.15

Button {
    id: ctrl

    property color color: accent

    background: Rectangle {
        implicitWidth: 128
        implicitHeight: 24
        color: ctrl.pressed? Qt.darker(ctrl.color) : ctrl.color
    }

    contentItem: Text {
        text: ctrl.text
        font: ctrl.font
        verticalAlignment: Text.AlignVCenter
        horizontalAlignment: Text.AlignHCenter
        color: "white"
    }

}
