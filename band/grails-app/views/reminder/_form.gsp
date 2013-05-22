<%@ page import="ar.com.asambleacristiana.Reminder" %>



			<div class="control-group fieldcontain ${hasErrors(bean: reminderInstance, field: 'date', 'error')} required">
				<label for="date" class="control-label"><g:message code="reminder.date.label" default="Date" /><span class="required-indicator">*</span></label>
				<div class="controls">
					<g:datePicker name="date" precision="minute"  value="${reminderInstance?.date}"  />
					<span class="help-inline">${hasErrors(bean: reminderInstance, field: 'date', 'error')}</span>
				</div>
			</div>

			<div class="control-group fieldcontain ${hasErrors(bean: reminderInstance, field: 'event', 'error')} required">
				<label for="event" class="control-label"><g:message code="reminder.event.label" default="Event" /><span class="required-indicator">*</span></label>
				<div class="controls">
					<g:select id="event" name="event.id" from="${ar.com.asambleacristiana.Event.list()}" optionKey="id" required="" value="${reminderInstance?.event?.id}" class="many-to-one"/>
					<span class="help-inline">${hasErrors(bean: reminderInstance, field: 'event', 'error')}</span>
				</div>
			</div>