<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>User Dashboard</title>
    <!-- Bootstrap CSS -->
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <!-- Custom CSS -->
    <link href="<c:url value='/resources/CSS/userdashboard.css' />" rel="stylesheet"/>
    <!-- Font Awesome Icons -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
</head>
<body>

    <!-- Header with Navigation Bar -->
    <header class="header">
        <div class="logo">Digital Notice Board</div>
        <nav class="navbar">
            <ul>
                <li><a href="userviewnote"><i class="fas fa-eye"></i> View All Notices</a></li>
                <li><a href="searchnote"><i class="fas fa-search"></i> Search Notice</a></li>
                <li><a href="<c:url value='/viewprof' />"><i class="fas fa-user"></i> View Profile</a></li>
                <!-- <li><a href="indpage"><i class="fas fa-sign-out-alt"></i> Log out</a></li> -->
                <li><a href="logout"><i class="fas fa-sign-out-alt"></i> Log out</a></li>
                
            </ul>
        </nav>
    </header>

    <!-- Static Image Section -->
    <section class="static-image">
        <img src="<c:url value='./resources/images/img9.jpg' />" alt="Dashboard Image">
        <!-- Text Overlay on Top of the Image -->
        <div class="text-overlay">
            <h5>Welcome to the User Dashboard!</h5>
            <p>Stay updated with the latest announcements and manage your notices effortlessly...</p>
        </div>
    </section>

    <!-- Footer -->
    <footer class="footer">
        <p>&copy; 2024 Notice Board. All Rights Reserved.</p>
        Contact us: <a href="mailto:info@noticeboard.com">info@noticeboard.com</a>
    </footer>

    <!-- Bootstrap JS and dependencies -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>