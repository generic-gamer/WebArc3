package org.webapp

class Status {
static hasMany = [Application: Application]

String Status
String Description
    static constraints = {
    }
}
