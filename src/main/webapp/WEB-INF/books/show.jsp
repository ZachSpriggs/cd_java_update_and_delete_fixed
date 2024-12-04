<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" type="text/css" href="./css/style.css">
<title>Show books!</title>
</head>
<body>

	<div class = "wrapper">
	<div class = "left"></div>
	<div class = "books">
	<h1>Title: <c:out value="${book.title}"/></h1>
		<p>Description: <c:out value="${book.description}"/></p>
		<p>Language: <c:out value="${book.language}"/></p>
		<p>Number of pages: <c:out value="${book.numberOfPages}"/></p>
		<p>ID: <c:out value="${book.id}"/></p>
		<a href="/books/${book.id}/edit">Edit Book</a>
	<form action="/books/${book.id}" method="post">
	    <input type="hidden" name="_method" value="delete">
	    <input type="submit" value="Delete">
	</form>
	</div>
	<div class = "right"></div>
	</div>
	
</body>
</html>