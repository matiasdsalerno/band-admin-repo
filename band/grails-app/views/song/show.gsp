
<%@ page import="ar.com.asambleacristiana.Song" %>
<!doctype html>
<html>

<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
	<meta name="layout" content="kickstart" />
	<g:set var="entityName" value="${message(code: 'song.label', default: 'Song')}" />
	<title><g:message code="default.show.label" args="[entityName]" /></title>
</head>

<body>

<section id="show-song" class="first">

	<table class="table">
		<tbody>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="song.name.label" default="Name" /></td>
				
				<td valign="top" class="value">${fieldValue(bean: songInstance, field: "name")}</td>
				
			</tr>
			
			<tr class="prop">
				<td valign="top" class="name"><g:message code="song.youtubeVideo.label" default="Youtube Code" /></td>
				
				<td valign="top" class="value"><iframe width="420" height="236" src="http://www.youtube.com/embed/${fieldValue(bean: songInstance, field: "youtubeCode")}" frameborder="0" allowfullscreen></iframe></td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="song.lyrics.label" default="Lyrics" /></td>
				
				<td valign="top" class="value">${fieldValue(bean: songInstance, field: "lyrics").replace('\n', '<br/>')}</td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="song.album.label" default="Album" /></td>
				
				<td valign="top" class="value"><g:link controller="album" action="show" id="${songInstance?.album?.id}">${songInstance?.album?.encodeAsHTML()}</g:link></td>
				
			</tr>
		
		
		</tbody>
	</table>
</section>

</body>

</html>
