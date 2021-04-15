import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts 1.15

Component {
    Rectangle {
        width: parent.width
        height: 48
        color: index % 2 ? "white" : "lightgrey"

        RowLayout {
            anchors.fill: parent
            anchors.margins: 8
            spacing: 16

            Text {
                text: "Surname Othername"
            }

            Text {
                text: "Install"
            }

            Text {
                text: "Balance"
            }

            Text {
                text: "Total Install"
            }

            Text {
                text: "Last payment date"
            }

        }
    }
}
