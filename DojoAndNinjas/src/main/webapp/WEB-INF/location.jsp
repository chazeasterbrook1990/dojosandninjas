<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="/style.css" />
<title>Locations</title>
</head>
<body>
	<div class="formGroup">
	<h1><c:out value="${dojo.name}"/> Location Ninjas</h1>
	</div>
	<div class="formGroup">
	<table>
		<tr>
			<th>First Name</th>
			<th>Last Name</th>
			<th>Age</th>
		</tr>
		<c:forEach var="ninja" items="${ninjas}">
		<tr>
			<td>
				<c:out value="${ninja.firstName}"/>
			</td>
			<td>
				<c:out value="${ninja.lastName}"/>
			</td>
			<td>
				<c:out value="${ninja.age}"/>
			</td>
		</tr>
		
		</c:forEach>
	</table>
	</div>
</body>
</html>