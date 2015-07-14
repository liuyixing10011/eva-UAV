import QtQuick 2.0
import QtQuick.Controls 1.3

Rectangle {
    width: parent? parent.width : 500
    height: parent? parent.height : 800
    visible: true

    Text {
        id: customertrackWindowtitle
        anchors.horizontalCenter: parent.horizontalCenter
        y: 50
        text: "TRACK YOUR ORDER"
        font.family: "Avenir"
        font.letterSpacing: 2
    }

    Image {
        id: mockmap2
        visible: true
        anchors.horizontalCenter: parent.horizontalCenter
        y: 100
        width: 400
        height: 300
        source: "qrc:/images/map.png"
        asynchronous : true
    }

    Text {
        anchors.left: parent.Center
        x: 50
        y: 450
        width: 200
        text: "Delivering to:                               " +
              currentcustomername.text +
              "                                                      " +
              currentcustomerstreet.text +
              "                                                     " +
              currentcustomercity.text +
              ",   " +
              currentcustomerstate.text
        wrapMode: Text.WordWrap
        font.family: "Avenir"
        font.letterSpacing: 2
    }

    Button {
        anchors.horizontalCenter: parent.horizontalCenter
        y: 700
        width: 150
        text: "Place another order"
        onClicked:
           page.state = ""
    }
}

