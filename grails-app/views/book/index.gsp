
<%@ page import="cs4760progassign.Book" %>
<!DOCTYPE html>
<html>
<head>
	<meta name="layout" content="site"/>
	<title>Book Store Books</title>
</head>

<body>
<h1> BOOKS </h1>
<ul>
	<g:each in="${bkList}">
		<li> ${it.title} by ${it.author} </li>
		<li> ${it.cover}</li>
	</g:each>
	<li> Harry Potter by J.K. Rowling</li>
	<img src="http://s3-ec.buzzfed.com/static/enhanced/webdr06/2013/7/30/18/grid-cell-14969-1375222023-8.jpg" class="img-thumbnail" alt="Cinque Terre" width="304" height="236">
</ul>
</body>
</html>
