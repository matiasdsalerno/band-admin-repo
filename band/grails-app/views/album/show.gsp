
<%@ page import="ar.com.asambleacristiana.Album" %>
<!doctype html>
<html>

<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
	<meta name="layout" content="kickstart" />
	<g:set var="entityName" value="${message(code: 'album.label', default: 'Album')}" />
	<title><g:message code="default.show.label" args="[entityName]" /></title>
</head>

<body>

<section id="show-album" class="first">

	<table class="table">
		<tbody>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="album.author.label" default="Author" /></td>
				
				<td valign="top" class="value"><g:link controller="author" action="show" id="${albumInstance?.author?.id}">${albumInstance?.author?.encodeAsHTML()}</g:link></td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="album.name.label" default="Name" /></td>
				
				<td valign="top" class="value">${fieldValue(bean: albumInstance, field: "name")}</td>
				
			</tr>
		
		</tbody>
	</table>
</section>

</body>

</html>
