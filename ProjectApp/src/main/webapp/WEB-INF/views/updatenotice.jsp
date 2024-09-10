<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page isELIgnored="false" %> 
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Update Notice</title>
    <link href="<c:url value='/resources/CSS/updatenotice.css' />" rel="stylesheet">
    
     <!-- Custom JS -->   
    <script src="<c:url value='/resources/JS/viewnoticespegin.js' />"></script>
    
    <!-- Bootstrap CSS -->
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    
</head>
<body>
    <div class="container mt-5">
        <h2 class="mb-4">Update Notice</h2>
        <form name="frm" action="updatenotice" method="Post">
           
            <c:forEach var="n" items="${list}">
            
            <input type="hidden" name="nid" value="${n.getNid()}"/>
            <div class="form-group">
                <label for="nname">Notice Name:</label>
                <input type="text" class="form-control" id="nname" name="nname" value="${n.getNname()}" required>
            </div>
            <div class="form-group">
                <label for="ndescription">Description:</label>
                <textarea class="form-control" id="ndescription" name="ndescription" required>${n.getNdescription()}</textarea>
            </div>
            <div class="form-group">
                <label for="ndate">Date:</label>
                <input type="date" class="form-control" id="ndate" name="ndate" value="${n.getNdate()}" required>
            </div>
            <div class="form-group">
                <label for="location">Location:</label>
                <select id="location" name="location" required="required" value="${n.getLocation()}" class="form-control">
                    <option value="" disabled selected>Select City</option>
                    <option value="pune">Pune</option>
                    <option value="mumbai">Mumbai</option>
                    <option value="nashik">Nashik</option>
                    <option value="nagar">Nagar</option>
                    <option value="sambhajinagar">Sambhajinagar</option>
                    <option value="nanded">Nanded</option>
                    <option value="parbhani">Parbhani</option>
                    <option value="buldhana">Buldhana</option>
                    <option value="akola">Akola</option>
                    <option value="satara">Satara</option>
                    <option value="sangli">Sangli</option>
                </select>
            </div>
            <div class="form-group">
                <label for="organizerFor">Organize For:</label>
                <select id="organizerFor" name="organizeFor" required="required" value ="${n.getOrganizeFor()}"class="form-control">
                    <option value="" disabled selected>Select Category</option>
                    <option value="student">Student</option>
                    <option value="teacher">Teacher</option>
                    <option value="all">All</option>
                </select>
            </div>
            <button type="submit" class="btn btn-primary">Update Notice</button>
            </c:forEach>
        </form>
    </div>
    <!-- Bootstrap JS and dependencies -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.3/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>