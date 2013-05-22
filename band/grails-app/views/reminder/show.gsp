
<%@ page import="ar.com.asambleacristiana.Reminder" %>
<!doctype html>
<html>

<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
	<meta name="layout" content="kickstart" />
	<g:set var="entityName" value="${message(code: 'reminder.label', default: 'Reminder')}" />
	<title><g:message code="default.show.label" args="[entityName]" /></title>
</head>

<body>

<section id="show-reminder" class="first">

	<table class="table">
		<tbody>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="reminder.date.label" default="Date" /></td>
				
				<td valign="top" class="value"><g:formatDate date="${reminderInstance?.date}" /></td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="reminder.event.label" default="Event" /></td>
				
				<td valign="top" class="value"><g:link controller="event" action="show" id="${reminderInstance?.event?.id}">${reminderInstance?.event?.encodeAsHTML()}</g:link></td>
				
			</tr>
		
		</tbody>
	</table>
</section>

</body>

</html>
