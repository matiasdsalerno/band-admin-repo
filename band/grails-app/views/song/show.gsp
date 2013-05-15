
<%@ page import="ar.com.asambleacristiana.Song" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'song.label', default: 'Song')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-song" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-song" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list song">

				<g:if test="${songInstance?.name}">
				<li class="fieldcontain">
					<span id="name-label" class="property-label"><g:message code="song.name.label" default="Nombre" /></span>
					
						<span class="property-value" aria-labelledby="name-label"><g:fieldValue bean="${songInstance}" field="name"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${songInstance?.album}">
				<li class="fieldcontain">
					<span id="album-label" class="property-label"><g:message code="song.album.label" default="Album" /></span>
					
						<span class="property-value" aria-labelledby="album-label"><g:link controller="album" action="show" id="${songInstance?.album?.id}">${songInstance?.album?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
			
				<g:if test="${songInstance?.youtubeCode}">
				<li class="fieldcontain" style="text-align: center;">
					<span id="youtubeCode-label" class="property-label"><g:message code="song.youtubeVideo.label" default="Video en YouTube" /></span>
					<iframe width="560" height="315" src="http://www.youtube.com/embed/<g:fieldValue bean="${songInstance}" field="youtubeCode"/>" frameborder="0" allowfullscreen></iframe>
					
				</li>
				</g:if>
			
				<g:if test="${songInstance?.lyrics}">
				<li class="fieldcontain">
					<span id="lyrics-label" class="property-label"><g:message code="song.lyrics.label" default="Letra" /></span>
						<p class="property-value" aria-labelledby="lyrics-label">${songInstance.lyrics.replace('\n', '<br/>')}</p>
					
				</li>
				</g:if>

			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${songInstance?.id}" />
					<g:link class="edit" action="edit" id="${songInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
