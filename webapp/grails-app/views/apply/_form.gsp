<%@ page import="org.webapp.Application" %>



<div class="fieldcontain ${hasErrors(bean: applicationInstance, field: 'student', 'error')} ">
	<label for="name">
		<g:message code="application.name.label" default="Student Name" />
		
	</label>
<g:select optionKey="name" optionValue="name" name="name" from="${org.webapp.Student.list()}"/>
</div>

<%/* This form allows the entry of two parameters; the placement number and the student name. In a production system the student number would instead be used to preserve uniqueness but I wished to demonstrate that either option was possible. These lists are drawn from the Student and Opportunity domains and the selected options are placed into a params hash and fed to the controller. */%>

<div class="fieldcontain ${hasErrors(bean: applicationInstance, field: 'placement', 'error')} ">
	<label for="placement">
		<g:message code="application.placement.label" default="Placement number" />
		
	</label>
	<g:select optionKey="id" optionValue="id" name="opportunity_id" from="${org.webapp.Opportunity.list()}"/>
</div>

