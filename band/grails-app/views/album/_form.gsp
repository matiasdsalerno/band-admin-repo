<%@ page import="ar.com.asambleacristiana.Album" %>



			<div class="control-group fieldcontain ${hasErrors(bean: albumInstance, field: 'author', 'error')} required">
				<label for="author" class="control-label"><g:message code="album.author.label" default="Author" /><span class="required-indicator">*</span></label>
				<div class="controls">
					<g:select id="author" name="author.id" from="${ar.com.asambleacristiana.Author.list()}" optionKey="id" required="" value="${albumInstance?.author?.id}" class="many-to-one"/>
					<span class="help-inline">${hasErrors(bean: albumInstance, field: 'author', 'error')}</span>
				</div>
			</div>

			<div class="control-group fieldcontain ${hasErrors(bean: albumInstance, field: 'name', 'error')} ">
				<label for="name" class="control-label"><g:message code="album.name.label" default="Name" /></label>
				<div class="controls">
					<g:textField name="name" value="${albumInstance?.name}"/>
					<span class="help-inline">${hasErrors(bean: albumInstance, field: 'name', 'error')}</span>
				</div>
			</div>

