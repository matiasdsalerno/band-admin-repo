<%@ page import="ar.com.asambleacristiana.Band" %>



			<div class="control-group fieldcontain ${hasErrors(bean: bandInstance, field: 'description', 'error')} ">
				<label for="description" class="control-label"><g:message code="band.description.label" default="Description" /></label>
				<div class="controls">
					<g:textField name="description" value="${bandInstance?.description}"/>
					<span class="help-inline">${hasErrors(bean: bandInstance, field: 'description', 'error')}</span>
				</div>
			</div>

