<%--
  Created by IntelliJ IDEA.
  User: apple
  Date: 4/7/15
  Time: 6:45 AM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name="layout" content="site"/>
    <title></title>
</head>

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
        <select id = "selColor" name = "selColor" multiple="true">
            <option> The Sample Recorded Data Will be here </option>
            </select>
    </form>
    <input type= "submit" name= "done" value= "DONE">
</form>
<ul id="topnav">
    <li id="topnav-1"><a href='/Ice-Thickness/map' title="H">Map Location</a></li>
    <li id="topnav-3"><a href='/Ice-Thickness/submission' title="About Us">Submission</a></li>
    <li id="topnav-4"><a href='/Ice-Thickness/settings' title="Contact Us">Setting</a></li>
    <li id="topnav-5"><a href='/Ice-Thickness/help' title="Contact ">Help</a></li>
</ul>
</body>
</html>