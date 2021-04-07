import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts 1.15

Component {

    ColumnLayout {

        spacing: 0

        Rectangle {
            Layout.fillWidth: true
            Layout.preferredHeight: 52

            Row {
                anchors {
                    fill: parent
                    topMargin: 16
                    bottomMargin: 12
                }


                Rectangle {
                    width: parent.width
                    height: 26
                    color: "dodgerblue"

                    Row {
                        anchors {
                            fill: parent
                            topMargin: 4
                        }

                        Text {
                            text: "Q"
                        }

                        TextField {
                            placeholderText: "Search"
                        }

                    }

                }

            }

            Rectangle {//border
                anchors.bottom: parent.bottom
                width: parent.width
                height: 1
                color: "lightgrey"
            }

        }

        Rectangle {
            Layout.fillWidth: true
            Layout.fillHeight: true
        }

    }

}
