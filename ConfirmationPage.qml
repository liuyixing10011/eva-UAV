import QtQuick 2.0
import QtQuick.Controls 1.3
import QtQuick.Layouts 1.1

Rectangle {
    width: parent? parent.width : 500
    height: parent? parent.width : 800
    visible: true

    Text {
        id: orderconfirmationWindowtitle
        anchors.horizontalCenter: parent.horizontalCenter
        y: 50
        text: "PLEASE CONFIRM ORDER INFORMATION"
        font.family: "Avenir"
        font.letterSpacing: 2
    }

    Text {
        anchors.left: parent.Center
        x: 75
        y: 140
        width: 200
        text: "ADDRESS"
        wrapMode: Text.WordWrap
        font.family: "Avenir"
        font.letterSpacing: 2
    }

    Button {
        id: editaddressButton
        x: 345
        y: 140
        width: 80
        text: "Edit"
        onClicked:{
            payment_page.visible = false
            address_page.visible = true
        }
    }

    Text {
        id: displayaddress
        anchors.left: parent.Center
        x: 75
        y: 160
        width: 350
        text: currentcustomername.text + '<br>' + currentcustomerstreet.text + '<br>' + currentcustomercity.text  + ", " + currentcustomerstate.text + "  "+ currentcustomerzipcode.text
        wrapMode: Text.WordWrap
        font.family: "Avenir"
        font.letterSpacing: 2
    }

    Text {
        anchors.left: parent.Center
        x: 75
        y: 240
        width: 200
        text: "ITEMS ORDERED"
        wrapMode: Text.WordWrap
        font.family: "Avenir"
        font.letterSpacing: 2
    }

    Text {
        anchors.left: parent.Center
        x: 75
        y: 280
        width: 350
        text: itemname1.text + '<br>' + "Unit Price: " + itemprice1.text + '<br>' + "Quantity: "+ quantity1.text
        wrapMode: Text.WordWrap
        font.family: "Avenir"
        font.letterSpacing: 2
    }

    Text {
        anchors.left: parent.Center
        x: 75
        y: 350
        width: 350
        text: itemname2.text + '<br>' + "Unit Price: " + itemprice2.text + '<br>' + "Quantity: "+ quantity2.text
        wrapMode: Text.WordWrap
        font.family: "Avenir"
        font.letterSpacing: 2
    }

    Text {
        anchors.left: parent.Center
        x: 75
        y: 420
        width: 350
        text: itemname3.text + '<br>' + "Unit Price: " + itemprice3.text + '<br>' + "Quantity: "+ quantity3.text
        wrapMode: Text.WordWrap
        font.family: "Avenir"
        font.letterSpacing: 2
    }

    Text {
        anchors.left: parent.Center
        x: 75
        y: 490
        width: 350
        text: itemname4.text + '<br>' + "Unit Price: " + itemprice4.text + '<br>' + "Quantity: "+ quantity4.text
        wrapMode: Text.WordWrap
        font.family: "Avenir"
        font.letterSpacing: 2
    }

    Button {
        id: editorderButton
        x: 345
        y: 240
        width: 80
        text: "Edit"
        onClicked:
           page.state = "availableitemsstate"
    }

    Text {
        anchors.left: parent.Center
        x: 75
        y: 610
        width: 200
        text: "TOTAL:"
        font.family: "Avenir"
        font.letterSpacing: 2
    }

    Text {
        anchors.left: parent.Center
        x: 220
        y: 610
        width: 200
        text: "$" + totalprice.text
        wrapMode: Text.WordWrap
        font.family: "Avenir"
        font.letterSpacing: 2
    }

    Text {
        anchors.left: parent.Center
        x: 75
        y: 630
        width: 200
        text: "TAX:"
        wrapMode: Text.WordWrap
        font.family: "Avenir"
        font.letterSpacing: 2
    }

    Text {
        anchors.left: parent.Center
        x: 220
        y: 630
        width: 200
        text: "$" + (totalprice.text*0.18).toFixed(2)
        wrapMode: Text.WordWrap
        font.family: "Avenir"
        font.letterSpacing: 2
    }

    Text {
        anchors.left: parent.Center
        x: 75
        y: 650
        width: 200
        text: "SHIPPING:"
        wrapMode: Text.WordWrap
        font.family: "Avenir"
        font.letterSpacing: 2
    }

    Text {
        id: shippingfee
        x: 220
        y: 650
        width: 200
        text: "$" + "4.00"
        wrapMode: Text.WordWrap
        font.family: "Avenir"
        font.letterSpacing: 2
    }

    Text {
        anchors.left: parent.Center
        x: 75
        y: 670
        width: 200
        text: "GRAND TOTAL:"
        wrapMode: Text.WordWrap
        font.family: "Avenir"
        font.letterSpacing: 2
    }

    Text {
        x: 220
        y: 670
        width: 200
        text: "$" + (totalprice.text*1.08 + 4.0).toFixed(2)
        wrapMode: Text.WordWrap
        font.family: "Avenir"
        font.letterSpacing: 2
    }

    Button {
        id: orderconfirmationButton
        anchors.horizontalCenter: parent.horizontalCenter
        y: 720
        width: 150
        text: "Place order now"
        onClicked:
           page.state = "customertrackorderwindowstate"
    }
}

