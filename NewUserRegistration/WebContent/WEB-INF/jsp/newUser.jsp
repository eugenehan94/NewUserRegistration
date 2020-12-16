<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>New User Registration</title>
</head>
<body>

	<h1>New User</h1> 

	<form:form action="userSubmit" modelAttribute="Users">

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
		
		<input type="submit" value="Submit">
	</form:form>



</body>
</html>