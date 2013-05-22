
<%@ page import="ar.com.asambleacristiana.Event" %>
<!doctype html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
	<meta name="layout" content="kickstart" />
	<g:set var="entityName" value="${message(code: 'event.label', default: 'Event')}" />
	<title><g:message code="event.list.label" args="[entityName]" /></title>
</head>

<body>
	
<section id="list-event" class="first">

	<table class="table table-bordered">
		<thead>
			<tr>
				<g:sortableColumn property="name" title="${message(code: 'event.name.label', default: 'Name')}" />
			
				<g:sortableColumn property="date" title="${message(code: 'event.date.label', default: 'Date')}" />
			
				<th><g:message code="event.band.label" default="Band" /></th>
			
				<th><g:message code="event.director.label" default="Director" /></th>
			</tr>
		</thead>
		<tbody>
		<g:each in="${eventInstanceList}" status="i" var="eventInstance">
			<tr class="${(i % 2) == 0 ? 'odd' : 'even'}">
				<td>${fieldValue(bean: eventInstance, field: "name")}</td>
			
				<td><g:link action="show" id="${eventInstance.id}">${fieldValue(bean: eventInstance, field: "band")}</g:link></td>
			
				<td>${fieldValue(bean: eventInstance, field: "director")}</td>
			
				<td><g:formatDate date="${eventInstance.date}" /></td>
			</tr>
		</g:each>
		</tbody>
	</table>
	<div class="pagination">
		<bs:paginate total="${eventInstanceTotal}" />
	</div>
</section>

</body>

</html>
