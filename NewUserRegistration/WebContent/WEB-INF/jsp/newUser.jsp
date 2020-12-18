<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>New User Registration</title>
<link rel="stylesheet" href="<c:url value ="/resources/cssDesign.css"/>">
</head>
<body id="newUserBody">

<div class="container">
	
	<div class="header">
	<h1>New User</h1> 
	</div>
	
	<div class="outerForm">
	
	<form:form action="userSubmit" modelAttribute="Users">

		<div class="form-input">
		<form:label path="firstName"> First Name:</form:label> 
		<form:input path ="firstName" /> <br>
		<div class="form-errors">
		<form:errors path="firstName"/><br>
		</div>
		</div>
		
		<div class="form-input">
		<form:label path="lastName">Last Name:</form:label>
		<form:input path = "lastName" /> <br>
		<div class="form-errors">
		<form:errors path="lastName"/> <br>
		</div> 
		</div>
		
		<div class="form-input">
		<form:label path="Gender"> Gender: </form:label> 
		<form:radiobutton path="Gender" value="Male"/> Male
		<form:radiobutton path="Gender" value="Female"/>Female<br>
		<div class="form-errors">
		<form:errors path="Gender"/>
		<br>
		</div>
		</div>
		
		<div class="form-input">
		<form:label path="phoneNumber"> Phone Number:</form:label>
		<form:input path="phoneNumber"/><br>
		<div class="form-errors">
		<form:errors path="phoneNumber"/> <br>
		</div>
		</div>
		
		<div class="form-input">
		<form:label path="email">E-mail Address: </form:label>
		<form:input path="email"/><br>
		<div class="form-errors">
		<form:errors path="email"/>
		<br>
		</div> 	
		</div>
		
				
		<input type="submit" value="Submit" id="formButton">
		
	</form:form>

</div>

</div>


</body>
</html>