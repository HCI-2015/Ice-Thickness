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
  <title>Book Store Home</title>
  <asset:javascript src="geolocation.js"/>

</head>
<body>
<div class="jumbotron jumb-margin">
  <div class="container" height="150">
    <h2 class="text-center">Ice Thickness Mapping</h2>
  </div>

</div>
<div id="latlong-out"></div>
<div id="map-canvas" style="width:300px; height:250px"></div>
<script>geoFindMe()</script>
<br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Ice Thickness Measurement <br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<g:textField name="measurementfull" size="4" /> <g:textField name="measurementdecimal" size="4" />
<br/>
<br/>
<div class="cc-selector">
  <input id="visa" type="radio" name="credit-card" value="visa" />
  <label class="drinkcard-cc exact" for="visa"></label>
  <input id="mastercard" type="radio" name="credit-card" value="mastercard" />
  <label class="drinkcard-cc est"for="mastercard"></label>
</div>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Measurement Device
<br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Estimated % of Lake Covered
<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<g:textField name="percentage" size="4" />
<br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Texture of Ice
<br/>
<div class="cc-selector">
  <input id="text" type="radio" name="texture" value="snowcov" />
  <label class="drinkcar-cc snow" for="text"></label>
  <input id="text2" type="radio" name="texture" value="smoothcov" />
  <label class="drinkcar-cc smooth"for="text2"></label>
  <input id="text3" type="radio" name="texture" value="smoothcov" />
  <label class="drinkcar-cc rug"for="text3"></label>
</div>
<br/>
<!-- Simple get location -->

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