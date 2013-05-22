<%@ page import="ar.com.asambleacristiana.Member" %>



			<div class="control-group fieldcontain ${hasErrors(bean: memberInstance, field: 'emailAddress', 'error')} ">
				<label for="emailAddress" class="control-label"><g:message code="member.emailAddress.label" default="Email Address" /></label>
				<div class="controls">
					<g:field type="email" name="emailAddress" value="${memberInstance?.emailAddress}"/>
					<span class="help-inline">${hasErrors(bean: memberInstance, field: 'emailAddress', 'error')}</span>
				</div>
			</div>

			<div class="control-group fieldcontain ${hasErrors(bean: memberInstance, field: 'lastName', 'error')} required">
				<label for="lastName" class="control-label"><g:message code="member.lastName.label" default="Last Name" /><span class="required-indicator">*</span></label>
				<div class="controls">
					<g:textField name="lastName" required="" value="${memberInstance?.lastName}"/>
					<span class="help-inline">${hasErrors(bean: memberInstance, field: 'lastName', 'error')}</span>
				</div>
			</div>

			<div class="control-group fieldcontain ${hasErrors(bean: memberInstance, field: 'name', 'error')} required">
				<label for="name" class="control-label"><g:message code="member.name.label" default="Name" /><span class="required-indicator">*</span></label>
				<div class="controls">
					<g:textField name="name" required="" value="${memberInstance?.name}"/>
					<span class="help-inline">${hasErrors(bean: memberInstance, field: 'name', 'error')}</span>
				</div>
			</div>

			<div class="control-group fieldcontain ${hasErrors(bean: memberInstance, field: 'instrument', 'error')} required">
				<label for="instrument" class="control-label"><g:message code="member.instrument.label" default="Instrument" /><span class="required-indicator">*</span></label>
				<div class="controls">
					<g:select id="instrument" name="instrument.id" from="${ar.com.asambleacristiana.Instrument.list()}" optionKey="id" required="" value="${memberInstance?.instrument?.id}" class="many-to-one"/>
					<span class="help-inline">${hasErrors(bean: memberInstance, field: 'instrument', 'error')}</span>
				</div>
			</div>

