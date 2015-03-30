<%--
  Created by IntelliJ IDEA.
  User: apple
  Date: 3/26/15
  Time: 2:22 PM
--%>
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
  <meta name="layout" content="site"/>
  <r:require modules="bootstrap"/>
  <title>Submission Page</title>
  <asset:javascript src="geolocation.js"/>
</head>

<body>
<div class="jumbotron jumb-margin">
  <div class="container">
    <h2 class="text-center">Ice Thickness Mapping</h2>
  </div>
</div>
<div id="latlong-out"></div>
<div id="map-canvas" style="width:400px; height:250px"></div>
<script>geoFindMe()</script>
<br/>
&nbsp;Ice Thickness Measurement: <g:textField name="measurementfull" size="4" /> <g:textField name="measurementdecimal" size="4" />
<br/>
&nbsp;Accuracy of Measurement:&nbsp;&nbsp;Exact Measurement&nbsp;<g:radio name="estimation" value="Exact"/>   &nbsp;Estimated Measurement&nbsp;<g:radio name="estimation" value="Estimated"/>
<br/>
&nbsp;Measurement Device:
<br/>
&nbsp;Estimated % of Lake Covered:&nbsp;<g:textField name="percentage" size="4" />
<br/>
&nbsp;Texture of Ice: Rugged&nbsp;<g:radio name="texture" value="rugged"/>   &nbsp;Smooth&nbsp;<g:radio name="texture" value="smooth"/> &nbsp;Snow Covered&nbsp;<g:radio name="texture" value="snow"/>
<br/>
&nbsp;Additional Information: <br/>
<g:textArea name="info"></g:textArea>
<br/>
<input type = "button" value="Map Locations" onclick="window.location.href=('/Ice-Thickness/map/')">
<input type = "button" value="Submission" onclick="window.open('/Ice-Thickness/submission')">
<input type = "button" value="Settings" onclick="window.open('/Ice-Thickness/userProfile')">
<input type = "button" value="help" onclick="window.open('/Ice-Thickness/help')">
<script type="text/javascript" src="https://maps.googleapis.com/maps/api/js"></script>
</body>
</html>