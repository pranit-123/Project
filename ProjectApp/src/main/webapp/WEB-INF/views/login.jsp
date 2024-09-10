<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login Page</title>
<link href="<c:url value='/resources/CSS/login.css' />" rel="stylesheet">
</head>
<body>
	<div class="login-container">
		<form action="dash" method="post" id="loginForm">
			<label for="email">Email:</label> <input type="text" id="email"
				name="email" placeholder="Enter Email" required="required"><br>
			<br> <label for="password">Password:</label> <input
				type="password" id="password" name="password"
				placeholder="Enter Password" required="required"><br>
			<br> <input type="submit" name="Login" value="Login" /><br><br>
			     <a href="reg" class="register">Register</a>
			<p class="message"
				style="color: red; text-align: center; margin-top: 20px;">
				<c:if test="${not empty msg1}">
                ${msg1}
            </c:if>
			</p>
		</form>

	</div>
</body>
</html>
