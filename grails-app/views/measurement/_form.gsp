<%@ page import="ice.thickness.Measurement" %>



<div class="fieldcontain ${hasErrors(bean: measurementInstance, field: 'measuringDevice', 'error')} required">
	<label for="measuringDevice">
		<g:message code="measurement.measuringDevice.label" default="Measuring Device" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="measuringDevice" required="" value="${measurementInstance?.measuringDevice}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: measurementInstance, field: 'measurementData', 'error')} required">
	<label for="measurementData">
		<g:message code="measurement.measurementData.label" default="Measurement Data" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="measurementData" required="" value="${measurementInstance?.measurementData}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: measurementInstance, field: 'estimatedCovered', 'error')} required">
	<label for="estimatedCovered">
		<g:message code="measurement.estimatedCovered.label" default="Estimated Covered" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="estimatedCovered" required="" value="${measurementInstance?.estimatedCovered}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: measurementInstance, field: 'texture', 'error')} required">
	<label for="texture">
		<g:message code="measurement.texture.label" default="Texture" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="texture" required="" value="${measurementInstance?.texture}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: measurementInstance, field: 'accuracy', 'error')} required">
	<label for="accuracy">
		<g:message code="measurement.accuracy.label" default="Accuracy" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="accuracy" required="" value="${measurementInstance?.accuracy}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: measurementInstance, field: 'additionInfor', 'error')} ">
	<label for="additionInfor">
		<g:message code="measurement.additionInfor.label" default="Addition Infor" />
		
	</label>
	<g:textField name="additionInfor" value="${measurementInstance?.additionInfor}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: measurementInstance, field: 'locationA', 'error')} required">
	<label for="locationA">
		<g:message code="measurement.locationA.label" default="Location A" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="locationA" value="${fieldValue(bean: measurementInstance, field: 'locationA')}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: measurementInstance, field: 'locationL', 'error')} required">
	<label for="locationL">
		<g:message code="measurement.locationL.label" default="Location L" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="locationL" value="${fieldValue(bean: measurementInstance, field: 'locationL')}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: measurementInstance, field: 'updateTime', 'error')} ">
	<label for="updateTime">
		<g:message code="measurement.updateTime.label" default="Update Time" />
		
	</label>
	<g:textField name="updateTime" value="${measurementInstance?.updateTime}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: measurementInstance, field: 'username', 'error')} ">
	<label for="username">
		<g:message code="measurement.username.label" default="Username" />
		
	</label>
	<g:select id="username" name="username.id" from="${ice.thickness.User.list()}" optionKey="id" value="${measurementInstance?.username?.id}" class="many-to-one" noSelection="['null': '']"/>

</div>

