<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%> 
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" type="text/css" href="./css/style.css">
<title>Create a new book</title>
</head>
<body>

	<div class = "wrapper">
	<div class = "left"></div>
	<div class = "books">
	<h1>New Book</h1>
		<form:form action="/books" method="post" modelAttribute="book">
		    <p>
		        <form:label path="title">Title</form:label>
		        <form:errors path="title"/>
		        <form:input path="title"/>
		    </p>
		    <p>
		        <form:label path="description">Description</form:label>
		        <form:errors path="description"/>
		        <form:textarea path="description"/>
		    </p>
		    <p>
		        <form:label path="language">Language</form:label>
		        <form:errors path="language"/>
		        <form:input path="language"/>
		    </p>
		    <p>
		        <form:label path="numberOfPages">Pages</form:label>
		        <form:errors path="numberOfPages"/>     
		        <form:input type="number" path="numberOfPages"/>
		    </p>    
	    <input type="submit" value="Submit"/>
		</form:form> 
	</div>
	<div class = "right"></div>
	</div>
	
</body>
</html>