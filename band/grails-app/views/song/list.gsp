
<%@ page import="ar.com.asambleacristiana.Song" %>
<!doctype html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
	<meta name="layout" content="kickstart" />
	<g:set var="entityName" value="${message(code: 'song.label', default: 'Song')}" />
	<title><g:message code="song.list.label" /></title>
</head>

<body>
	
<section id="list-song" class="first">

	<table class="table table-bordered">
		<thead>
			<tr>
				<g:sortableColumn property="name" title="${message(code: 'song.name.label', default: 'Name')}" />
				<g:sortableColumn property="youtubeLink" title="${message(code: 'song.youtubeLink.label', default: 'Link a Youtube')}" />
				<g:sortableColumn property="album" title="${message(code: 'song.album.label', default: 'Album')}" />
				<g:sortableColumn property="author" title="${message(code: 'album.author.label', default: 'Autor')}" />
			</tr>
		</thead>
		<tbody>
		<g:each in="${songInstanceList}" status="i" var="songInstance">
			<tr class="${(i % 2) == 0 ? 'odd' : 'even'}">
				<td><g:link action="show" id="${songInstance.id}">${fieldValue(bean: songInstance, field: "name")}</g:link></td>
				<td><a href="${fieldValue(bean: songInstance, field: "youtubeLink")}">${fieldValue(bean: songInstance, field: "youtubeLink")}</a></td>
				<td>${songInstance?.album?.name}</td>
				<td>${songInstance?.album?.author}</td>
			</tr>
		</g:each>
		</tbody>
	</table>
	<div class="pagination">
		<bs:paginate total="${songInstanceTotal}" />
	</div>
</section>

</body>

</html>
