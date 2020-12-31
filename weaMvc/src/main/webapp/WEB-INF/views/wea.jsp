<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Profile Employee</title>
</head>

<body>

	<h1>Profile Employee</h1>

	<form:form method="POST" modelAttribute="employee">
		<table>
			<tr>
				<td><label>First Name</label></td>
				<td><form:input type="text" path="firstName" id="firstName" />
					<form:errors path="firstName" style="color:red" /></td>
			</tr>
			<tr>
				<td><label>Last Name</label></td>
				<td><form:input type="text" path="lastName" id="lastName" /> <form:errors
						path="lastName" style="color:red" /></td>
			</tr>
			<tr>
				<td><label>Sex</label></td>
				<td><form:radiobutton path="sex" value="Male" />Male <form:radiobutton
						path="sex" value="Female" />Female <form:errors path="sex"
						style="color:red" /></td>
			</tr>
			<tr>
				<td><label>Date of birth</label></td>
				<td><form:input type="text" path="birthDay" id="birthDay" /> <form:errors
						path="birthDay" style="color:red" /></td>
			</tr>
			<tr>
				<td><label>Email</label></td>
				<td><form:input type="text" path="email" id="email" /> <form:errors
						path="email" style="color:red" /></td>
			</tr>
			<tr>
				<td><label>Country</label></td>
				<td><form:select path="country" id="country">
						<form:option value="">Select Country</form:option>
						<form:options items="${countries}" />
					</form:select> <form:errors path="country" style="color:red" /></td>
			</tr>
			<tr>
				<td colspan="2"><input type="submit" value="Submit"></td>
			</tr>
		</table>
	</form:form>

</body>
</html>