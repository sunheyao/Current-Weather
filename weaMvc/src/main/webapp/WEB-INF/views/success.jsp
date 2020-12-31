<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Success Page</title>
</head>
<body>
	<table>
		<tr>
			<td><label>First Name:</label></td>
			<td>${name}</td>
		</tr>
		<tr>
			<td><label>Last Name:</label></td>
			<td>${employee.lastName}</td>
		</tr>
		<tr>
			<td><label>Sex:</label></td>
			<td>${employee.sex}</td>
		</tr>
		<tr>
			<td><label>Date of birth:</label></td>
			<td>${employee.birthDay}</td>
		</tr>
		<tr>
			<td><label>Email:</label></td>
			<td>${employee.email}</td>
		</tr>
		<tr>
			<td><label>Country:</label></td>
			<td>${employee.country}</td>
		</tr>
	</table>
</body>
</html>