
<%@ page import="ar.com.asambleacristiana.Member" %>
<!doctype html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
	<meta name="layout" content="kickstart" />
	<g:set var="entityName" value="${message(code: 'member.label', default: 'Member')}" />
	<title><g:message code="default.list.label" args="[entityName]" /></title>
</head>

<body>
	
<section id="list-member" class="first">

	<table class="table table-bordered">
		<thead>
			<tr>
			
				<g:sortableColumn property="emailAddress" title="${message(code: 'member.emailAddress.label', default: 'Email Address')}" />
			
				<g:sortableColumn property="lastName" title="${message(code: 'member.lastName.label', default: 'Last Name')}" />
			
				<g:sortableColumn property="name" title="${message(code: 'member.name.label', default: 'Name')}" />
			
				<th><g:message code="member.instrument.label" default="Instrument" /></th>
			
			</tr>
		</thead>
		<tbody>
		<g:each in="${memberInstanceList}" status="i" var="memberInstance">
			<tr class="${(i % 2) == 0 ? 'odd' : 'even'}">
			
				<td><g:link action="show" id="${memberInstance.id}">${fieldValue(bean: memberInstance, field: "emailAddress")}</g:link></td>
			
				<td>${fieldValue(bean: memberInstance, field: "lastName")}</td>
			
				<td>${fieldValue(bean: memberInstance, field: "name")}</td>
			
				<td>${fieldValue(bean: memberInstance, field: "instrument")}</td>
			
			</tr>
		</g:each>
		</tbody>
	</table>
	<div class="pagination">
		<bs:paginate total="${memberInstanceTotal}" />
	</div>
</section>

</body>

</html>
