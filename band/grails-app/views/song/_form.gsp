<%@ page import="ar.com.asambleacristiana.Song" %>



<div class="fieldcontain ${hasErrors(bean: songInstance, field: 'youtubeCode', 'error')} ">
	<label for="youtubeCode">
		<g:message code="song.youtubeCode.label" default="Youtube Code" />
		
	</label>
	<g:textField name="youtubeCode" value="${songInstance?.youtubeCode}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: songInstance, field: 'lyrics', 'error')} ">
	<label for="lyrics">
		<g:message code="song.lyrics.label" default="Lyrics" />
		
	</label>
	<g:textArea name="lyrics" cols="40" rows="5" maxlength="1500" value="${songInstance?.lyrics}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: songInstance, field: 'album', 'error')} required">
	<label for="album">
		<g:message code="song.album.label" default="Album" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="album" name="album.id" from="${ar.com.asambleacristiana.Album.list()}" optionKey="id" required="" value="${songInstance?.album?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: songInstance, field: 'name', 'error')} ">
	<label for="name">
		<g:message code="song.name.label" default="Name" />
		
	</label>
	<g:textField name="name" value="${songInstance?.name}"/>
</div>

