import QtQuick 2.15
import QtQuick.Controls 2.15

TextField {
    id: ctrl
    font.pixelSize: 14
    selectByMouse: true

    background: Rectangle {
        border.color: ctrl.activeFocus ? "dodgerblue" : "darkgrey"
        radius: 8
        implicitHeight: 32
    }

}
