<%@ page import="ar.com.asambleacristiana.Event" %>



			<div class="control-group fieldcontain ${hasErrors(bean: eventInstance, field: 'band', 'error')} required">
				<label for="band" class="control-label"><g:message code="event.band.label" default="Band" /><span class="required-indicator">*</span></label>
				<div class="controls">
					<g:select id="band" name="band.id" from="${ar.com.asambleacristiana.Band.list()}" optionKey="id" required="" value="${eventInstance?.band?.id}" class="many-to-one"/>
					<span class="help-inline">${hasErrors(bean: eventInstance, field: 'band', 'error')}</span>
				</div>
			</div>

			<div class="control-group fieldcontain ${hasErrors(bean: eventInstance, field: 'date', 'error')} required">
				<label for="date" class="control-label"><g:message code="event.date.label" default="Date" /><span class="required-indicator">*</span></label>
				<div class="controls">
					<g:datePicker id="date" name="date"  value="${eventInstance?.date}" precision="minute" />
					<span class="help-inline">${hasErrors(bean: eventInstance, field: 'date', 'error')}</span>
				</div>
			</div>

			<div class="control-group fieldcontain ${hasErrors(bean: eventInstance, field: 'director', 'error')} required">
				<label for="director" class="control-label"><g:message code="event.director.label" default="Director" /><span class="required-indicator">*</span></label>
				<div class="controls">
					<g:select id="director" name="director.id" from="${ar.com.asambleacristiana.Member.list()}" optionKey="id" required="" value="${eventInstance?.director?.id}" class="many-to-one"/>
					<span class="help-inline">${hasErrors(bean: eventInstance, field: 'director', 'error')}</span>
				</div>
			</div>

			<div class="control-group fieldcontain ${hasErrors(bean: eventInstance, field: 'name', 'error')} ">
				<label for="name" class="control-label"><g:message code="event.name.label" default="Name" /></label>
				<div class="controls">
					<g:textField name="name" value="${eventInstance?.name}"/>
					<span class="help-inline">${hasErrors(bean: eventInstance, field: 'name', 'error')}</span>
				</div>
			</div>

