package org.webapp

import org.springframework.dao.DataIntegrityViolationException

class ApplyController {
 static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
   [applicationInstance: new Application(params)]

 }

    def apply(){}
}
