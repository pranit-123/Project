<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Email Page</title>
 <link href="<c:url value='/resources/CSS/sendemail.css' />" rel="stylesheet">
</head>
<body>
	<form action="/sendEmail" method="post">
		<h2>Send Email</h2>
		<label for="to">To:</label> <input type="email" id="to" name="to"
			placeholder="e.g., email1@example.com, email2@example.com" required>

		<label for="subject">Subject:</label> <input type="text" id="subject"
			name="subject" required> <label for="body">Message:</label>
		<textarea id="body" name="body" rows="5" cols="30" required></textarea>

		<input type="submit" value="Send Email">
	</form>
</body>
</html>