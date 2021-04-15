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
                            id: acc_id_cont
                            Layout.preferredWidth: 53
                            Layout.fillWidth: true
                            Layout.fillHeight: true
                            color: "transparent"
                            //visible: false

                            Text {
                                width: parent.width
                                height: parent.height
                                verticalAlignment: Text.AlignVCenter
                                elide: Text.ElideMiddle
                                font.family: "Segoe UI Semibold"
                                renderType: Text.NativeRendering
                                text: "Account ID"
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
                            id: bal_cont
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
                                text: "Balance"
                            }
                        }

                        Rectangle {
                            id: t_inst_cont
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
                                text: "Total Installments"
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

                        Rectangle {
                            id: due_cont
                            Layout.preferredWidth: 72
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
                                text: "Next due date"
                            }
                        }

                        Rectangle {
                            id: dura_cont
                            Layout.preferredWidth: 88
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
                                text: "Payment Duration"
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
                        model: RepaymentsBaseModel {}
                        delegate: ViewDelegate {}
                    }

                }

            }

        }

    }

}
