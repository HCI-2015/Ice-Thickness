<%--
  Created by IntelliJ IDEA.
  User: apple
  Date: 3/25/15
  Time: 10:13 AM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Mapping Ice</title>
</head>

<body>
<div class="jumbotron jumb-margin">
    <div class="container">
        <h1 class="text-center">Mapping Ice</h1>
    </div>
</div>
<input type = "button" value="Map Locations" onclick="window.location.href=('/Ice-Thickness/map/')">
<input type = "button" value="Submission" onclick="window.open('/Ice-Thickness/submission')">
<input type = "button" value="Settings" onclick="window.open('/Ice-Thickness/userProfile')">
<input type = "button" value="help" onclick="window.open('/Ice-Thickness/help')">

</body>
</html>