package org.webapp

class Student {
static hasMany = [Applications: Application]
static mappedBy = [Application: "Opportunity"]
String Name
String Coursecode
String Notes
    static constraints = {
    }
}
