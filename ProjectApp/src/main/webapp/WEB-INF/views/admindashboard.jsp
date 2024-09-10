<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Admin Dashboard</title>
    <!-- Bootstrap CSS -->
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <!-- Custom CSS -->
    <link href="<c:url value='/resources/CSS/admindashboard.css' />" rel="stylesheet"/>
    <!-- Font Awesome Icons -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">

   
</head>
<body>

    <!-- Header with Navigation Bar -->
    <header class="header">
       <div class="logo">Notice Board</div> 
        <nav class="navbar">
            <ul>
                <li><a href="addnote"><i class="fas fa-plus-circle"></i> Add New Notice</a></li> 
                <li><a href="viewnote"><i class="fas fa-eye"></i> View All Notices</a></li>
                <li><a href="searchnote"><i class="fas fa-search"></i> Search Notice</a></li>
                <li><a href="getusers"><i class="fas fa-users"></i> View All Users</a></li>
                <li><a href="sendEmail"><i class="fas fa-envelope"></i> Send Email</a></li> 
                <li><a href="indpage"><i class="fas fa-sign-out-alt"></i> Log out</a></li>
            </ul>
        </nav>
    </header>

    <!-- Static Image Section -->
    <section class="static-image">
        <img src="<c:url value='./resources/images/admindash.jpg' />" alt="Dashboard Image">
        <!-- Text Overlay on Top of the Image -->
        <div class="text-overlay">
            <h5>Welcome to the Dashboard, Admin!</h5>
            <p>Your presence makes a difference! Ready to keep everyone informed?<br>
               Manage, update, and create notices with ease. The platform is yours!
            </p>
            <!-- <button class="btn btn-primary">Get Started</button> -->
        </div>
    </section>

    <!-- Dashboard Cards Section -->
    <section class="dashboard-cards">
        <div class="container">
            <div class="row">
                <div class="col-md-4">
                    <div class="card">
                        <div class="card-body">
                            <h5 class="card-title">Total Notices</h5>
                            <p class="card-text">10</p>
                        </div>
                    </div>
                </div>
                <div class="col-md-3">
                    <div class="card">
                        <div class="card-body">
                            <h5 class="card-title">Active Users</h5>
                            <p class="card-text">50</p>
                        </div>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="card">
                        <div class="card-body">
                            <h5 class="card-title">New Notices Today</h5>
                            <p class="card-text">5</p>
                        </div>
                    </div>
                </div>
            </div>
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
