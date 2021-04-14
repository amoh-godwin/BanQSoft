import QtQuick 2.15
import QtQuick.Controls 2.15

Component {
    Rectangle {
        width: parent.width
        height: 48
        color: index % 2 ? "white" : "lightgrey"
    }
}
