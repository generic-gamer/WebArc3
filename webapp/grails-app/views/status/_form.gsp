<%@ page import="org.webapp.Status" %>



<div class="fieldcontain ${hasErrors(bean: statusInstance, field: 'description', 'error')} ">
	<label for="description">
		<g:message code="status.description.label" default="Description" />
		
	</label>
	<g:textField name="description" value="${statusInstance?.description}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: statusInstance, field: 'status', 'error')} ">
	<label for="status">
		<g:message code="status.status.label" default="Status" />
		
	</label>
	<g:textField name="status" value="${statusInstance?.status}"/>
</div>

