import QtQuick 2.0
import QtQuick.Controls 1.3
import QtQuick.Layouts 1.1


Rectangle {
    width: parent? parent.width : 500
    height: parent? parent.height : 800
    visible: true

    Text {
        id: paymentWindowtitle
        anchors.horizontalCenter: parent.horizontalCenter
        y: 100
        text: "ENTER PAYMENT INFORMATION"
        font.family: "Avenir"
        font.letterSpacing: 2
    }

    RowLayout {
        id: rowLayout1
        x: 100
        y: 140
        width: 350
        height: 100

        Column {
            id: column0
            width: 116

            CheckBox {
                id: checkBox1
                text: qsTr("AMEX")
                anchors.horizontalCenter: parent.horizontalCenter
                onClicked:
                    checkBox2.checked = false,
                    checkBox3.checked = false
            }

            Image {
                anchors.horizontalCenter: parent.horizontalCenter
                width: 50
                height: 50
                fillMode: Image.PreserveAspectFit
                source: "images/amx.png"
            }
        }

        Column {
            id: column1
            width: 116

            CheckBox {
                id: checkBox2
                text: qsTr("Visa")
                anchors.horizontalCenter: parent.horizontalCenter
                onClicked:
                    checkBox1.checked = false,
                    checkBox3.checked = false
            }

            Image {
                anchors.horizontalCenter: parent.horizontalCenter
                width: 50
                height: 50
                fillMode: Image.PreserveAspectFit
                source: "images/visa.png"
            }
        }

        Column {
            id: column2
            width: 116

            CheckBox {
                id: checkBox3
                text: qsTr("Discover")
                anchors.horizontalCenter: parent.horizontalCenter
                onClicked:
                    checkBox1.checked = false,
                    checkBox2.checked = false
            }

            Image {
                anchors.horizontalCenter: parent.horizontalCenter
                width: 50
                height: 50
                fillMode: Image.PreserveAspectFit
                source: "images/discover.png"
            }
        }

    }

    TextField {
        id: cardnumber
        maximumLength: 19
        anchors.horizontalCenter: parent.horizontalCenter
        y: 250
        width: 350
        height: 40
        placeholderText: qsTr("Card Number")
    }

    TextField {
        id: cvccode
        maximumLength: 4
        validator: IntValidator{bottom: 0; top: 9999;}
        anchors.horizontalCenter: parent.horizontalCenter
        y: 330
        width: 350
        height: 40
        placeholderText: qsTr("Security Code")
    }

    TextField {
        id: cardholdername
        anchors.horizontalCenter: parent.horizontalCenter
        y: 410
        width: 350
        height: 40
        placeholderText: qsTr("Cardholder's Name")
    }

    TextField {
        id: cardexpirationdate
        maximumLength: 7
        anchors.horizontalCenter: parent.horizontalCenter
        y: 490
        width: 350
        height: 40
        placeholderText: qsTr("MM/YYYY")
    }

    Button {
        id: submitpaymentinfoButton
        anchors.horizontalCenter: parent.horizontalCenter
        y: 580
        width: 180
        text: "Submit and Review Order"
        onClicked: {
            payment_page.visible = false
            track_page.visible = true
        }


    }

    Button {
        id: backButton2
        anchors.horizontalCenter: parent.horizontalCenter
        y: 620
        width: 180
        text: "Back"
        onClicked:{
            payment_page.visible = false
            address_page.visible = true
        }
    }
}

