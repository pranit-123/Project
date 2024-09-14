<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Notice Board </title>
<link href="<c:url value='/resources/CSS/index.css' />" rel="stylesheet">
<!-- Bootstrap CSS for carousel -->
<link
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css"
	rel="stylesheet">
</head>
<body>
	<header class="header">
    <marquee direction="alternate" behavior="alternate" style="margin-right: 20px;">
          <div class="logo" style="font-size: 24px; font-weight: bold; color: #333;">Digital Notice Board </div>
    </marquee>		
		<nav class="navbar">
			<ul>
				<li><a href="#home">Home</a></li>
				<li><a href="#about">About</a></li>
				<li><a href="#features">Features</a></li>
				<li><a href="#contact">Contact</a></li>

				<div class="menu-bar">
					<select onchange="location = this.value;" class="start">
						<option disabled selected ">Start with</option>
						<option value="reg">Sign-Up</option>
						<option value="log">User Login</option>
						<option value="log">Admin Login</option>
					</select>
				</div>
			</ul>
		</nav>
	</header>

	<!-- Home Section with Image Slider -->
	<section id="home" class="home-section">
		<div id="homeCarousel" class="carousel slide" data-ride="carousel">
			<ol class="carousel-indicators">
				<li data-target="#homeCarousel" data-slide-to="0" class="active"></li>
				<li data-target="#homeCarousel" data-slide-to="1"></li>
				<li data-target="#homeCarousel" data-slide-to="2"></li>
			</ol>
			<div class="carousel-inner">
				<div class="carousel-item active">
					<img src="<c:url value='./resources/images/img1.jpeg' />"
						class="d-block w-100" alt="First slide">
				</div>
				<div class="carousel-item">
					<img src="<c:url value='./resources/images/img5.jpeg' />"
						class="d-block w-100" alt="Second slide">
				</div>
				<div class="carousel-item">
					<img src="<c:url value='./resources/images/img11.jpg' />"
						class="d-block w-100" alt="Third slide">
				</div>
				<!-- Text Overlay on Top of the Images -->
				<div class="carousel-caption d-md-block">
                    <h5 class="animated-text">Welcome to Our Notice Board</h5>
                    <h5 class="animated-text">Stay informed with the latest updates.</h5>
               </div>
			</div>
			<a class="carousel-control-prev" href="#homeCarousel" role="button"
				data-slide="prev"> <span class="carousel-control-prev-icon"
				aria-hidden="true"></span> <span class="sr-only">Previous</span>
			</a> <a class="carousel-control-next" href="#homeCarousel" role="button"
				data-slide="next"> <span class="carousel-control-next-icon"
				aria-hidden="true"></span> <span class="sr-only">Next</span>
			</a>
		</div>
	</section>

	<section id="about" class="about-section">
		<h2>About Us</h2>
		<div class="about-container">
			<div class="about-block">
				<h3>Welcome to the Online Notice Board!</h3>
				<p>Our application streamlines communication within
					organizations by providing a centralized platform for posting and
					managing notices.</p>
			</div>
			<div class="about-block">
				<p>Designed for students, teachers, and employees, it offers
					real-time updates, role-based access, and easy management of
					announcements.</p>
			</div>
			<div class="about-block">
				<p>Built with modern technologies like Spring MVC and JSP, it
					ensures a user-friendly experience and efficient communication.</p>
			</div>
		</div>
	</section>

	<section id="features" class="features-section">
		<h2>Key Features</h2>
		<table class="features-table">
			<thead>
				<tr>
					<th>Feature</th>
					<th>Description</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td>User Authentication</td>
					<td>Secure login/signup with role-based access.</td>
				</tr>
				<tr>
					<td>Notice Management</td>
					<td>Admin can add, edit, and delete notices.</td>
				</tr>
				<tr>
					<td>Real-Time Updates</td>
					<td>Instant notifications for new and updated notices.</td>
				</tr>
				<tr>
					<td>Responsive Design</td>
					<td>Mobile-friendly interface.</td>
				</tr>
				<tr>
					<td>Search and Filtering</td>
					<td>Easy search and filtering by categories.</td>
				</tr>
				<tr>
					<td>User Profiles</td>
					<td>Manage user profiles and roles.</td>
				</tr>
				<tr>
					<td>Announcement Scheduling</td>
					<td>Schedule notices to be published or expire automatically.</td>
				</tr>
			</tbody>
		</table>
	</section>
<section id="contact" class="contact-section">
    <h2>Contact Us</h2>
    <div class="contact-container">
        <div class="contact-info">
            <p>Email:</p>
            <p>nimkardepranit2019@gmail.com</p>
            <p>vitthalghangal1234@gmail.com</p>
            <p>omkarwadade123@gmail.com</p>
            <p>Phone No: 8668304126</p>
            <p>Phone No: 9284765317</p>
            <p>Phone No: 9823308247</p>
        </div>
        <div class="contact-form">
            <h3>Reach Out to Us</h3>
            <form name ='frm' action="submit" method="post">
                <div class="form-group">
                    <label for="name">Name:</label>
                    <input type="text" id="name" name="name" required>
                </div>
                <div class="form-group">
                    <label for="email">Email:</label>
                    <input type="email" id="email" name="email" required>
                </div>
                <div class="form-group">
                    <label for="message">Message:</label>
                    <textarea id="message" name="message" rows="4" required></textarea>
                </div>
                <button type="submit">Send</button>
            </form>
        </div>
    </div>
</section>


	<footer class="footer">
		<p>
			&copy; 2024 Online Notice Board.<br> All rights reserved.
		</p>
	</footer>

	<!-- Bootstrap and jQuery JavaScript for carousel -->
	<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js"></script>
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
