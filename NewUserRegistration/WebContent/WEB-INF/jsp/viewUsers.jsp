<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin Page</title>
</head>
<body>
	<h1>Registered Users</h1>
	<table border="2" width="70%" cellpadding="2">
		<tr>
			<th>User Id</th>
			<th>First Name</th>
			<th>Last Name</th>
			<th>Gender</th>
		</tr>
		<c:forEach var="users" items="${list}">
			<tr>
				<td>${users.userId}</td>
				<td>${users.firstName}</td>
				<td>${users.lastName}</td>
				<td>${users.gender}</td>
				<td><a href="deleteUser/${users.userId}">Delete</a></td>
				<td><a href="editUser/${users.userId}">Edit</a>
				<br>
			</tr>
		</c:forEach>
	</table>

</body>
</html>