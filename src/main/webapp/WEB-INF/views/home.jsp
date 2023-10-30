<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="jakarta.tags.core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/security/tags"
	prefix="sec"%>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml"
	xmlns:sec="http://www.springframework.org/security/tags"
	xmlns:th="http://www.thymeleaf.org">
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>Welcome to the Home Page</h1>
	<p>Message: ${message}</p>

	<sec:authorize access="hasRole('ROLE_ADMIN')">
		<p>This content is visible only to users with the 'ROLE_ADMIN'
			role.</p>
	</sec:authorize>
</body>
</html>