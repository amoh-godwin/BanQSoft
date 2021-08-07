import QtQuick 2.15

Component {

    Rectangle {

        width: combo_pop.width
        height: 36
        color: index % 2 ? "white" : "lightgrey"

        Text {
            padding: 4
            anchors.verticalCenter: parent.verticalCenter
            text: name
            font.pixelSize: 13
        }

    }

}
