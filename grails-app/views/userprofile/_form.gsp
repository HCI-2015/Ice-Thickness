<%@ page import="ice.thickness.Userprofile" %>



<div class="fieldcontain ${hasErrors(bean: userprofileInstance, field: 'measuringDevice', 'error')} required">
	<label for="measuringDevice">
		<g:message code="userprofile.measuringDevice.label" default="Measuring Device" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="measuringDevice" required="" value="${userprofileInstance?.measuringDevice}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: userprofileInstance, field: 'unitOfMeasure', 'error')} required">
	<label for="unitOfMeasure">
		<g:message code="userprofile.unitOfMeasure.label" default="Unit Of Measure" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="unitOfMeasure" required="" value="${userprofileInstance?.unitOfMeasure}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: userprofileInstance, field: 'username', 'error')} required">
	<label for="username">
		<g:message code="userprofile.username.label" default="Username" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="username" required="" value="${userprofileInstance?.username}"/>

</div>

