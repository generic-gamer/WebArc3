<%@ page import="org.webapp.Application" %>



<div class="fieldcontain ${hasErrors(bean: applicationInstance, field: 'name', 'error')} required">
	<label for="name">
		<g:message code="application.name.label" default="Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="name" name="name.id" from="${org.webapp.Student.list()}" optionKey="id" required="" value="${applicationInstance?.name?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: applicationInstance, field: 'opportunity', 'error')} required">
	<label for="opportunity">
		<g:message code="application.opportunity.label" default="Opportunity" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="opportunity" name="opportunity.id" from="${org.webapp.Opportunity.list()}" optionKey="id" required="" value="${applicationInstance?.opportunity?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: applicationInstance, field: 'placement', 'error')} required">
	<label for="placement">
		<g:message code="application.placement.label" default="Placement" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="placement" name="placement.id" from="${org.webapp.Opportunity.list()}" optionKey="id" required="" value="${applicationInstance?.placement?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: applicationInstance, field: 'status', 'error')} ">
	<label for="status">
		<g:message code="application.status.label" default="Status" />
		
	</label>

<g:select id="placement" name="placement.status" from="${org.webapp.Status.list()}" optionKey="id" required="" value="${statusInstance?.Status?.id}" class="many-to-one"/>

<div class="fieldcontain ${hasErrors(bean: applicationInstance, field: 'student', 'error')} required">
	<label for="student">
		<g:message code="application.student.label" default="Student" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="student" name="student.id" from="${org.webapp.Student.list()}" optionKey="id" required="" value="${applicationInstance?.student?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: applicationInstance, field: 'timestamp', 'error')} required">
	<label for="timestamp">
		<g:message code="application.timestamp.label" default="Timestamp" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="timestamp" precision="day"  value="${applicationInstance?.timestamp}"  />
</div>

