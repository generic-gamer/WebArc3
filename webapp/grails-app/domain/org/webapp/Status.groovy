package org.webapp

class Status {
static hasMany = [Application: Application]

String code
String description
    static constraints = {
    }
}

//For an explanation of domain class structuring please see the Opportunity domain.
