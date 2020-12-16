<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Home</title>

 
<spring:url value="/resources/cssDesign.css" var="mainCss"/>
<link href="${mainCss}" rel="stylesheet" />


</head>
<body>

	<a href="newUser">New User</a>
	<br>
	<a href="viewUser">View Users</a>

</body>
</html>