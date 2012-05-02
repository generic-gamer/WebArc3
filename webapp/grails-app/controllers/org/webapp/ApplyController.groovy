package org.webapp

import org.springframework.dao.DataIntegrityViolationException

class ApplyController {
 static allowedMethods = [save: "POST", update: "POST", delete: "POST"]
static defaultAction = "index"

    def index() {
   [applicationInstance: new Application(params)]

 }

def processApplication() {
def s = Student.get(params.name)
if (!s){
flash.message = "This student does not exist."
redirect(action:index)}
def p = Opportunity.get(params.placement)
if (!p){
flash.message = "This placement does not exist."
redirect(action:index)}
def a = new Application(params.name, params.placement, status= "Applied")
}   
}
