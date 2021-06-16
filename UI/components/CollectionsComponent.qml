import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts 1.15
import '../customs' as Cust

Component {

    ColumnLayout {

        spacing: 0

        Rectangle {
            Layout.fillWidth: true
            Layout.preferredHeight: 52

            RowLayout {
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

                Cust.CustButton {
                    Layout.alignment: Qt.AlignRight
                    text: "Add"

                    onClicked: pop.open()

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
                    color: accent
                }

                Rectangle {//header
                    Layout.fillWidth: true
                    Layout.preferredHeight: 48
                    Layout.rightMargin: 24

                    Rectangle {
                        anchors.top: parent.top
                        width: parent.width
                        height: 1
                        color: "lightgrey"
                    }

                    Rectangle {
                        anchors.bottom: parent.bottom
                        width: parent.width
                        height: 1
                        color: "lightgrey"
                    }

                    RowLayout {
                        anchors.fill: parent
                        anchors.margins: 8
                        spacing: 16

                        Rectangle {
                            id: acc_id_cont
                            Layout.preferredWidth: 53
                            Layout.fillWidth: true
                            Layout.fillHeight: true
                            color: "transparent"
                            visible: true

                            Text {
                                width: parent.width
                                height: parent.height
                                verticalAlignment: Text.AlignVCenter
                                elide: Text.ElideMiddle
                                font.family: "Segoe UI Semibold"
                                renderType: Text.NativeRendering
                                text: "Account No."
                            }
                        }

                        Rectangle {
                            id: name_cont
                            Layout.preferredWidth: 100
                            Layout.fillWidth: true
                            Layout.fillHeight: true
                            color: "transparent"
                            visible: true

                            Text {
                                width: parent.width
                                height: parent.height
                                verticalAlignment: Text.AlignVCenter
                                elide: Text.ElideMiddle
                                font.family: "Segoe UI Semibold"
                                renderType: Text.NativeRendering
                                text: "Name"
                            }
                        }

                        Rectangle {
                            id: deposit_cont
                            Layout.preferredWidth: 38
                            Layout.fillWidth: true
                            Layout.fillHeight: true
                            color: "transparent"
                            visible: true

                            Text {
                                width: parent.width
                                height: parent.height
                                verticalAlignment: Text.AlignVCenter
                                elide: Text.ElideMiddle
                                font.family: "Segoe UI Semibold"
                                renderType: Text.NativeRendering
                                text: "Deposit"
                            }
                        }

                        Rectangle {
                            id: inst_cont
                            Layout.preferredWidth: 42
                            Layout.fillWidth: true
                            Layout.fillHeight: true
                            color: "transparent"
                            visible: true

                            Text {
                                width: parent.width
                                height: parent.height
                                verticalAlignment: Text.AlignVCenter
                                elide: Text.ElideRight
                                font.family: "Segoe UI Semibold"
                                renderType: Text.NativeRendering
                                text: "Installments"
                            }
                        }

                        Rectangle {
                            id: withdraw_cont
                            Layout.preferredWidth: 60
                            Layout.fillWidth: true
                            Layout.fillHeight: true
                            color: "transparent"
                            visible: true

                            Text {
                                width: parent.width
                                height: parent.height
                                verticalAlignment: Text.AlignVCenter
                                elide: Text.ElideRight
                                font.family: "Segoe UI Semibold"
                                renderType: Text.NativeRendering
                                text: "Withdrawals"
                            }
                        }

                        Rectangle {
                            id: l_pays_cont
                            Layout.preferredWidth: 90
                            Layout.fillWidth: true
                            Layout.fillHeight: true
                            color: "transparent"
                            visible: true

                            Text {
                                width: parent.width
                                height: parent.height
                                verticalAlignment: Text.AlignVCenter
                                elide: Text.ElideMiddle
                                font.family: "Segoe UI Semibold"
                                renderType: Text.NativeRendering
                                text: "Last payment date"
                            }
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
                        model: CollectionsBaseModel {}
                        delegate: CollectionsDelegate {}
                    }

                }

            }


            Popup {
                id: pop
                anchors.centerIn: parent
                width: parent.width - 128
                height: parent.height - 128
                visible: true
                padding: 0
                //modal: true

                Rectangle {
                    anchors.fill: parent
                    color: "dodgerblue"
                }

            }

        }

    }

}
