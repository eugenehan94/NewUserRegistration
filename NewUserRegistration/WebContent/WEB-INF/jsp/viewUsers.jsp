<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Registered User</title>
<link rel="stylesheet" href="<c:url value ="/resources/cssDesign.css"/>">
</head>
<body>
	
	<div class="viewUsersHeader">
	<h1>Registered Users</h1>
	</div>
	<table class="content-table">
		<tr>
			<th>User Id</th>
			<th>First Name</th>
			<th>Last Name</th>
			<th>Gender</th>
			<th>Telephone Number</th>
			<th>E-mail Address</th>
			<th colspan="2"><a href="enterNewUser">Add New User</a></th>
		</tr>
		<c:forEach var="users" items="${list}">
			<tr>
				<td>${users.userId}</td>
				<td>${users.firstName}</td>
				<td>${users.lastName}</td>
				<td>${users.gender}</td>
				<td>${users.phoneNumber}</td>
				<td>${users.email}</td>
				<td><a href="deleteUser/${users.userId}">Delete</a></td>
				<td><a href="editUser/${users.userId}">Edit</a> <br>
			</tr>
		</c:forEach>
	</table>

</body>
</html>