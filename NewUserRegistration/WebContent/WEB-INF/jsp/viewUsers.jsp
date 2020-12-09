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
<c:forEach var="users" items="${list}">
<tr>
<td> ${users.userId}</td>
<td> ${users.firstName}</td>
<td> ${users.lastName}</td>
<td> ${users.gender}</td> <br>
</tr>
</c:forEach>

</body>
</html>