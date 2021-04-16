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
                    text: account_id
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
                Layout.preferredWidth: bal_cont.width
                Layout.fillWidth: true
                Layout.fillHeight: true
                color: "transparent"
                visible: bal_cont.visible

                Text {
                    width: parent.width
                    height: parent.height
                    verticalAlignment: Text.AlignVCenter
                    elide: Text.ElideMiddle
                    text: balance
                }
            }

            Rectangle {
                Layout.preferredWidth: t_inst_cont.width
                Layout.fillWidth: true
                Layout.fillHeight: true
                color: "transparent"
                visible: t_inst_cont.visible

                Text {
                    width: parent.width
                    height: parent.height
                    verticalAlignment: Text.AlignVCenter
                    elide: Text.ElideMiddle
                    text: total_installments
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
                    text: last_payment_date
                }
            }

            Rectangle {
                Layout.preferredWidth: due_cont.width
                Layout.fillWidth: true
                Layout.fillHeight: true
                color: "transparent"
                visible: due_cont.visible

                Text {
                    width: parent.width
                    height: parent.height
                    verticalAlignment: Text.AlignVCenter
                    elide: Text.ElideMiddle
                    text: next_due_date
                }
            }

            Rectangle {
                Layout.preferredWidth: dura_cont.width
                Layout.fillWidth: true
                Layout.fillHeight: true
                color: "transparent"
                visible: dura_cont.visible

                Text {
                    width: parent.width
                    height: parent.height
                    verticalAlignment: Text.AlignVCenter
                    elide: Text.ElideMiddle
                    text: duration_of_payment
                }
            }

        }
    }
}
