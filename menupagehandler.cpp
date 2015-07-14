#include "menupagehandler.h"

MenuPageHandler::MenuPageHandler(QQuickItem *parent):QQuickItem(parent),
    item1_weight(100), item1_num(0), item1_price(2.15),
    item2_weight(100), item2_num(0), item2_price(2.2),
    item3_weight(200), item3_num(0), item3_price(5.0),
    item4_weight(100), item4_num(0), item4_price(3.0){

}
void MenuPageHandler::setNum1(int n){
    item1_num = n;
}

void MenuPageHandler::setNum2(int n){
    item2_num = n;
}

void MenuPageHandler::setNum3(int n){
     item3_num = n;
}

void MenuPageHandler::setNum4(int n){
     item4_num = n;
}

int MenuPageHandler::num1(){
    return item1_num;
}

int MenuPageHandler::num2(){
    return item2_num;
}

int MenuPageHandler::num3(){
    return item3_num;
}

int MenuPageHandler::num4(){
    return item4_num;
}

int MenuPageHandler::calculate_total_weight(){
    return item1_weight * item1_num +
            item2_weight * item2_num +
            item3_weight * item3_num +
            item4_weight * item4_num;
}

double MenuPageHandler::calculate_total_price(){
    return item1_price * item1_num +
            item2_price * item2_num +
            item3_price * item3_num +
            item4_price * item4_num;
}
