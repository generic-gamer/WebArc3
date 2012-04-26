<%@ page import="org.webapp.Opportunity" %>



<div class="fieldcontain ${hasErrors(bean: opportunityInstance, field: 'company', 'error')} ">
	<label for="company">
		<g:message code="opportunity.company.label" default="Company" />
		
	</label>
	<g:textField name="company" value="${opportunityInstance?.company}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: opportunityInstance, field: 'jobtitle', 'error')} ">
	<label for="jobtitle">
		<g:message code="opportunity.jobtitle.label" default="Jobtitle" />
		
	</label>
	<g:textField name="jobtitle" value="${opportunityInstance?.jobtitle}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: opportunityInstance, field: 'status', 'error')} ">
	<label for="status">
		<g:message code="opportunity.status.label" default="Status" />
		
	</label>
	<g:textField name="status" value="${opportunityInstance?.status}"/>
</div>

