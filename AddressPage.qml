import QtQuick 2.0
import QtQuick.Controls 1.3
import QtQuick.Layouts 1.1

Rectangle {
    width: parent? parent.width : 500
    height: parent? parent.height : 800
    visible: true

    // CORNER LOGO
    Image {
        visible: true
        x: 430
        y: 730
        width: 50
        height: 50
        source: "qrc:/images/logo.png"
        asynchronous : true
    }

    Text {
        id: checkoutaddressWindowtitle
        anchors.horizontalCenter: parent.horizontalCenter
        y: 100
        text: "PLEASE ENTER YOUR SHIPPING INFORMATION"
        font.family: "Avenir"
        font.letterSpacing: 2
    }

    TextField {
        id: currentcustomername
        anchors.horizontalCenter: parent.horizontalCenter
        y: 160
        width: 350
        height: 40
        placeholderText: qsTr("Name")
    }

    TextField {
        id: currentcustomerstreet
        anchors.horizontalCenter: parent.horizontalCenter
        y: 230
        width: 350
        height: 40
        placeholderText: qsTr("Street")
    }

    TextField {
        id: currentcustomercity
        anchors.horizontalCenter: parent.horizontalCenter
        x: 75
        y: 300
        width: 350
        height: 40
        placeholderText: qsTr("City")
    }

    TextField {
        id: currentcustomerstate
        anchors.horizontalCenter: parent.horizontalCenter
        x: 75
        y: 370
        width: 180
        height: 40
        placeholderText: qsTr("State")
    }

    TextField {
        id: currentcustomerzipcode
        maximumLength: 5
        x: 275
        y: 370
        width: 150
        height: 40
        placeholderText: qsTr("Zip Code")
    }

    ComboBox {
        id: currentcustomercountry
        anchors.horizontalCenter: parent.horizontalCenter
        y: 440
        width: 350
        height: 40
        transformOrigin: Item.Center
        opacity: 0.9
        clip: false
        visible: true
        model: [ "United States of America", "Hong Kong"]
    }

    TextField {
        id: currentcustomeremail
        anchors.horizontalCenter: parent.horizontalCenter
        y: 510
        width: 350
        height: 40
        placeholderText: qsTr("Email")
    }

    TextField {
        id: currentcustomerphone
        anchors.horizontalCenter: parent.horizontalCenter
        maximumLength: 11
        y: 580
        width: 350
        height: 40
        placeholderText: qsTr("Phone Number")
    }

    Button {
        id: submitaddressButton
        anchors.horizontalCenter: parent.horizontalCenter
        y: 650
        width: 100
        text: "Submit"
        onClicked: {
            address_page.visible = false;
            payment_page.visible = true;
            address_page_handler.setName("a")
        }

    }

    Button {
        id: backButton3
        anchors.horizontalCenter: parent.horizontalCenter
        y: 800
        width: 100
        text: "Back"
        onClicked:{
            address_page.visible = false;
            menu_page.visible = true;
        }

    }
}
