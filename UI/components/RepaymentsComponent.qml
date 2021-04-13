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
                    margins: 36
                    topMargin: 16
                    bottomMargin: 12
                }


                Rectangle {
                    width: 400
                    height: 26

                    RowLayout {
                        anchors.fill: parent
                        spacing: 0
                        Text {
                            text: '\uE721'
                            font.family: segoe_font.name
                            font.pixelSize: 16
                            color: "darkgrey"
                        }

                        TextField {
                            Layout.fillWidth: true
                            Layout.fillHeight: true
                            placeholderText: "Search"

                            background: Rectangle {
                                implicitWidth: 128
                                implicitHeight: 24
                                color: "transparent"
                            }

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
