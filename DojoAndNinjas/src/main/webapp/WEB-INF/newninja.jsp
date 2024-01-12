<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="/style.css" />
<title>Create a Ninja</title>
</head>
<body>
	<div class="formGroup">
		<h1>New Ninja</h1>
	</div>
	<form:form action="/ninjas/new" method="POST" modelAttribute="ninja">
		<div class="formGroup">
			<form:label path="dojo">Dojo: </form:label>
		<form:select path="dojo">
			<c:forEach var="dojo" items="${dojo}">
				<option value="${dojo.id}"><c:out value="${dojo.name}"/></option>
			</c:forEach>
		</form:select>
		</div>
		<div class="formGroup">
			<form:label path="firstName">First Name: </form:label><form:input type="text" path="firstName"/>
		</div>
		<div class="formGroup">	
			<form:label path="lastName">Last Name: </form:label><form:input type="text" path="lastName"/>
		</div>	
		<div class="formGroup">	
			<form:label path="age">Age: </form:label><form:input type="number" path="age" />
		</div>	
		<div class="formGroup">	
			<input type="submit" value="Create"/>
		</div>
	</form:form>
</body>
</html>