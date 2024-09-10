<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page import="org.techhub.ProjectApp.model.Register.*" %>
<%@ page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>User Profile</title>
    <!-- Bootstrap CSS for layout and style -->
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <!-- Custom CSS -->
    <link href="<c:url value='/resources/CSS/viewprofile.css' />" rel="stylesheet" type="text/css">
</head>
<body>
    <div class="container">
        <div class="profile-card">
            <div class="profile-header">
                <h1>Welcome to Profile</h1>
            </div>
            <!-- Profile image with icon -->
            <div class="profile-img">
                <img src="https://cdn-icons-png.flaticon.com/512/149/149071.png" alt="User Profile Icon">
            </div>
            <h2 class="user-name">${name}</h2>
            <div class="profile-info">
                <p><strong>Email : &nbsp &nbsp &nbsp &nbsp </strong>${email}</p>
                <p><strong>Password :&nbsp </strong>${password}</p>
                <p><strong>Contact : &nbsp &nbsp </strong>${contact}</p>
                <p><strong>Role : &nbsp &nbsp &nbsp &nbsp &nbsp </strong>${role}</p>
            </div>
            <div class="profile-actions">
                <button class="btn btn-primary">Edit Profile</button>
            </div>
        </div>
    </div>

    <!-- Bootstrap JS and dependencies -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.3/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>