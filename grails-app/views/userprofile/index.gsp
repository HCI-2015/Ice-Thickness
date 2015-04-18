<%--
  Created by IntelliJ IDEA.
  User: 123
  Date: 4/17/15
  Time: 8:59 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html xmlns="http://www.w3.org/1999/html" xmlns="http://www.w3.org/1999/html" xmlns="http://www.w3.org/1999/html">
<head>

    <meta name="layout" content="site"/>
    <r:require modules="bootstrap"/>
    <asset:stylesheet src="myStyleRealone.css"/>
</head>

<body>

<div class="jumbotron jumb-margin">
    <div class="container">
        <h2 class="text-center">Mapping Ice</h2>
    </div>
</div>


<g:form controller="Userprofile" action="save" >
    <h3> My Profile Settings </h3>
    <label>Username:</label>
    <input type="text" name="username" value="${params.name}" id="name" />
    </br>
    <label>Measuring Device:</label>
    <g:select name="measuringDevice" from="${['Tape Measure', 'Ice Chisel','Ice Auger']}"/>
    <br/>
    <g:radio name="unitOfMeasure" value="Standard"/>Standard
    <g:radio name="unitOfMeasure" value="Metric"/>Metric<br/>
    <div style="width:400px;height:300px;line-height:1em;overflow:scroll;padding:5px;border:4px double #aaaaaa;">
        <g:each in="${profiles}" var="profile" status="i">
            <div>${i+1}. username:  ${profile.username} </br>measuringDevice:
            ${profile.measuringDevice}, unitofMeasure:   ${profile.unitOfMeasure}
            </br>
            </br>
        </div>
            <hr/>
        </g:each>

    </div>
    <g:actionSubmit value="Save"/>
</g:form>


<ul id="topnav">

    <li id="topnav-1"><a href='/Ice-Thickness/submission' title="H">Map Location</a></li>
    <li id="topnav-3"><a href='/Ice-Thickness/map' title="About Us">Submission</a></li>
    <li id="topnav-4"><a href='/Ice-Thickness/settings' title="Contact Us">Setting</a></li>
    <li id="topnav-5"><a href='/Ice-Thickness/help' title="Contact ">Help</a></li>
</ul>

</body>
</html>
