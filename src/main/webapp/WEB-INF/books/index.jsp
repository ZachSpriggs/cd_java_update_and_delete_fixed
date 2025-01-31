<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" type="text/css" href="./css/style.css">
<title>Books!</title>
</head>
<body>

	<div class = "wrapper">
	<div class = "left"></div>
	<div class = "books">
		<h1>All Books</h1>
			<table>
			    <thead>
			        <tr>
			            <th>Title</th>
			            <th>Description</th>
			            <th>Language</th>
			            <th>Number of Pages</th>
			            <th>ID</th>
			        </tr>
			    </thead>
		    	<tbody>
			        <c:forEach items="${books}" var="book">
				        <tr>
				            <td><c:out value="${book.title}"/></td>
				            <td><c:out value="${book.description}"/></td>
				            <td><c:out value="${book.language}"/></td>
				            <td><c:out value="${book.numberOfPages}"/></td>
				            <td><c:out value="${book.id}"/></td>
				        </tr>
			        </c:forEach>
		    	</tbody>
			</table>
		<a href="/books/new">New Book</a>
	</div>
	<div class = "right"></div>
	</div>

</body>
</html>