<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

	<h1>Edit User</h1>
	<form:form method="POST" action="/NewUserRegistration/editsave">
	
		UserId: <form:input path="userId"/> <br><br>
	
	First Name: <form:input path ="firstName" /> <br> <br>
		Last Name: <form:input path = "lastName" /> <br> <br>
		
		Gender: Male: <form:radiobutton path="Gender" value="Male"/> Female: <form:radiobutton path="Gender" value="Female"/>
		<br><br>
		<input type="submit" value="Save Edits">


	</form:form>

</body>
</html>