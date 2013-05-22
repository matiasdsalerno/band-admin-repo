<%@ page import="ar.com.asambleacristiana.Song" %>



			<div class="control-group fieldcontain ${hasErrors(bean: songInstance, field: 'youtubeCode', 'error')} ">
				<label for="youtubeCode" class="control-label"><g:message code="song.youtubeCode.label" default="Youtube Code" /></label>
				<div class="controls">
					<g:textField name="youtubeCode" value="${songInstance?.youtubeCode}"/>
					<span class="help-inline">${hasErrors(bean: songInstance, field: 'youtubeCode', 'error')}</span>
				</div>
			</div>

			<div class="control-group fieldcontain ${hasErrors(bean: songInstance, field: 'lyrics', 'error')} ">
				<label for="lyrics" class="control-label"><g:message code="song.lyrics.label" default="Lyrics" /></label>
				<div class="controls">
					<g:textArea name="lyrics" cols="40" rows="5" maxlength="1500" value="${songInstance?.lyrics}"/>
					<span class="help-inline">${hasErrors(bean: songInstance, field: 'lyrics', 'error')}</span>
				</div>
			</div>

			<div class="control-group fieldcontain ${hasErrors(bean: songInstance, field: 'album', 'error')} required">
				<label for="album" class="control-label"><g:message code="song.album.label" default="Album" /><span class="required-indicator">*</span></label>
				<div class="controls">
					<g:select id="album" name="album.id" from="${ar.com.asambleacristiana.Album.list()}" optionKey="id" required="" value="${songInstance?.album?.id}" class="many-to-one"/>
					<span class="help-inline">${hasErrors(bean: songInstance, field: 'album', 'error')}</span>
				</div>
			</div>

			<div class="control-group fieldcontain ${hasErrors(bean: songInstance, field: 'name', 'error')} ">
				<label for="name" class="control-label"><g:message code="song.name.label" default="Name" /></label>
				<div class="controls">
					<g:textField name="name" value="${songInstance?.name}"/>
					<span class="help-inline">${hasErrors(bean: songInstance, field: 'name', 'error')}</span>
				</div>
			</div>

