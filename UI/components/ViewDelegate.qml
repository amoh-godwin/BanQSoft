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
                Layout.preferredWidth: 101
                Layout.fillHeight: true
                color: "transparent"
                visible: true

                Text {
                    width: parent.width
                    height: parent.height
                    verticalAlignment: Text.AlignVCenter
                    elide: Text.ElideMiddle
                    text: fullname
                }
            }

            Rectangle {
                Layout.preferredWidth: 53
                Layout.fillHeight: true
                color: "transparent"
                visible: true

                Text {
                    width: parent.width
                    height: parent.height
                    verticalAlignment: Text.AlignVCenter
                    elide: Text.ElideMiddle
                    text: account_id
                }
            }

            Rectangle {
                Layout.preferredWidth: 31
                Layout.fillHeight: true
                color: "transparent"
                visible: true

                Text {
                    width: parent.width
                    height: parent.height
                    verticalAlignment: Text.AlignVCenter
                    elide: Text.ElideMiddle
                    text: installments
                }
            }

            Rectangle {
                Layout.preferredWidth: 38
                Layout.fillHeight: true
                color: "transparent"
                visible: true

                Text {
                    width: parent.width
                    height: parent.height
                    verticalAlignment: Text.AlignVCenter
                    elide: Text.ElideMiddle
                    text: balance
                }
            }

            Rectangle {
                Layout.preferredWidth: 59
                Layout.fillHeight: true
                color: "transparent"
                visible: true

                Text {
                    width: parent.width
                    height: parent.height
                    verticalAlignment: Text.AlignVCenter
                    elide: Text.ElideMiddle
                    text: total_installments
                }
            }

            Rectangle {
                Layout.preferredWidth: 90
                Layout.fillHeight: true
                color: "transparent"
                visible: true

                Text {
                    width: parent.width
                    height: parent.height
                    verticalAlignment: Text.AlignVCenter
                    elide: Text.ElideMiddle
                    text: last_payment_date
                }
            }

            Rectangle {
                Layout.preferredWidth: 68
                Layout.fillHeight: true
                color: "transparent"
                visible: true

                Text {
                    width: parent.width
                    height: parent.height
                    verticalAlignment: Text.AlignVCenter
                    elide: Text.ElideMiddle
                    text: next_due_date
                }
            }

            Rectangle {
                Layout.preferredWidth: 100
                Layout.fillHeight: true
                color: "transparent"
                visible: true

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
