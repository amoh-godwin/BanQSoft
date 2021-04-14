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

                SearchComponent {
                    width: 400
                    height: 26
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

            ColumnLayout {
                anchors.fill: parent
                anchors.leftMargin: 24
                anchors.topMargin: 24
                spacing: 8

                Text {
                    text: "Repayments"
                    font.pixelSize: 24
                    Layout.rightMargin: 24
                }

                Rectangle {//header
                    Layout.fillWidth: true
                    Layout.preferredHeight: 48
                    Layout.rightMargin: 24
                    border.color: "darkgrey"

                    RowLayout {
                        anchors.fill: parent
                        anchors.margins: 8
                        spacing: 16

                        Text {
                            text: "Surname Othername"
                        }

                    }

                }

                ScrollView {
                    Layout.fillWidth: true
                    Layout.fillHeight: true
                    clip: true

                    ListView {
                        anchors.fill: parent
                        anchors.rightMargin: 24
                        model: RepaymentsBaseModel {}
                        delegate: ViewDelegate {}
                    }

                }

            }

        }

    }

}
