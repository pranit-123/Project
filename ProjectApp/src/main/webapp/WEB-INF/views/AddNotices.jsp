<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
    <meta charset="UTF-8">
    <title>Add Notice</title>
    <link href="<c:url value='/resources/CSS/addnotice.css' />" rel="stylesheet">
    <!-- Include Bootstrap CSS for consistent styling across pages -->
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
     <script src="<c:url value='/resources/JS/addnotice.js' />"></script>
</head>
<body>
    <!-- Main Content - Only the Form -->
    <div class="container mt-5">
        <div class="form-container">
            <h2>Add Notice</h2>
            <form action="afteraddnote" method="post" onkeyup = "validateForm()">
                <label for="name">Notice Name:</label> 
                <input type="text" id="name" name="nname" required="required"><br> 
                <div id="nameError" style="color:red; font-size:0.9rem;"></div>
                
                <label for="description">Description:</label>
                <textarea id="description" name="ndescription" required="required"></textarea><br> 
                
                <label for="date">Date:</label> 
                <input type="date" id="ndate" name="ndate" required="required"><br> 

                <label for="location">Location:</label>
                <select id="location" name="location" required="required">
                    <option value="" disabled selected>Select City</option>
                    <option value="pune">Pune</option>
                    <option value="mumbai">Mumbai</option>
                    <option value="nashik">Nashik</option>
                    <option value="nagar">Nagar</option>
                    <option value="sambhajinagar">Sambhaji nagar</option>
                    <option value="nanded">Nanded</option>
                    <option value="parbhani">Parbhani</option>
                    <option value="buldhana">Buldhana</option>
                    <option value="akola">Akola</option>
                    <option value="satara">Satara</option>
                    <option value="sangli">Sangli</option>
                </select><br> 

                <label for="organizerFor">Organize For:</label> 
                <select id="organizerFor" name="organizeFor" required="required">
                    <option value="" disabled selected>Select Category</option>
                    <option value="student">Student</option>
                    <option value="teacher">Teacher</option>
                    <option value="all">All</option>
                </select><br>

                <!-- Add a class to the submit button for consistent styling -->
                <input type="submit" class="submit-button" name="s" value="Add Notice" />
            </form>
            <div class="message">${msg2}</div><br>
                <a href="dashb" class="dashboard-link">Go Dashboard</a>
        </div>
    </div>

    <!-- Include Bootstrap JS and dependencies -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    
</body>
</html>
