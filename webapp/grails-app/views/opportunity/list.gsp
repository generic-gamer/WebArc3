
<%@ page import="org.webapp.Opportunity" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'opportunity.label', default: 'Opportunity')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-opportunity" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-opportunity" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<g:sortableColumn property="company" title="${message(code: 'opportunity.company.label', default: 'Company')}" />
					
						<g:sortableColumn property="jobtitle" title="${message(code: 'opportunity.jobtitle.label', default: 'Jobtitle')}" />
					
						<g:sortableColumn property="status" title="${message(code: 'opportunity.status.label', default: 'Status')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${opportunityInstanceList}" status="i" var="opportunityInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${opportunityInstance.id}">${fieldValue(bean: opportunityInstance, field: "company")}</g:link></td>
					
						<td>${fieldValue(bean: opportunityInstance, field: "jobtitle")}</td>
					
						<td>${fieldValue(bean: opportunityInstance, field: "status")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${opportunityInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
