import QtQuick 2.0
import QtQuick.Controls 1.3
import HKUST 1.0

Rectangle {
    width: parent? parent.width : 500
    height: parent? parent.height : 800
    visible: true

    Image {
        id: logo
        visible: true
        anchors.horizontalCenter: parent.horizontalCenter
        y: 200
        width: 150
        height: 150
        source: "qrc:/images/logo.png"
        asynchronous : true
    }

    Button {
        anchors.horizontalCenter: parent.horizontalCenter
        y: 400
        width: 150
        id: vendorButton
        text: "Vendor Login"
        onClicked: console.log("Vendor clicked")

    }

    Button {
        anchors.horizontalCenter: parent.horizontalCenter
        y: 450
        width: 150
        id: customerButton
        text: "Place an Order"
        onClicked:{
            opening_page.visible = false
            menu_page.visible = true
        }
    }
}
