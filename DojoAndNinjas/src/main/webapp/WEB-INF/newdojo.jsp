<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
        <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="/style.css" />
<title>Create a Dojo</title>
</head>
<body>
<div class="formGroup">
	<h1>New Dojo</h1>
	</div>
	<form:form action="/dojos/new" method="POST" modelAttribute="dojo">
		<div class="formGroup">
		<form:label path="name">Name:</form:label>
		<form:errors path="name"></form:errors>
		<form:input path="name"/>
		</div>
		<div class="formGroup">
		<input type="submit" value="Submit"/>
		</div>
	</form:form>
</body>
</html>