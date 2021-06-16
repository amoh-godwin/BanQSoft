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

            Rectangle {
                Layout.preferredWidth: acc_id_cont.width
                Layout.fillWidth: true
                Layout.fillHeight: true
                color: "transparent"
                visible: acc_id_cont.visible

                Text {
                    width: parent.width
                    height: parent.height
                    verticalAlignment: Text.AlignVCenter
                    elide: Text.ElideMiddle
                    text: account_no
                }
            }

            Rectangle {
                Layout.preferredWidth: name_cont.width
                Layout.fillWidth: true
                Layout.fillHeight: true
                color: "transparent"
                visible: name_cont.visible

                Text {
                    width: parent.width
                    height: parent.height
                    verticalAlignment: Text.AlignVCenter
                    elide: Text.ElideMiddle
                    text: fullname
                }
            }

            Rectangle {
                Layout.preferredWidth: deposit_cont.width
                Layout.fillWidth: true
                Layout.fillHeight: true
                color: "transparent"
                visible: deposit_cont.visible

                Text {
                    width: parent.width
                    height: parent.height
                    verticalAlignment: Text.AlignVCenter
                    elide: Text.ElideMiddle
                    text: deposit
                }
            }

            Rectangle {
                Layout.preferredWidth: inst_cont.width
                Layout.fillWidth: true
                Layout.fillHeight: true
                color: "transparent"
                visible: inst_cont.visible

                Text {
                    width: parent.width
                    height: parent.height
                    verticalAlignment: Text.AlignVCenter
                    elide: Text.ElideMiddle
                    text: installments
                }
            }


            Rectangle {
                Layout.preferredWidth: withdraw_cont.width
                Layout.fillWidth: true
                Layout.fillHeight: true
                color: "transparent"
                visible: withdraw_cont.visible

                Text {
                    width: parent.width
                    height: parent.height
                    verticalAlignment: Text.AlignVCenter
                    elide: Text.ElideMiddle
                    text: withdrawal
                }
            }

            Rectangle {
                Layout.preferredWidth: l_pays_cont.width
                Layout.fillWidth: true
                Layout.fillHeight: true
                color: "transparent"
                visible: l_pays_cont.visible

                Text {
                    width: parent.width
                    height: parent.height
                    verticalAlignment: Text.AlignVCenter
                    elide: Text.ElideMiddle
                    text: payment_date
                }
            }


        }
    }
}
