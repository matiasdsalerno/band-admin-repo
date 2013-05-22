
<%@ page import="ar.com.asambleacristiana.Event" %>
<!doctype html>
<html>

<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
	<meta name="layout" content="kickstart" />
	<g:set var="entityName" value="${message(code: 'event.label', default: 'Event')}" />
	<title><g:message code="default.show.label" args="[entityName]" /></title>
</head>

<body>

<section id="show-event" class="first">

	<table class="table">
		<tbody>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="event.band.label" default="Band" /></td>
				
				<td valign="top" class="value"><g:link controller="band" action="show" id="${eventInstance?.band?.id}">${eventInstance?.band?.encodeAsHTML()}</g:link></td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="event.date.label" default="Date" /></td>
				
				<td valign="top" class="value"><g:formatDate date="${eventInstance?.date}" /></td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="event.director.label" default="Director" /></td>
				
				<td valign="top" class="value"><g:link controller="member" action="show" id="${eventInstance?.director?.id}">${eventInstance?.director?.encodeAsHTML()}</g:link></td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="event.name.label" default="Name" /></td>
				
				<td valign="top" class="value">${fieldValue(bean: eventInstance, field: "name")}</td>
				
			</tr>
		
		</tbody>
	</table>
</section>

</body>

</html>
