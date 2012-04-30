package org.webapp

class Student {
static hasMany = [Applications: Application]
static mappedBy = [Application: "opportunity"]
String name
String coursecode
String notes
    static constraints = {
    }
}
