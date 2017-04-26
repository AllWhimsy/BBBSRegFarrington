<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="mvc"%>
<%@ page isELIgnored="false"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Spring MVC Form Handling</title>
</head>
<body>
	<h2>Big Brothers Big Sisters Volunteer Registration</h2>
	<mvc:form modelAttribute="user" action="result.mvc">
		<table>
			<tr>
				<td><mvc:label path="FirstName">First Name</mvc:label></td>
				<td><mvc:input path="FirstName" /></td>
			</tr>
			<tr>
				<td><mvc:label path="lastName">Last Name</mvc:label></td>
				<td><mvc:input path="lastName" /></td>
			</tr>
			</tr>
			<tr>
				<td><mvc:label path="GradeMatch">Grade of student to pair with</mvc:label></td>
				<td><mvc:select path="GradeMatch" items="${grades}" /></td>
			</tr>
			<tr>
				<td><mvc:label path="Subjects">Subjects that you can help with</mvc:label></td>
				<td><mvc:input path="Subjects" /></td>
			</tr>
			<tr>
				<td><mvc:label path="Hobbies">Personal Interests/Hobbies</mvc:label></td>
				<td><mvc:textarea path="Hobbies" /></td>
			</tr>
			<tr>
				<td><mvc:label path="backgroundCheck">Are you willing to submit to a background check?</mvc:label></td>
				<td><mvc:radiobuttons path="backgroundCheck" /></td>
			</tr>
			<tr>
				<td colspan="2"><input type="submit" value="Submit" /></td>
			</tr>
		</table>
	</mvc:form>
	<a href="viewAll.mvc">View all Volunteers</a>
</body>
</html>