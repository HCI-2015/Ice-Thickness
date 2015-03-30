<%--
  Created by IntelliJ IDEA.
  User: apple
  Date: 3/25/15
  Time: 11:21 AM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title></title>
</head>

<body>
<html>
<body>
<h1> Mapping ICE </h1>
<h3> My Profile Settings </h3>
<form action= "somewhereelse.html" method= "post">
    Measuring Device:
    <select name= "measuring device">
        <option>Tape Measure</option>
        <option>Other</option>
    </select><br/>
    Unit of Measure:
    <input type= "radio" name= "unit of measure" value= "standard"/> Standard
    <input type= "radio" name= "unit of measure" value= "metric"/> Metric <br/>
    <form>
        <select id="selColor" name="selColor" multiple="true">
        <option>   The Sample Recorded Data will be here          </option>
        </select>
    </form>
        <input type= "submit" name= "done" value= "DONE">
</form>



</body>
</html>
<div>
    <input type = "button" value="Map Locations" onclick="window.location.href=('/Ice-Thickness/map/')">
    <input type = "button" value="Submission" onclick="window.open('/Ice-Thickness/submission')">
    <input type = "button" value="Settings" onclick="window.open('/Ice-Thickness/userProfile')">
    <input type = "button" value="help" onclick="window.open('/Ice-Thickness/help')">

</div>
</body>
</html>