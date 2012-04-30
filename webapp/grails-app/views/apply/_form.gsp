<%@ page import="org.webapp.Application" %>



<div class="fieldcontain ${hasErrors(bean: applicationInstance, field: 'student_id', 'error')} ">
	<label for="student_id">
		<g:message code="application.name.label" default="Student Name" />
		
	</label>
	<g:textField name="Student Name" value="${applicationInstance?.name}"/>
</div>


<div class="fieldcontain ${hasErrors(bean: applicationInstance, field: 'placement', 'error')} ">
	<label for="placement">
		<g:message code="application.placement.label" default="Placement name" />
		
	</label>
	<g:textField name="placement" value="${applicationInstance?.placement}"/>
</div>

