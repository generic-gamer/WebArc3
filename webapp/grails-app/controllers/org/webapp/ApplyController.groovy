package org.webapp

import org.springframework.dao.DataIntegrityViolationException

class ApplyController {
 static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

//This is my custom apply controller. It has two operations; rendering a form for creating a new application and processing that application.

    def index() {
   [applicationInstance: new Application(params)]

 }

//The above code creates a new application form from the related view. This is defined as the 'index' or default action for this controller. This is the screen that loads when this controller is selected.

def processApplication() {
def application = new Application()

//This is the next action; taking the information passed from the view and using it to create a new application. in the code above 'application' has been defined as a new Application, the lower case application being the variable name.

application.name = Student.find("from Student as student where student.id = ${params.student}")

//the above code sets the new application's 'name' attribute. This code instructs the controller to set the application name as matching a student from Student with the same name. This creates an association between the two entities. 

application.placement = Opportunity.find("from Opportunity as opportunity where opportunity.id = ${params.placement}")

//This performs the same function with the 'Opportunity entity. this extracts the 'opportunity' value from the params hash and matches it to an existing opportunity.'

application.status=Status.find ("from Status as status where status.code='Applied'")

//This repeats the process for Status, but instead of reading a value from the params hash it mnually searches for  Status with a code matching the specified code. This serves to ensure that every created Application has the same Status.

application.save()
redirect(action:"index")

//The above code saves the resulting Application and then redirects the browser to the index page.

}   
}
