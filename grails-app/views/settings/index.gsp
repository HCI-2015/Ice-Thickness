<%--
  Created by IntelliJ IDEA.
  User: 123
  Date: 4/17/15
  Time: 9:00 PM
--%>


<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title></title>
    <asset:stylesheet src="toggleButton.css"/>
    <asset:stylesheet src="myStyleRealone.css"/>
</head>

<body>
<div class="jumbotron jumb-margin">
    <div class="container" height="150">
        <h2 class="text-center">Mapping Ice</h2>
    </div>

</div>
<center><h3>Settings</h3></center>
<hr/>

<ul>
    <li>
        <label for='chkbx'>Share your location </label>
        <div class='togglebox'>
            <input type='checkbox' id='chkbx'>
            <label for='chkbx'><b></b></label>
        </div>
    </li>
</ul>
<h3><center><input type = "button" class ="buttontext1" class="myButton" onclick="location.href='./userprofile'"    value="My Profile:           >"></center></h3>
<ul id="topnav">

    <li id="topnav-1"><a href='/Ice-Thickness/submission' title="H">Map Location</a></li>
    <li id="topnav-3"><a href='/Ice-Thickness/map' title="About Us">Submission</a></li>
    <li id="topnav-4"><a href='/Ice-Thickness/settings/' title="Contact Us">Setting</a></li>
    <li id="topnav-5"><a href='/Ice-Thickness/help' title="Contact ">Help</a></li>
</ul>


</body>
</html>