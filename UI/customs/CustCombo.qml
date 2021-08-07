import QtQuick 2.15
import QtQuick.Controls 2.15

TextField {

    property Item hintbox

    //editable: true
    //model: ['love']
    //popup.z: 18
    //popup.visible: acceptableInput

    //focus: true
    Keys.onPressed: {
        combo_pop.visible = true
        //popup.focus = false
        //Keys.forwardTo = [contentItem]
        event.accepted = false
    }//*/

}
