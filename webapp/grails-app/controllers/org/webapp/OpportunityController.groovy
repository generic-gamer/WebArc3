package org.webapp

import org.springframework.dao.DataIntegrityViolationException

import grails.converters.XML

class OpportunityController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list() {
        params.max = Math.min(params.max ? params.int('max') : 10, 100)
        [opportunityInstanceList: Opportunity.list(params), opportunityInstanceTotal: Opportunity.count()]
    }

def listOpenPlacements() {
 def i = Opportunity.findAll("where.status = '%pen'")
withFormat {
//xml { render i as XML }
//json { render i as JSON }
}
       
    }
//The above code is designed to find all opportunities with '%pen' as their status. This is to allow both open and Open to be found by this search. The variable called 'i' is then provided to the user in their choice of XML or JSON outputs. The output section is currently commented out due to an unidentified error.

def listApplicants() {
 def i = Opportunity.findAll(params.id)

withFormat {
//xml { render i as XML }
//json { render i as JSON }
}
       
    }
//The above code is designed to find all applicants for a specific Opportunity, this is specified by the Opportunity number passed in the URL. The variable called 'i' is then provided to the user in their choice of XML or JSON outputs. The output section is currently commented out due to an unidentified error.



    def create() {
        [opportunityInstance: new Opportunity(params)]
    }

    def save() {
        def opportunityInstance = new Opportunity(params)
        if (!opportunityInstance.save(flush: true)) {
            render(view: "create", model: [opportunityInstance: opportunityInstance])
            return
        }

		flash.message = message(code: 'default.created.message', args: [message(code: 'opportunity.label', default: 'Opportunity'), opportunityInstance.id])
        redirect(action: "show", id: opportunityInstance.id)
    }

    def show() {
        def opportunityInstance = Opportunity.get(params.id)
        if (!opportunityInstance) {
			flash.message = message(code: 'default.not.found.message', args: [message(code: 'opportunity.label', default: 'Opportunity'), params.id])
            redirect(action: "list")
            return
        }

        [opportunityInstance: opportunityInstance]
    }

    def edit() {
        def opportunityInstance = Opportunity.get(params.id)
        if (!opportunityInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'opportunity.label', default: 'Opportunity'), params.id])
            redirect(action: "list")
            return
        }

        [opportunityInstance: opportunityInstance]
    }

    def update() {
        def opportunityInstance = Opportunity.get(params.id)
        if (!opportunityInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'opportunity.label', default: 'Opportunity'), params.id])
            redirect(action: "list")
            return
        }

        if (params.version) {
            def version = params.version.toLong()
            if (opportunityInstance.version > version) {
                opportunityInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'opportunity.label', default: 'Opportunity')] as Object[],
                          "Another user has updated this Opportunity while you were editing")
                render(view: "edit", model: [opportunityInstance: opportunityInstance])
                return
            }
        }

        opportunityInstance.properties = params

        if (!opportunityInstance.save(flush: true)) {
            render(view: "edit", model: [opportunityInstance: opportunityInstance])
            return
        }

		flash.message = message(code: 'default.updated.message', args: [message(code: 'opportunity.label', default: 'Opportunity'), opportunityInstance.id])
        redirect(action: "show", id: opportunityInstance.id)
    }

    def delete() {
        def opportunityInstance = Opportunity.get(params.id)
        if (!opportunityInstance) {
			flash.message = message(code: 'default.not.found.message', args: [message(code: 'opportunity.label', default: 'Opportunity'), params.id])
            redirect(action: "list")
            return
        }

        try {
            opportunityInstance.delete(flush: true)
			flash.message = message(code: 'default.deleted.message', args: [message(code: 'opportunity.label', default: 'Opportunity'), params.id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
			flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'opportunity.label', default: 'Opportunity'), params.id])
            redirect(action: "show", id: params.id)
        }
    }
}
