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
        anchors.horizontalCenter: parent.horizontalCenter
        y: 50
        text: "AVAILABLE ITEMS"
        font.family: "Avenir"
        font.letterSpacing: 2
    }

    Rectangle {
        id: item1
        anchors.horizontalCenter: parent.horizontalCenter
        y: 100
        width: 400
        height: 70
        color: "#ffffff"
        border.color: "#c383a4"
        Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
        Layout.fillWidth: true

        TextField {
            id: quantity1
            x: 320
            y: 25
            width: 60
            validator: IntValidator {bottom: 0; top: 9;}
            placeholderText: qsTr("0")
            inputMethodHints: Qt.ImhFormattedNumbersOnly
        }

        Text {
            id: itemname1
            x: 19
            y: 14
            text: qsTr("Water Balloon")
            style: Text.Normal
            font.family: "Avenir"
            font.pixelSize: 12
        }

        Text {
            id: itemweight1
            x: 19
            y: 35
            width: 84
            height: 15
            text: qsTr("100")
            font.family: "Avenir"
            font.pixelSize: 12
        }

        Text {
            id: dollarsign1
            x: 124
            y: 14
            text: qsTr("$")
            font.pixelSize: 12
        }

        Text {
            id: itemprice1
            x: 134
            y: 14
            text: qsTr("2.15")
            font.pixelSize: 12
        }
    }

    Rectangle {
        id: item2
        anchors.horizontalCenter: parent.horizontalCenter
        y: 200
        width: 400
        height: 70
        color: "#ffffff"
        Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
        Layout.fillWidth: true

        TextField {
            id: quantity2
            x: 320
            y: 25
            width: 60
            validator: IntValidator {bottom: 0; top: 9;}
            placeholderText: qsTr("0")
        }

        Text {
            id: itemname2
            x: 19
            y: 14
            text: qsTr("Okra")
            font.family: "Avenir"
            font.pixelSize: 12
            style: Text.Normal
        }

        Text {
            id: itemweight2
            x: 19
            y: 35
            width: 84
            height: 15
            text: qsTr("100")
            font.family: "Avenir"
            font.pixelSize: 13
        }

        Text {
            id: dollarsign2
            x: 124
            y: 14
            text: qsTr("$")
            font.pixelSize: 12
        }

        Text {
            id: itemprice2
            x: 134
            y: 14
            text: qsTr("2.20")
            font.pixelSize: 12
            font.family: "Avenir"
        }
        border.color: "#c383a4"
    }

    Rectangle {
        id: item3
        anchors.horizontalCenter: parent.horizontalCenter
        y: 300
        width: 400
        height: 70
        color: "#ffffff"
        Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
        Layout.fillWidth: true
        TextField {
            id: quantity3
            x: 320
            y: 25
            width: 60
            validator: IntValidator {bottom: 0; top: 9;}
            placeholderText: qsTr("0")
        }

        Text {
            id: itemname3
            x: 19
            y: 14
            text: qsTr("Iced Coffee")
            font.family: "Avenir"
            font.pixelSize: 12
            style: Text.Normal
        }

        Text {
            id: itemweight3
            x: 19
            y: 35
            width: 84
            height: 15
            text: qsTr("200")
            font.family: "Avenir"
            font.pixelSize: 13
        }

        Text {
            id: dollarsign3
            x: 124
            y: 14
            text: qsTr("$")
            font.pixelSize: 12
        }

        Text {
            id: itemprice3
            x: 134
            y: 14
            text: qsTr("5.00")
            font.pixelSize: 12
        }
        border.color: "#c383a4"
    }

    Rectangle {
        id: item4
        anchors.horizontalCenter: parent.horizontalCenter
        y: 400
        width: 400
        height: 70
        color: "#ffffff"
        Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
        Layout.fillWidth: true

        TextField {
            id: quantity4
            x: 320
            y: 25
            width: 60
            validator: IntValidator {bottom: 0; top: 9;}
            placeholderText: qsTr("0")
        }

        Text {
            id: itemname4
            x: 19
            y: 14
            text: qsTr("Mangoes")
            font.family: "Avenir"
            font.pixelSize: 12
            style: Text.Normal
        }

        Text {
            id: itemweight4
            x: 19
            y: 35
            width: 84
            height: 15
            text: qsTr("100")
            font.family: "Avenir"
            font.pixelSize: 13
        }

        Text {
            id: dollarsign4
            x: 124
            y: 14
            text: qsTr("$")
            font.pixelSize: 12
        }

        Text {
            id: itemprice4
            x: 134
            y: 14
            text: qsTr("3.00")
            font.pixelSize: 12
        }
        border.color: "#c383a4"
    }

    Rectangle {
        id: totalbox
        anchors.horizontalCenter: parent.horizontalCenter
        y: 500
        width: 400
        height: 80
        color: "#ffffff"
        Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
        Layout.fillWidth: true

        Text {
            id: totalweighttext
            x: 17
            y: 16
            text: qsTr("Total Weight:")
            font.family: "Avenir"
            font.pixelSize: 12
            style: Text.Normal
        }

        Text {
            id: totalpricetext
            x: 17
            y: 48
            text: qsTr("Total Price:")
            font.family: "Avenir"
            font.pixelSize: 12
            style: Text.Normal
        }

        Text {
            id: maxweighttext
            x: 160
            y: 16
            text: qsTr("/ 400g")
            font.pixelSize: 12
        }

        Text {
            id: dollarsign5
            x: 109
            y: 48
            text: qsTr("$")
            font.pixelSize: 12
        }

        Text {
            id: totalweight
            color:
                if (totalweight.text > 400) {"#D60000"}
                else {"black"}
            font.family: "Avenir"
            x: 109
            y: 16
            width: 69
            height: 15
            font.pixelSize: 12
            text: (quantity1.text*itemweight1.text) + (quantity2.text*itemweight2.text) + (quantity3.text*itemweight3.text) + (quantity4.text*itemweight4.text)
        }

        Text {
            id: totalprice
            font.family: "Avenir"
            x: 120
            y: 48
            width: 69
            height: 15
            font.pixelSize: 12
            text: (quantity1.text*itemprice1.text) + (quantity2.text*itemprice2.text) + (quantity3.text*itemprice3.text) + (quantity4.text*itemprice4.text)
        }

        border.color: "#c383a4"

    }

    Button {
        id: checkoutButton
        anchors.horizontalCenter: parent.horizontalCenter
        y: 620
        width: 150
        text: "Checkout"
        visible:
            if (totalweight.text > 400) {false}
            else {true}
        onClicked: {
            menu_page.visible = false;
            address_page.visible = true;
        }
    }

    Rectangle {
        id: checkoutdenialrectangle
        anchors.horizontalCenter: parent.horizontalCenter
        y: 750
        width: 150
        height: 20
        color: "#D60000"
        radius: 5
        Text {
            color: "white"
            font.pixelSize: 12
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.verticalCenter: parent.verticalCenter
            text: "Please remove some items."
        }
        visible:
            if (totalweight.text > 400) {true}
            else {false}
    }

    Button {
        id: backButton1
        anchors.horizontalCenter: parent.horizontalCenter
        y: 600
        width: 150
        text: "Return to homepage"
        onClicked:{
            menu_page.visible = false
            opening_page.visible = true
        }

    }

    Button {
        id: clearButton
        anchors.horizontalCenter: parent.horizontalCenter
        y: 900
        width: 150
        text: "Clear all entries"
        onClicked:
            totalweight.text = 0
            ,quantity1.text = 0
            ,quantity2.text = 0
            ,quantity3.text = 0
            ,quantity4.text = 0

    }
}
