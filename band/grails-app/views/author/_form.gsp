<%@ page import="ar.com.asambleacristiana.Author" %>



			<div class="control-group fieldcontain ${hasErrors(bean: authorInstance, field: 'name', 'error')} ">
				<label for="name" class="control-label"><g:message code="author.name.label" default="Name" /></label>
				<div class="controls">
					<g:textField name="name" value="${authorInstance?.name}"/>
					<span class="help-inline">${hasErrors(bean: authorInstance, field: 'name', 'error')}</span>
				</div>
			</div>

