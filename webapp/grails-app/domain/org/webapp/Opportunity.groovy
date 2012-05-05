package org.webapp

class Opportunity {
static hasMany = [Applications: Application]
static mappedBy = [Applications: "opportunity"]

//The above parameters specify he nature of the relationship between opportunity and Application and determine the name of the foreign key in Application that will refer to this entity.

String jobtitle
String company
String status

//The above lines of code are attributes for this entity, the first section is the data type and the second is the attribute name.

    static constraints = {
jobtitle(nullable:false)
    }
}

//The above code allows for a set of attributes to have restrictions placed upon them, such as valid input types or enforcing a not-null status.
