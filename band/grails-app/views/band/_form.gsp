<%@ page import="ar.com.asambleacristiana.Band" %>



<div class="fieldcontain ${hasErrors(bean: bandInstance, field: 'description', 'error')} ">
	<label for="description">
		<g:message code="band.description.label" default="Description" />
		
	</label>
	<g:textField name="description" value="${bandInstance?.description}"/>
</div>

