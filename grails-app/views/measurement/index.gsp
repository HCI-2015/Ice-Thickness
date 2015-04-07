
<%@ page import="ice.thickness.Measurement" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'measurement.label', default: 'Measurement')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-measurement" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-measurement" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="measuringDevice" title="${message(code: 'measurement.measuringDevice.label', default: 'Measuring Device')}" />
					
						<g:sortableColumn property="photo" title="${message(code: 'measurement.photo.label', default: 'Photo')}" />
					
						<g:sortableColumn property="measurementData" title="${message(code: 'measurement.measurementData.label', default: 'Measurement Data')}" />
					
						<g:sortableColumn property="estimatedCovered" title="${message(code: 'measurement.estimatedCovered.label', default: 'Estimated Covered')}" />
					
						<g:sortableColumn property="texture" title="${message(code: 'measurement.texture.label', default: 'Texture')}" />
					
						<g:sortableColumn property="accuracy" title="${message(code: 'measurement.accuracy.label', default: 'Accuracy')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${measurementInstanceList}" status="i" var="measurementInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${measurementInstance.id}">${fieldValue(bean: measurementInstance, field: "measuringDevice")}</g:link></td>
					
						<td>${fieldValue(bean: measurementInstance, field: "photo")}</td>
					
						<td>${fieldValue(bean: measurementInstance, field: "measurementData")}</td>
					
						<td>${fieldValue(bean: measurementInstance, field: "estimatedCovered")}</td>
					
						<td>${fieldValue(bean: measurementInstance, field: "texture")}</td>
					
						<td>${fieldValue(bean: measurementInstance, field: "accuracy")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${measurementInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
