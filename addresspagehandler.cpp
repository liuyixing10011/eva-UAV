#include "addresspagehandler.h"

AddressPageHandler::AddressPageHandler()
{

}

QString AddressPageHandler::name(){
    return m_name;
}

QString AddressPageHandler::street(){
    return m_street;
}

QString AddressPageHandler::city(){
    return m_city;
}

QString AddressPageHandler::state(){
    return m_state;
}

QString AddressPageHandler::region(){
    return m_region;
}

QString AddressPageHandler::email(){
    return m_email;
}

long AddressPageHandler::zip(){
    return m_zip;
}

long AddressPageHandler::phone(){
    return m_phone;
}

void AddressPageHandler::setName(QString n){
    m_name = n;
}

void AddressPageHandler::setStreet(QString s){
    m_street = s;
}

void AddressPageHandler::setCity(QString c){
    m_city = c;
}

void AddressPageHandler::setState(QString s){
    m_state = s;
}

void AddressPageHandler::setRegion(QString r){
    m_region = r;
}

void AddressPageHandler::setEmail(QString e){
    m_email = e;
}

void AddressPageHandler::setZip(long z){
    m_zip = z;
}

void AddressPageHandler::setPhone(long p){
    m_phone = p;
}

