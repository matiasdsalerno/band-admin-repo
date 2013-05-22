
<%@ page import="ar.com.asambleacristiana.Reminder" %>
<!doctype html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
	<meta name="layout" content="kickstart" />
	<g:set var="entityName" value="${message(code: 'reminder.label', default: 'Reminder')}" />
	<title><g:message code="default.list.label" args="[entityName]" /></title>
</head>

<body>
	
<section id="list-reminder" class="first">

	<table class="table table-bordered">
		<thead>
			<tr>
			
				<g:sortableColumn property="date" title="${message(code: 'reminder.date.label', default: 'Date')}" />
			
				<th><g:message code="reminder.event.label" default="Event" /></th>
			
			</tr>
		</thead>
		<tbody>
		<g:each in="${reminderInstanceList}" status="i" var="reminderInstance">
			<tr class="${(i % 2) == 0 ? 'odd' : 'even'}">
			
				<td><g:link action="show" id="${reminderInstance.id}">${fieldValue(bean: reminderInstance, field: "date")}</g:link></td>
			
				<td>${fieldValue(bean: reminderInstance, field: "event")}</td>
			
			</tr>
		</g:each>
		</tbody>
	</table>
	<div class="pagination">
		<bs:paginate total="${reminderInstanceTotal}" />
	</div>
</section>

</body>

</html>
