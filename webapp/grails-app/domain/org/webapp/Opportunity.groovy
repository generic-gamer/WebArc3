package org.webapp

class Opportunity {
static hasMany = [Applications: Application]
static mappedBy = [Applications: "opportunity"]

String jobtitle
String company
String status

    static constraints = {
    }
}
