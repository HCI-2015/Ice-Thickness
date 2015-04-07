<%--
  Created by IntelliJ IDEA.
  User: apple
  Date: 3/25/15
  Time: 11:21 AM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<asset:stylesheet href="myStyle.css"/>
<body>
<h1> Mapping ICE </h1>

<form method= "post">
    Email: <input type= "text" name= "username"/><br/>
    Password: <input type= "password" name= "password"><br/>
    <input type="button"
           value=" Sign in "
           onclick="document.form.action='http://www.google.com/';
           document.form.submit();">
    <input type="button"
           value=" Forgot? "
           onclick="document.form.action='http://www.google.com/';
           document.form.submit();"><br/>
    <input type= "submit" name= "ok" value= "OK" onclick="location.href='./help/guide1'">
    <input type= "button" value= "Skip Registration" onclick="location.href='./help/guide1'">
</form>

</body>
</html>