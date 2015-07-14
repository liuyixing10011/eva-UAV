#ifndef APPWINDOW_H
#define APPWINDOW_H

#include <QQuickItem>

class AppWindow : public QQuickItem
{
    Q_OBJECT
public:
    AppWindow();
    Q_INVOKABLE void clear();

//signals:
  //  void cleared();

//public slots:
//    void sayHi();
};

#endif // APPWINDOW_H
