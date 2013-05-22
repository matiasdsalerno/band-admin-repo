<%@ page import="ar.com.asambleacristiana.Instrument" %>



			<div class="control-group fieldcontain ${hasErrors(bean: instrumentInstance, field: 'name', 'error')} required">
				<label for="name" class="control-label"><g:message code="instrument.name.label" default="Name" /><span class="required-indicator">*</span></label>
				<div class="controls">
					<g:textField name="name" required="" value="${instrumentInstance?.name}"/>
					<span class="help-inline">${hasErrors(bean: instrumentInstance, field: 'name', 'error')}</span>
				</div>
			</div>

