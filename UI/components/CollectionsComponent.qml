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
                    text: "Daily Collections | Ampofo"
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
                visible: false
                padding: 0
                focus: true
                closePolicy: Popup.CloseOnEscape
                modal: true
                z: 2

                background: Rectangle {
                    //
                }

                ColumnLayout {
                    anchors.fill: parent
                    anchors.margins: 12
                    spacing: 24

                    Text {
                        text: "Add new Entry"
                        font.pixelSize: 20
                        Layout.bottomMargin: 16
                    }


                    RowLayout {
                        Layout.fillWidth: true
                        Layout.preferredHeight: 28
                        spacing: 12

                        Text {
                            Layout.preferredWidth: 128
                            text: 'Account no.'
                        }

                        Cust.CustTextField {
                            Layout.fillWidth: true
                        }

                    }

                    RowLayout {
                        id: combo_cont
                        Layout.fillWidth: true
                        Layout.preferredHeight: 28
                        spacing: 12

                        Text {
                            Layout.preferredWidth: 128
                            text: 'Name'
                        }

                        Cust.CustTextField {
                            id: cust_combo
                            Layout.fillWidth: true
                            Layout.preferredHeight: 32
                            //model: collections_names

                            onTextChanged: {
                                combo_pop.visible = true
                                combo_pop.changed(this.text)
                            }

                            onEditingFinished: {
                                combo_pop.accepted()
                            }


                        }

                    }

                    RowLayout {
                        Layout.fillWidth: true
                        Layout.preferredHeight: 28
                        spacing: 12

                        Text {
                            Layout.preferredWidth: 128
                            text: 'Deposit'
                        }

                        Cust.CustTextField {
                            Layout.fillWidth: true
                        }

                    }

                    RowLayout {
                        Layout.fillWidth: true
                        Layout.preferredHeight: 28
                        spacing: 12

                        Text {
                            Layout.preferredWidth: 128
                            text: 'Installments'
                        }

                        Cust.CustTextField {
                            Layout.fillWidth: true
                        }

                    }

                    RowLayout {
                        Layout.fillWidth: true
                        Layout.preferredHeight: 28
                        spacing: 12

                        Text {
                            Layout.preferredWidth: 128
                            text: 'Withdrawal'
                        }

                        Cust.CustTextField {
                            Layout.fillWidth: true
                        }

                    }


                    Rectangle {
                        Layout.fillHeight: true
                        color: "transparent"


                    }

                    RowLayout {
                        Layout.alignment: Qt.AlignRight
                        Layout.preferredHeight: 36

                        Cust.CustButton {
                            text: "Save and Add new"
                        }

                        Cust.CustButton {
                            text: "Save and Exit"
                            color: "gold"
                        }

                        Cust.CustButton {
                            text: "Cancel"
                            color: "tomato"

                            onClicked: pop.close()

                        }

                    }


                }

                Popup {
                    id: combo_pop
                    width: cust_combo.width
                    height: 200
                    visible: false
                    //modal: false
                    //color: "dodgerblue"
                    z: 120
                    x: cust_combo.x + 12
                    y: combo_cont.y + cust_combo.height + 12

                    signal changed(string u_text)
                    signal accepted()

                    Text {
                        text: cust_combo.height
                        color: "white"
                    }

                    onChanged: {
                        backend.get_names(u_text)
                    }

                    onAccepted: {
                        this.visible = false
                        console.log(0)
                    }
                }

            }

        }

    }

}
