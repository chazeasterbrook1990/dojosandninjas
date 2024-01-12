<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>All Dojos</title>
<link rel="stylesheet" href="/style.css" />
</head>
<body>
	<div class="formGroup">
	<h1>All Dojos</h1>
	</div>
	<div class="formGroup">
	<table>
		<tr>
			<th>Name</th>
			<th>On Roster</th>
			<c:forEach var="dojo" items="${dojo}">
				<tr>
					<td>
						<c:out value="${dojo.name}"></c:out>
					</td>
				<td>
					<a href="/dojos/${dojo.id}">Ninjas</a>
				</td>
				</tr>
			</c:forEach>
	</table>
	</div>
</body>
</html>