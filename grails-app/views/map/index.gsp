<%--
  Created by IntelliJ IDEA.
  User: apple
  Date: 3/25/15
  Time: 9:51 AM
--%>

<html>
<head>
    <asset:javascript src="geolocation.js"/>
    <meta name="layout" content="site"/>
    <title>Mapping Ice</title>
</head>

<body>
<div class="jumbotron jumb-margin">
    <div class="container">
        <h1 class="text-center">Mapping Ice</h1>
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
    <option>All</option>
</select>
<!-- Simple get location -->
<p style="margin-top:20px"><button onclick="geoFindMe()" >Show my location</button></p>
<div id="latlong-out"></div>
<div id="map-canvas" style="width:500px; height:400px"></div>
<script type="text/javascript" src="https://maps.googleapis.com/maps/api/js"></script>

<div>
    <input type = "button" value="Map Locations" onclick="window.location.href=('#')">
    <input type = "button" value="Settings" onclick="window.open('/Ice-Thickness/userProfile')">
    <input type = "button" value="help" onclick="window.open('/Ice-Thickness/help')">

</div>

</body>

</html>