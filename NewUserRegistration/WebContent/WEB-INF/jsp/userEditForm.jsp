<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="<c:url value ="/resources/cssDesign.css"/>">
</head>
<body>

	<h1>Edit User</h1>
	<form:form method="POST" action="/NewUserRegistration/editsave">
	
		<form:label path="userId">UserId:</form:label> 
		<form:input path="userId"/> <br><br>
	
		<form:label path="firstName"> First Name:</form:label> 
		<form:input path ="firstName" /> <br>
		<form:errors path="firstName"/><br><br>
		
		<form:label path="lastName">Last Name:</form:label>
		<form:input path = "lastName" /> <br>
		<form:errors path="lastName"/> <br> <br>
		
		<form:label path="Gender"> Gender: </form:label> 
		<form:radiobutton path="Gender" value="Male"/> Male
		<form:radiobutton path="Gender" value="Female"/>Female<br>
		<form:errors path="Gender"/>
		<br><br>
		
		<form:label path="phoneNumber"> Phone Number:</form:label>
		<form:input path="phoneNumber"/><br>
		<form:errors path="phoneNumber"/> <br><br>
		
		<form:label path="email">E-mail Address: </form:label>
		<form:input path="email"/><br>
		<form:errors path="email"/>
		<br><br>
		
		<input type="submit" value="Save Edits">
		<a href="cancelEdit">Cancel</a>
		

	</form:form>

</body>
</html>