<%@ page import="ice.thickness.Measurement" %>
<!DOCTYPE html>
<html>
	<head>
		<style>
		body{
			margin: auto;
			height: inherit;
			max-width: inherit;
			background-color: #0b3841;
			color: white;
			font-size: 14px;
		}
		/* Might want to move the Jumbotron by adding top margin */
		.jumbotron{
			margin-top: 0px;
			background-color: #072d45;
			color: white;
		}
		.h2{
			font-size: 28px;
		}
		/* TOP NAVIGATION BAR
          /////////////////////////////////////*/
		ul#topnav {
			width:530px;
			list-style:none;
			height:71px;
			align-content: center;
		}
		ul#topnav li {
			display:inline;
		}
		ul#topnav li a {
			height:40px;
			float: left;
			text-indent:-9999px;
		}
		ul#topnav li#topnav-1 a {
			width:106px;
			height:71px;
			background:url(http://i.imgur.com/4bCaJLv.jpg) no-repeat 0 0; /* X and Y position at 0 */
			-webkit-filter: brightness(1.8) grayscale(1) opacity(.7);
			-moz-filter: brightness(1.8) grayscale(1) opacity(.7);
			filter: brightness(1.8) grayscale(1) opacity(.7);
		}
		ul#topnav  li#topnav-1 a:hover {
			background:url(http://i.imgur.com/4bCaJLv.jpg) no-repeat 0 0; /* X and Y position at 0 */
			-webkit-filter: brightness(1.2) grayscale(.5) opacity(.9);
			-moz-filter: brightness(1.2) grayscale(.5) opacity(.9);
			filter: brightness(1.2) grayscale(.5) opacity(.9);
			height:71px;
		}
		ul#topnav  li#topnav-1 a.current {
			background:url(http://i.imgur.com/4bCaJLv.jpg) no-repeat 0 0; /* X and Y position at 0 */
			height:71px;
		}
		ul#topnav li#topnav-1a a {
			width:106px;
			height:71px;
			background:url(http://i.imgur.com/4bCaJLv.jpg) no-repeat 0 0; /* X and Y position at 0 */
		}
		ul#topnav  li#topnav-1a a:hover {
			background:url(http://i.imgur.com/4bCaJLv.jpg) no-repeat 0 0; /* X and Y position at 0 */
			height:71px;
		}
		ul#topnav  li#topnav-1a a.current {
			background:url(http://i.imgur.com/4bCaJLv.jpg) no-repeat 0 0; /* X and Y position at 0 */
			height:71px;
		}
		ul#topnav li#topnav-2 a {
			width:106px;
			height:71px;
			background:url(http://i.imgur.com/2pTZx6x.jpg) no-repeat 0 0; /* X and Y position at 0 */
			-webkit-filter: brightness(1.8) grayscale(1) opacity(.7);
			-moz-filter: brightness(1.8) grayscale(1) opacity(.7);
			filter: brightness(1.8) grayscale(1) opacity(.7);
		}
		ul#topnav  li#topnav-2 a:hover {
			background:url(http://i.imgur.com/2pTZx6x.jpg) no-repeat 0 0; /* X and Y position at 0 */
			height:71px;
			-webkit-filter: brightness(1.2) grayscale(.5) opacity(.9);
			-moz-filter: brightness(1.2) grayscale(.5) opacity(.9);
			filter: brightness(1.2) grayscale(.5) opacity(.9);
		}
		ul#topnav  li#topnav-2 a.current {
			background:url(http://i.imgur.com/2pTZx6x.jpg) no-repeat 0 0; /* X and Y position at 0 */
			height:71px;
		}

		ul#topnav li#topnav-2a a {
			width:106px;
			height:71px;
			background:url(http://i.imgur.com/2pTZx6x.jpg) no-repeat 0 0; /* X and Y position at 0 */

		}
		ul#topnav  li#topnav-2a a:hover {
			background:url(http://i.imgur.com/2pTZx6x.jpg) no-repeat 0 0; /* X and Y position at 0 */
			height:71px;

		}
		ul#topnav  li#topnav-2a a.current {
			background:url(http://i.imgur.com/2pTZx6x.jpg) no-repeat 0 0; /* X and Y position at 0 */
			height:71px;
		}
		ul#topnav li#topnav-3 a {
			width:106px;
			background:url(http://i.imgur.com/cGwKeQ9.jpg) no-repeat 0 0; /* X and Y position at 0 */
			height:71px;
			-webkit-filter: brightness(1.8) grayscale(1) opacity(.7);
			-moz-filter: brightness(1.8) grayscale(1) opacity(.7);
			filter: brightness(1.8) grayscale(1) opacity(.7);
		}
		ul#topnav  li#topnav-3 a:hover {
			background:url(http://i.imgur.com/cGwKeQ9.jpg) no-repeat 0 0; /* X and Y position at 0 */
			height:71px;
			-webkit-filter: brightness(1.2) grayscale(.5) opacity(.9);
			-moz-filter: brightness(1.2) grayscale(.5) opacity(.9);
			filter: brightness(1.2) grayscale(.5) opacity(.9);
		}
		ul#topnav  li#topnav-3 a.current {
			background:url(http://i.imgur.com/cGwKeQ9.jpg) no-repeat 0 0; /* X and Y position at 0 */
			height:71px;
		}

		ul#topnav li#topnav-3a a {
			width:106px;
			background:url(http://i.imgur.com/cGwKeQ9.jpg) no-repeat 0 0; /* X and Y position at 0 */
			height:71px;

		}
		ul#topnav  li#topnav-3a a:hover {
			background:url(http://i.imgur.com/cGwKeQ9.jpg) no-repeat 0 0; /* X and Y position at 0 */
			height:71px;

		}
		ul#topnav  li#topnav-3a a.current {
			background:url(http://i.imgur.com/cGwKeQ9.jpg) no-repeat 0 0; /* X and Y position at 0 */
			height:71px;
		}

		ul#topnav li#topnav-4 a {
			width:106px;
			background:url(http://i.imgur.com/AdvuIDa.jpg) no-repeat 0 0; /* X and Y position at 0 */
			height:71px;
			-webkit-filter: brightness(1.8) grayscale(1) opacity(.7);
			-moz-filter: brightness(1.8) grayscale(1) opacity(.7);
			filter: brightness(1.8) grayscale(1) opacity(.7);
		}
		ul#topnav  li#topnav-4 a:hover {
			background:url(http://i.imgur.com/AdvuIDa.jpg) no-repeat 0 0; /* X and Y position at 0 */
			height:71px;
			-webkit-filter: brightness(1.2) grayscale(.5) opacity(.9);
			-moz-filter: brightness(1.2) grayscale(.5) opacity(.9);
			filter: brightness(1.2) grayscale(.5) opacity(.9);
		}
		ul#topnav  li#topnav-4 a.current {
			background:url(http://i.imgur.com/AdvuIDa.jpg) no-repeat 0 0; /* X and Y position at 0 */
			height:71px;
		}

		ul#topnav li#topnav-4a a {
			width:106px;
			background:url(http://i.imgur.com/AdvuIDa.jpg) no-repeat 0 0; /* X and Y position at 0 */
			height:71px;

		}
		ul#topnav  li#topnav-4a a:hover {
			background:url(http://i.imgur.com/AdvuIDa.jpg) no-repeat 0 0; /* X and Y position at 0 */
			height:71px;
		}
		ul#topnav  li#topnav-4a a.current {
			background:url(http://i.imgur.com/AdvuIDa.jpg) no-repeat 0 0; /* X and Y position at 0 */
			height:71px;
		}
		ul#topnav li#topnav-5 a {
			width:106px;
			background:url(http://i.imgur.com/CbwiLdj.jpg) no-repeat 0 0; /* X and Y position at 0 */
			height:71px;
			-webkit-filter: brightness(1.8) grayscale(1) opacity(.7);
			-moz-filter: brightness(1.8) grayscale(1) opacity(.7);
			filter: brightness(1.8) grayscale(1) opacity(.7);
		}
		ul#topnav  li#topnav-5 a:hover {
			background:url(http://i.imgur.com/CbwiLdj.jpg) no-repeat 0 0; /* X and Y position at 0 */
			height:71px;
			-webkit-filter: brightness(1.2) grayscale(.5) opacity(.9);
			-moz-filter: brightness(1.2) grayscale(.5) opacity(.9);
			filter: brightness(1.2) grayscale(.5) opacity(.9);
		}
		ul#topnav  li#topnav-5 a.current {
			background:url(http://i.imgur.com/CbwiLdj.jpg) no-repeat 0 0; /* X and Y position at 0 */
			height:71px;
		}

		ul#topnav li#topnav-5a a {
			width:106px;
			background:url(http://i.imgur.com/CbwiLdj.jpg) no-repeat 0 0; /* X and Y position at 0 */
			height:71px;

		}
		ul#topnav  li#topnav-5a a:hover {
			background:url(http://i.imgur.com/CbwiLdj.jpg) no-repeat 0 0; /* X and Y position at 0 */
			height:71px;

		}
		ul#topnav  li#topnav-5a a.current {
			background:url(http://i.imgur.com/CbwiLdj.jpg) no-repeat 0 0; /* X and Y position at 0 */
			height:71px;
		}
		.cc-selector input{
			margin:0;padding:0;
			-webkit-appearance:none;
			-moz-appearance:none;
			appearance:none;
		}
		.est{background-image:url(http://i.imgur.com/P0gNo8I.jpg);}
		.exact{background-image:url(http://i.imgur.com/8J1qSBh.jpg);}
		.smooth{background-image:url(http://i.imgur.com/f99Uvqm.jpg);}
		.rug{background-image:url(http://i.imgur.com/Skh70S5.jpg);}
		.snow{background-image:url(http://i.imgur.com/KZIEMKp.jpg);}
		.standard{background-image:url(http://i.imgur.com/ZHOFaow.jpg);}
		.metric{background-image:url(http://i.imgur.com/13P1BqO.jpg);}
		.tape{background-image:url(http://i.imgur.com/nWGHZOj.jpg);}
		.other{background-image:url(http://i.imgur.com/nVRH5TN.jpg);}
		.cc-selector input:active +.drinkcard-cc{opacity: .9;}
		.cc-selector input:checked +.drinkcard-cc{
			-webkit-filter: none;
			-moz-filter: none;
			filter: none;
		}
		.drinkcard-cc{
			cursor:pointer;
			background-repeat:no-repeat;
			display:inline-block;
			width:250px;height:40px;
			-webkit-transition: all 100ms ease-in;
			-moz-transition: all 100ms ease-in;
			transition: all 100ms ease-in;
			-webkit-filter: brightness(1.8) grayscale(1) opacity(.7);
			-moz-filter: brightness(1.8) grayscale(1) opacity(.7);
			filter: brightness(1.8) grayscale(1) opacity(.7);
		}
		.drinkcard-cc:hover{
			-webkit-filter: brightness(1.2) grayscale(.5) opacity(.9);
			-moz-filter: brightness(1.2) grayscale(.5) opacity(.9);
			filter: brightness(1.2) grayscale(.5) opacity(.9);
		}
		.drinkcar-cc{
			cursor:pointer;
			background-repeat:no-repeat;
			display:inline-block;
			width:160px;height:40px;
			-webkit-transition: all 100ms ease-in;
			-moz-transition: all 100ms ease-in;
			transition: all 100ms ease-in;
			-webkit-filter: brightness(1.8) grayscale(1) opacity(.7);
			-moz-filter: brightness(1.8) grayscale(1) opacity(.7);
			filter: brightness(1.8) grayscale(1) opacity(.7);
		}
		.drinkcar-cc:hover{
			-webkit-filter: brightness(1.2) grayscale(.5) opacity(.9);
			-moz-filter: brightness(1.2) grayscale(.5) opacity(.9);
			filter: brightness(1.2) grayscale(.5) opacity(.9);
		}
		.cc-selector input:active +.drinkcar-cc{opacity: .9;}
		.cc-selector input:checked +.drinkcar-cc{
			-webkit-filter: none;
			-moz-filter: none;
			filter: none;
		}
		.tb1{
			color: black;
		}
		</style>
	</head>
	<body>
		<div id="edit-measurement" class="content scaffold-edit" role="main">
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<g:hasErrors bean="${measurementInstance}">
			<ul class="errors" role="alert">
				<g:eachError bean="${measurementInstance}" var="error">
				<li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
				</g:eachError>
			</ul>
			</g:hasErrors>
			<g:form url="[resource:measurementInstance, action:'update']" method="PUT" >
				<g:hiddenField name="version" value="${measurementInstance?.version}" />
				<fieldset class="form">
					<g:render template="form"/>
				</fieldset>
				<fieldset class="buttons">
					<g:actionSubmit class="save" action="update" value="${message(code: 'default.button.update.label', default: 'Update')}" />
				</fieldset>
			</g:form>
			<g:form url="[resource:measurementInstance, action:'delete']" method="DELETE" >
				<fieldset class="buttons">

				<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
