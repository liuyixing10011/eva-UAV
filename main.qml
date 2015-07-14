import HKUST 1.0
import QtQuick 2.4
import QtQuick.Controls 1.3
import QtQuick.Window 2.2
import QtQuick.Dialogs 1.2


ApplicationWindow {
    id: app_window
    title: qsTr("UAV Control App")
    width: 500
    height: 800
    visible: true

    menuBar: MenuBar {
        Menu {
            title: qsTr("&File")
            MenuItem {
                text: qsTr("&Open")
                onTriggered: messageDialog.show(qsTr("Open action triggered"));
            }
            MenuItem {
                text: qsTr("E&xit")
                onTriggered: Qt.quit();
            }
        }
    }

    OpeningPage{
        id: opening_page
        visible: true
        OpeningPageHandler{
            id: opening_page_handler
        }
    }

    MenuPage{
        id: menu_page
        visible: false
        MenuPageHandler{
            id: menu_page_handler
            num1: 0
            num2: 0
            num3: 0
            num4: 0
        }
    }

    AddressPage{
        id: address_page
        visible: false
        AddressPageHandler{
            id: address_page_handler
        }
    }

    PaymengPage{
        id: payment_page
        visible:false
        PaymentPageHandler{
            id: payment_page_handler
        }
    }

    ConfirmationPage{
        id: confirmation_page
        visible: false
        ConfirmationPageHandler{
            id: confirmation_page_handler
        }
    }

    TrackPage{
        id: track_page
        visible: false
        TrackPageHandler{
            id: track_page_handler
        }
    }
}
