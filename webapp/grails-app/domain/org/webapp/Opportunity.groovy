package org.webapp

class Opportunity {
static hasMany = [Applications: Application]
static mappedBy = [Applications: "Opportunity"]

String Jobtitle
String Company
String Status

    static constraints = {
    }
}
