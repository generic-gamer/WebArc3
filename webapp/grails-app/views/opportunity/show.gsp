
<%@ page import="org.webapp.Opportunity" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'opportunity.label', default: 'Opportunity')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-opportunity" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-opportunity" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list opportunity">
			
				<g:if test="${opportunityInstance?.company}">
				<li class="fieldcontain">
					<span id="company-label" class="property-label"><g:message code="opportunity.company.label" default="Company" /></span>
					
						<span class="property-value" aria-labelledby="company-label"><g:fieldValue bean="${opportunityInstance}" field="company"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${opportunityInstance?.jobtitle}">
				<li class="fieldcontain">
					<span id="jobtitle-label" class="property-label"><g:message code="opportunity.jobtitle.label" default="Jobtitle" /></span>
					
						<span class="property-value" aria-labelledby="jobtitle-label"><g:fieldValue bean="${opportunityInstance}" field="jobtitle"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${opportunityInstance?.status}">
				<li class="fieldcontain">
					<span id="status-label" class="property-label"><g:message code="opportunity.status.label" default="Status" /></span>
					
						<span class="property-value" aria-labelledby="status-label"><g:fieldValue bean="${opportunityInstance}" field="status"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${opportunityInstance?.id}" />
					<g:link class="edit" action="edit" id="${opportunityInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
