<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Home</title>

<link rel="stylesheet" href="<c:url value ="/resources/cssDesign.css"/>">

</head>
<body>
	
	<div class="indexHeader">
	<h1>Start Page</h1>
	<p> Welcome </p>
	</div>

	<div class="indexButton">
		<a href="newUser">New User</a> <br> 
		<a href="viewUser">View	Users</a>
	</div>
	
	<div class = "indexBody">
	
	<h1>About This Project</h1>
	
	<p>I wanted to practice coding with eclipse, so I created this website side-project. This website allows
	users to register for an account and all inputed information is stored in the mySQL database. Also, users are able
	to view other registered users, with the ability to edit and delete them. </p>
	
	<p> To prevent any copyright issues, I decided not to download any images and other materials that didn't belong
	to me. Thus, I can upload this project without the fear of getting a sued. </p>
	
	</div>
	
	<div class="indexFooter">Copyright &#9400;</div>

</body>
</html>