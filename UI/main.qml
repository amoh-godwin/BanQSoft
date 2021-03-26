import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts 1.15
import './customs' as Cust

ApplicationWindow {
    visible: true
    width: 920
    height: 657
    title: "BanQSoft"

    property string currsSideNav: "Dashboard"

    header: Rectangle {
        width: parent.width
        height: 1
        color: "teal"
    }

    Drawer {
        id: sidenavCont
        width: parent.width / 5
        height: parent.height
        modal: false
        position: 1
        interactive: false
        visible: true

        ColumnLayout {
            anchors {
                top: parent.top
                right: parent.right
                left: parent.left
                margins: 24
                topMargin: 20
            }
            spacing: 68

            Rectangle {
                Layout.fillWidth: true
                Layout.preferredHeight: 24
                //color:"dodgerblue"

                Text {
                    text: "BanQSoft"
                    color: "pink"
                    font.pixelSize: 18
                }

            }

            ToolBar {
                ColumnLayout {
                    anchors.fill: parent

                    Cust.CustomToolButton {
                        text: qsTr("Dashboard")
                    }

                    Cust.CustomToolButton {
                        text: qsTr("Deposits")
                    }

                    Cust.CustomToolButton {
                        text: qsTr("Loans")
                    }

                    Cust.CustomToolButton {
                        text: qsTr("Daily contributions")
                    }

                    Cust.CustomToolButton {
                        text: qsTr("Clients")
                    }

                    Cust.CustomToolButton {
                        text: qsTr("Settings")
                    }

                }

                background: Rectangle {
                    //
                }
            }

        }


        background: Rectangle {
            anchors.right: parent.right
            width: 1
            height: parent.height
            color: "lightgrey"
        }

    }

    Rectangle {
        x: sidenavCont.width
        width: parent.width - sidenavCont.width
        height: parent.height

    }



}
