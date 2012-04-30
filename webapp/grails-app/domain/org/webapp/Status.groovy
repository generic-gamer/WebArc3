package org.webapp

class Status {
static hasMany = [Application: Application]

String code
String description
    static constraints = {
    }
}
