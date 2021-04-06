import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts 1.15
import './customs' as Cust
import './components' as Comp

ApplicationWindow {
    visible: true
    width: 920
    height: 657
    title: "BanQSoft"

    property string currsSideNav: "Dashboard"
    property color accent: "#5F755F"

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

                        onClicked: {
                            currsSideNav = this.text
                        }

                    }

                    Cust.CustomToolButton {
                        text: qsTr("Deposits")

                        onClicked: {
                            currsSideNav = this.text
                        }

                    }

                    Cust.CustomToolButton {
                        text: qsTr("Loans")

                        onClicked: {
                            currsSideNav = this.text
                        }

                    }

                    Cust.CustomToolButton {
                        text: qsTr("Daily contributions")

                        onClicked: {
                            currsSideNav = this.text
                        }

                    }

                    Cust.CustomToolButton {
                        text: qsTr("Clients")

                        onClicked: {
                            currsSideNav = this.text
                        }

                    }

                    Cust.CustomToolButton {
                        text: qsTr("Settings")

                        onClicked: {
                            currsSideNav = this.text
                        }

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

        StackView {
            anchors.fill: parent
            initialItem: repayComp
        }

        Comp.RepaymentsComponent {id: repayComp}


    }



}
