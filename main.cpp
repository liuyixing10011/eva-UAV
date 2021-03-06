#include <QApplication>
#include <QQmlApplicationEngine>

#include "addresspagehandler.h"
#include "confirmationpagehandler.h"
#include "menupagehandler.h"
#include "openingpagehandler.h"
#include "paymentpagehandler.h"
#include "trackpagehandler.h"


int main(int argc, char *argv[])
{
    QApplication app(argc, argv);

 //   qmlRegisterType<AppWindow>("HKUST",1,0,"main");
    qmlRegisterType<AddressPageHandler>("HKUST",1,0,"AddressPageHandler");
    qmlRegisterType<ConfirmationPageHandler>("HKUST",1,0,"ConfirmationPageHandler");
    qmlRegisterType<MenuPageHandler>("HKUST",1,0,"MenuPageHandler");
    qmlRegisterType<OpeningPageHandler>("HKUST",1,0,"OpeningPageHandler");
    qmlRegisterType<PaymentPageHandler>("HKUST",1,0,"PaymentPageHandler");
    qmlRegisterType<TrackPageHandler>("HKUST",1,0,"TrackPageHandler");

    QQmlApplicationEngine engine;
    engine.load(QUrl(QStringLiteral("qrc:/main.qml")));

    return app.exec();
}
