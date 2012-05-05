<%@ page import="org.webapp.Application" %>



<div class="fieldcontain ${hasErrors(bean: applicationInstance, field: 'student', 'error')} ">
	<label for="name">
		<g:message code="application.name.label" default="Student Name" />
		
	</label>
<g:select optionKey="name" optionValue="name" name="name" from="${org.webapp.Student.list()}"/>
</div>


<div class="fieldcontain ${hasErrors(bean: applicationInstance, field: 'placement', 'error')} ">
	<label for="placement">
		<g:message code="application.placement.label" default="Placement name" />
		
	</label>
	<g:select optionKey="id" optionValue="id" name="opportunity_id" from="${org.webapp.Opportunity.list()}"/>
</div>

