package org.webapp

import org.springframework.dao.DataIntegrityViolationException

class ApplyController {
 static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
   [applicationInstance: new Application(params)]

 }

def processApplication() {
def application = new Application()
application.name = Student.find("from Student as student where student.id = ${params.student}")
application.placement = Opportunity.find("from Opportunity as opportunity where opportunity.id = ${params.placement}")
application.status=Status.find ("from Status as status where status.code='Applied'")
application.save()
redirect(action:"index")
}   
}
