<%@ page import="ice.thickness.User" %>



<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'username', 'error')} required">
	<label for="username">
		<g:message code="user.username.label" default="Username" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="username" required="" value="${userInstance?.username}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'password', 'error')} required">
	<label for="password">
		<g:message code="user.password.label" default="Password" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="password" required="" value="${userInstance?.password}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'recentActivities', 'error')} required">
	<label for="recentActivities">
		<g:message code="user.recentActivities.label" default="Recent Activities" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="recentActivities" required="" value="${userInstance?.recentActivities}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'profilePicture', 'error')} required">
	<label for="profilePicture">
		<g:message code="user.profilePicture.label" default="Profile Picture" />
		<span class="required-indicator">*</span>
	</label>
	<g:field type="url" name="profilePicture" required="" value="${userInstance?.profilePicture}"/>

</div>

