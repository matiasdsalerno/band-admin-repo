
<%@ page import="ar.com.asambleacristiana.Song" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'song.label', default: 'Song')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-song" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-song" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<g:sortableColumn property="youtubeLink" title="${message(code: 'song.youtubeLink.label', default: 'Youtube Link')}" />
					
						<g:sortableColumn property="lyrics" title="${message(code: 'song.lyrics.label', default: 'Lyrics')}" />
					
						<th><g:message code="song.album.label" default="Album" /></th>
					
						<g:sortableColumn property="name" title="${message(code: 'song.name.label', default: 'Name')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${songInstanceList}" status="i" var="songInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${songInstance.id}">${fieldValue(bean: songInstance, field: "youtubeLink")}</g:link></td>
					
						<td>${fieldValue(bean: songInstance, field: "lyrics")}</td>
					
						<td>${fieldValue(bean: songInstance, field: "album")}</td>
					
						<td>${fieldValue(bean: songInstance, field: "name")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${songInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
