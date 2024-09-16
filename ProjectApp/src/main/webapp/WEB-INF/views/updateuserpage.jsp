<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page isELIgnored="false" %> 
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Update User</title>
    <link href="<c:url value='/resources/CSS/updateuser.css' />" rel="stylesheet">
    
    <!-- Custom JS -->   
    <script src="<c:url value='/resources/JS/updateuser.js' />"></script>
    
    <!-- Bootstrap CSS -->
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    
</head>
<body>
    <div class="container mt-5">
        <h2 class="mb-4">Update User Information</h2>
        <form name="frm" action="updateuser" method="Post">
            <c:forEach var="u" items="${list}">
                <input type="hidden" name="email" value="${u.getEmail()}"/>
                <div class="form-group">
                    <label for="name">Name:</label>
                    <input type="text" class="form-control" id="name" name="name" value="${u.getName()}" required>
                </div>
                <div class="form-group">
                    <label for="password">Password:</label>
                    <input type="password" class="form-control" id="password" name="password" value="${u.getPassword()}" required>
                </div>
                <div class="form-group">
                    <label for="contact">Contact:</label>
                    <input type="text" class="form-control" id="contact" name="contact" value="${u.getContact()}" required>
                </div>
                <div class="form-group">
                    <label for="role">Role:</label>
                    <select id="role" name="role" class="form-control" required>
                        <option value="" disabled selected>Select Role</option>
                        <option value="student" ${u.getRole() == 'student' ? 'selected' : ''}>student</option>
                        <option value="teacher" ${u.getRole() == 'teacher' ? 'selected' : ''}>teacher</option>
                        
                    </select>
                </div>
                <button type="submit" class="btn btn-primary">Update User</button>
            </c:forEach>
        </form>
    </div>
    <!-- Bootstrap JS and dependencies -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.3/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
