<%@ page import="ar.com.asambleacristiana.Album" %>



<div class="fieldcontain ${hasErrors(bean: albumInstance, field: 'author', 'error')} required">
	<label for="author">
		<g:message code="album.author.label" default="Author" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="author" name="author.id" from="${ar.com.asambleacristiana.Author.list()}" optionKey="id" required="" value="${albumInstance?.author?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: albumInstance, field: 'name', 'error')} ">
	<label for="name">
		<g:message code="album.name.label" default="Name" />
		
	</label>
	<g:textField name="name" value="${albumInstance?.name}"/>
</div>

