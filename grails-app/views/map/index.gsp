<%--
  Created by IntelliJ IDEA.
  User: apple
  Date: 3/25/15
  Time: 9:51 AM
--%>
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <asset:javascript src="geolocation.js"/>
    <meta name="layout" content="site"/>
    <title>Mapping Ice</title>
</head>

<body>
<div class="jumbotron jumb-margin">
    <div class="container">
        <h2 class="text-center">Mapping Ice</h2>
    </div>
</div>

<select name= "measurement time">
    <option>Last 12 hours</option>
    <option>Last 24 hours</option>
    <option>Last 48 hours</option>
    <option>Last week</option>
    <option>Last two weeks</option>
    <option>Last month</option>
    <option>All</option>
</select>

<select name= "Ice Menu Types">
    <option>rugged</option>
    <option>smooth</option>
    <option>snow covered</option>
    <option>All types</option>
</select>

<select name= "measurement type">
    <option>see inches above</option>
    <option>8</option>
    <option>4</option>
    <option>2</option>
    <option>1</option>
    <option>All</option>
</select>
<!-- Simple get location -->
<div id="latlong-out"></div>
<div id="map-canvas" style="width:500px; height:400px"></div>
<script>geoFindMe()</script>
<script type="text/javascript" src="https://maps.googleapis.com/maps/api/js"></script>

<br/>
<ul id="topnav">
    <li id="topnav-1"><a href='/Ice-Thickness/map' title="H">Map Location</a></li>
    <li id="topnav-3"><a href='/Ice-Thickness/submission' title="About Us">Submission</a></li>
    <li id="topnav-4"><a href='/Ice-Thickness/settings' title="Contact Us">Setting</a></li>
    <li id="topnav-5"><a href='/Ice-Thickness/help' title="Contact ">Help</a></li>
</ul>
</body>

</html>