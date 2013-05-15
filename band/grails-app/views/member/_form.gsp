<%@ page import="ar.com.asambleacristiana.Member" %>



<div class="fieldcontain ${hasErrors(bean: memberInstance, field: 'emailAddress', 'error')} ">
	<label for="emailAddress">
		<g:message code="member.emailAddress.label" default="Email Address" />
		
	</label>
	<g:field type="email" name="emailAddress" value="${memberInstance?.emailAddress}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: memberInstance, field: 'lastName', 'error')} required">
	<label for="lastName">
		<g:message code="member.lastName.label" default="Last Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="lastName" required="" value="${memberInstance?.lastName}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: memberInstance, field: 'name', 'error')} required">
	<label for="name">
		<g:message code="member.name.label" default="Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="name" required="" value="${memberInstance?.name}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: memberInstance, field: 'instrument', 'error')} required">
	<label for="instrument">
		<g:message code="member.instrument.label" default="Instrument" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="instrument" name="instrument.id" from="${ar.com.asambleacristiana.Instrument.list()}" optionKey="id" required="" value="${memberInstance?.instrument?.id}" class="many-to-one"/>
</div>

