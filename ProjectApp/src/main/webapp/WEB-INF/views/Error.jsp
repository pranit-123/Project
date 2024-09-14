<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Send email</title>
</head>
<body>
    <center>
        <h2>Sorry, the email was not sent because of the following error:</h2>
        <h3>${exception.message}</h3>
    </center>
</body>
</html>
