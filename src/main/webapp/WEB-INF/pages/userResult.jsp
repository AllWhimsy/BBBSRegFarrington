<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="mvc"%>
<%@ page isELIgnored="false"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Spring MVC From Handling</title>
</head>
<body>
	<h2>Volunteer Registration Summary</h2>
<body bgColor=#EBAD1D>
	<table>
		<tr>
			<td>First Name:</td>
			<td>${u.firstName}</td>
		</tr>
		<tr>
			<td>Last Name:</td>
			<td>${u.lastName}</td>
		</tr>
		<tr>
			<td>Grade of student to pair with:</td>
			<td>${u.gradeMatch}</td>
		</tr>
		<tr>
			<td>Subjects that you can help with:</td>
			<td>${u.subjects}</td>
		</tr>
		<tr>
			<td>Hobbies:</td>
			<td>${u.hobbies}</td>
		</tr>
		<tr>
			<td>Willing to submit to a background test:</td>
			<td>${u.backgroundCheck}</td>
		</tr>
	</table>
	<a href="viewAll.mvc">View all Volunteers</a>
</body>
</html>