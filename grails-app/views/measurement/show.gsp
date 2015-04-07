
<%@ page import="ice.thickness.Measurement" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'measurement.label', default: 'Measurement')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-measurement" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-measurement" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list measurement">
			
				<g:if test="${measurementInstance?.measuringDevice}">
				<li class="fieldcontain">
					<span id="measuringDevice-label" class="property-label"><g:message code="measurement.measuringDevice.label" default="Measuring Device" /></span>
					
						<span class="property-value" aria-labelledby="measuringDevice-label"><g:fieldValue bean="${measurementInstance}" field="measuringDevice"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${measurementInstance?.photo}">
				<li class="fieldcontain">
					<span id="photo-label" class="property-label"><g:message code="measurement.photo.label" default="Photo" /></span>
					
						<span class="property-value" aria-labelledby="photo-label"><g:fieldValue bean="${measurementInstance}" field="photo"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${measurementInstance?.measurementData}">
				<li class="fieldcontain">
					<span id="measurementData-label" class="property-label"><g:message code="measurement.measurementData.label" default="Measurement Data" /></span>
					
						<span class="property-value" aria-labelledby="measurementData-label"><g:fieldValue bean="${measurementInstance}" field="measurementData"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${measurementInstance?.estimatedCovered}">
				<li class="fieldcontain">
					<span id="estimatedCovered-label" class="property-label"><g:message code="measurement.estimatedCovered.label" default="Estimated Covered" /></span>
					
						<span class="property-value" aria-labelledby="estimatedCovered-label"><g:fieldValue bean="${measurementInstance}" field="estimatedCovered"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${measurementInstance?.texture}">
				<li class="fieldcontain">
					<span id="texture-label" class="property-label"><g:message code="measurement.texture.label" default="Texture" /></span>
					
						<span class="property-value" aria-labelledby="texture-label"><g:fieldValue bean="${measurementInstance}" field="texture"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${measurementInstance?.accuracy}">
				<li class="fieldcontain">
					<span id="accuracy-label" class="property-label"><g:message code="measurement.accuracy.label" default="Accuracy" /></span>
					
						<span class="property-value" aria-labelledby="accuracy-label"><g:fieldValue bean="${measurementInstance}" field="accuracy"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${measurementInstance?.additionInfor}">
				<li class="fieldcontain">
					<span id="additionInfor-label" class="property-label"><g:message code="measurement.additionInfor.label" default="Addition Infor" /></span>
					
						<span class="property-value" aria-labelledby="additionInfor-label"><g:fieldValue bean="${measurementInstance}" field="additionInfor"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${measurementInstance?.location}">
				<li class="fieldcontain">
					<span id="location-label" class="property-label"><g:message code="measurement.location.label" default="Location" /></span>
					
						<span class="property-value" aria-labelledby="location-label"><g:fieldValue bean="${measurementInstance}" field="location"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${measurementInstance?.updateTime}">
				<li class="fieldcontain">
					<span id="updateTime-label" class="property-label"><g:message code="measurement.updateTime.label" default="Update Time" /></span>
					
						<span class="property-value" aria-labelledby="updateTime-label"><g:fieldValue bean="${measurementInstance}" field="updateTime"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${measurementInstance?.color}">
				<li class="fieldcontain">
					<span id="color-label" class="property-label"><g:message code="measurement.color.label" default="Color" /></span>
					
						<span class="property-value" aria-labelledby="color-label"><g:fieldValue bean="${measurementInstance}" field="color"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${measurementInstance?.measurementID}">
				<li class="fieldcontain">
					<span id="measurementID-label" class="property-label"><g:message code="measurement.measurementID.label" default="Measurement ID" /></span>
					
						<span class="property-value" aria-labelledby="measurementID-label"><g:fieldValue bean="${measurementInstance}" field="measurementID"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${measurementInstance?.username}">
				<li class="fieldcontain">
					<span id="username-label" class="property-label"><g:message code="measurement.username.label" default="Username" /></span>
					
						<span class="property-value" aria-labelledby="username-label"><g:link controller="user" action="show" id="${measurementInstance?.username?.id}">${measurementInstance?.username?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:measurementInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${measurementInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
