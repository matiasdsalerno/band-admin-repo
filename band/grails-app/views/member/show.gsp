
<%@ page import="ar.com.asambleacristiana.Member" %>
<!doctype html>
<html>

<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
	<meta name="layout" content="kickstart" />
	<g:set var="entityName" value="${message(code: 'member.label', default: 'Member')}" />
	<title><g:message code="default.show.label" args="[entityName]" /></title>
</head>

<body>

<section id="show-member" class="first">

	<table class="table">
		<tbody>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="member.emailAddress.label" default="Email Address" /></td>
				
				<td valign="top" class="value">${fieldValue(bean: memberInstance, field: "emailAddress")}</td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="member.lastName.label" default="Last Name" /></td>
				
				<td valign="top" class="value">${fieldValue(bean: memberInstance, field: "lastName")}</td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="member.name.label" default="Name" /></td>
				
				<td valign="top" class="value">${fieldValue(bean: memberInstance, field: "name")}</td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="member.instrument.label" default="Instrument" /></td>
				
				<td valign="top" class="value"><g:link controller="instrument" action="show" id="${memberInstance?.instrument?.id}">${memberInstance?.instrument?.encodeAsHTML()}</g:link></td>
				
			</tr>
		
		</tbody>
	</table>
</section>

</body>

</html>
