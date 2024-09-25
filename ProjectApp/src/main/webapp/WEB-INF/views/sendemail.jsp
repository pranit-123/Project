<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Email with Spring MVC</title>
<link href="<c:url value='/resources/CSS/sendemail.css' />"
	rel="stylesheet">
</head>
<body>

	<form action="sendEmail" method="POST">
		<h1>Sending E-mails for New Released Notices</h1>
		<table border="0" width="100%">
			<tr>
				<td>To:</td>
				<td>
					<div class="input-group">
						<!-- Email input -->
						<div class="abc">
						<input type="text" name="recipient" placeholder="Send Multiple Emails : abc@gmail.com, xyz@gmail.com" />
						<!-- Dropdown for category selection -->
						<!-- <select name="userCategory">
							<option value="" disabled selected>Select Category</option>
							<option value="student">Student</option>
							<option value="teacher">Teacher</option>
						</select>
						</div> -->
				 
					</div>
				</td>
			</tr>

			<td>Subject:</td>
			<td><input type="text" name="subject" size="65"
				placeholder="Enter Subject" /></td>
			</tr>
			<tr>
				<td>Message:</td>
				<td><textarea cols="50" rows="10" name="message"
						placeholder="Enter Message"></textarea></td>
			</tr>
			<tr>
				<td colspan="2" align="center"><input type="submit"
					value="Send E-mail" /></td>
			</tr>
		</table>
    </form>
	${m}
</body>
</html>
