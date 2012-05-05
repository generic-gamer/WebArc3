package org.webapp

class Application {
static belongsTo = [Student: Student, Opportunity: Opportunity]

Student name
Opportunity placement
String status
Date dateCreated

    static constraints = {
    }
}

//For an explanation of domain class structuring please see the Opportunity domain.
