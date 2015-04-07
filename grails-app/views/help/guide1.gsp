<%--
  Created by IntelliJ IDEA.
  User: Mitch
  Date: 1/29/2015
  Time: 1:19 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name="layout" content="site"/>
    <r:require modules="bootstrap"/>
    <title>Book Store Home</title>
    <asset:javascript src="geoloc.js"/>
</head>

<body>
<div class="jumbotron jumb-margin">
    <div class="container" height="150">
        <h2 class="text-center">Mapping Ice</h2>
    </div>

</div>
<center><h3>General Ice Thickness Guidlines</h3></center>
<hr/>
<center>2" or less - STAY OFF</center><br/>
<center>4" - Ice fishing or other activities on foot</center><br/>
<center>5" - Snowmobile or ATV</center><br/>
<center>8-12" - Car or small pickup</center><br/>
<center>12-15" - Medium Truck</center><br/>
<center>Ice thickness will vary across a single body of water.  Temperature, snow, and</center><br/>
<center>currents will affect ice safety.  Check the ice at least every 150 feet.</center><br/>
<br/>

<p align="right"><input type = "button" class="tb1" value="Next" onclick="location.href='./guide2'">&nbsp;</p>
</body>


</html>