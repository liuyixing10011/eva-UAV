#ifndef OPENINGPAGE_H
#define OPENINGPAGE_H

#include <QQuickItem>

class OpeningPageHandler : public QQuickItem
{
    Q_OBJECT
public:
    OpeningPageHandler(QQuickItem* parent = 0);
    Q_INVOKABLE void open();
    Q_INVOKABLE void something();
signals:
 //   void openSignal();

//public slots:

};

#endif // OPENINGPAGE_H
