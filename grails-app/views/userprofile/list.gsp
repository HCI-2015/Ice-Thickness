
<%@ page import="ice.thickness.Userprofile" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'userprofile.label', default: 'Userprofile')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-userprofile" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-userprofile" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="measuringDevice" title="${message(code: 'userprofile.measuringDevice.label', default: 'Measuring Device')}" />
					
						<g:sortableColumn property="unitOfMeasure" title="${message(code: 'userprofile.unitOfMeasure.label', default: 'Unit Of Measure')}" />
					
						<g:sortableColumn property="username" title="${message(code: 'userprofile.username.label', default: 'Username')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${userprofileInstanceList}" status="i" var="userprofileInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${userprofileInstance.id}">${fieldValue(bean: userprofileInstance, field: "measuringDevice")}</g:link></td>
					
						<td>${fieldValue(bean: userprofileInstance, field: "unitOfMeasure")}</td>
					
						<td>${fieldValue(bean: userprofileInstance, field: "username")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${userprofileInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
