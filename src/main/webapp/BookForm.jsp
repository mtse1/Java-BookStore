<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Book Store</title>
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/css/style.css">
</head>
<body>
	<ul>
		<li><a href="list">Book Listing</a></li>
		<li><a class="active" href="admin">Admin</a></li>
	</ul>

	<div class="container">
		<form name="book_form" method="post" action="insert">
			<c:if test="${book == null}">
				<h2>New Book Form</h2>
			</c:if>
			<c:if test="${book != null}">
				<h2>Edit Book Form</h2>
				<input type="hidden" name="id" value="${ book.id }" />
			</c:if>
			<p>
				<label>Title:</label> <input type="text" name="booktitle" value="${book.title}" />
			</p>
			<p>
				<label>Author:</label> <input type="text" name="bookauthor" value="${book.author}" />
			</p>
			<p>
				<label>Price:</label> <input type="text" name="bookprice" value="${book.price}"/>
			</p>
			
			<p>
				<input type="submit" value="Submit">
			</p>
		</form>
	</div>
</body>
</html>
