
<%@ page import="ar.com.asambleacristiana.Album" %>
<!doctype html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
	<meta name="layout" content="kickstart" />
	<g:set var="entityName" value="${message(code: 'album.label', default: 'Album')}" />
	<title><g:message code="default.list.label" args="[entityName]" /></title>
</head>

<body>
	
<section id="list-album" class="first">

	<table class="table table-bordered">
		<thead>
			<tr>
			
				<th><g:message code="album.author.label" default="Author" /></th>
			
				<g:sortableColumn property="name" title="${message(code: 'album.name.label', default: 'Name')}" />
			
			</tr>
		</thead>
		<tbody>
		<g:each in="${albumInstanceList}" status="i" var="albumInstance">
			<tr class="${(i % 2) == 0 ? 'odd' : 'even'}">
			
				<td><g:link action="show" id="${albumInstance.id}">${fieldValue(bean: albumInstance, field: "author")}</g:link></td>
			
				<td>${fieldValue(bean: albumInstance, field: "name")}</td>
			
			</tr>
		</g:each>
		</tbody>
	</table>
	<div class="pagination">
		<bs:paginate total="${albumInstanceTotal}" />
	</div>
</section>

</body>

</html>
