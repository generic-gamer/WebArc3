package org.webapp

class Student {
static hasMany = [Applications: Application]
static mappedBy = [Application: "opportunity"]

//For an explanation of domain class structuring please see the Opportunity domain.

String name
String coursecode
String notes

//

    static constraints = {
name(nullable:false)
    }
}
