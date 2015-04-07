<%@ page import="ice.thickness.Measurement" %>



<div class="fieldcontain ${hasErrors(bean: measurementInstance, field: 'measuringDevice', 'error')} required">
	<label for="measuringDevice">
		<g:message code="measurement.measuringDevice.label" default="Measuring Device" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="measuringDevice" required="" value="${measurementInstance?.measuringDevice}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: measurementInstance, field: 'photo', 'error')} required">
	<label for="photo">
		<g:message code="measurement.photo.label" default="Photo" />
		<span class="required-indicator">*</span>
	</label>
	<g:field type="url" name="photo" required="" value="${measurementInstance?.photo}"/>

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

<div class="fieldcontain ${hasErrors(bean: measurementInstance, field: 'additionInfor', 'error')} required">
	<label for="additionInfor">
		<g:message code="measurement.additionInfor.label" default="Addition Infor" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="additionInfor" required="" value="${measurementInstance?.additionInfor}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: measurementInstance, field: 'location', 'error')} required">
	<label for="location">
		<g:message code="measurement.location.label" default="Location" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="location" required="" value="${measurementInstance?.location}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: measurementInstance, field: 'updateTime', 'error')} required">
	<label for="updateTime">
		<g:message code="measurement.updateTime.label" default="Update Time" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="updateTime" required="" value="${measurementInstance?.updateTime}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: measurementInstance, field: 'color', 'error')} required">
	<label for="color">
		<g:message code="measurement.color.label" default="Color" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="color" required="" value="${measurementInstance?.color}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: measurementInstance, field: 'measurementID', 'error')} required">
	<label for="measurementID">
		<g:message code="measurement.measurementID.label" default="Measurement ID" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="measurementID" required="" value="${measurementInstance?.measurementID}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: measurementInstance, field: 'username', 'error')} required">
	<label for="username">
		<g:message code="measurement.username.label" default="Username" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="username" name="username.id" from="${ice.thickness.User.list()}" optionKey="id" required="" value="${measurementInstance?.username?.id}" class="many-to-one"/>

</div>

