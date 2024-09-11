<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<%@ page isELIgnored="false" %>   
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Registration Page</title>
<link href="<c:url value='/resources/CSS/registration.css' />" rel="stylesheet">
<script src="<c:url value='/resources/JS/validateuser.js' />"></script> 

</head>
<body>
  <div class="form-container">
    <form action="register" method="post" class="registration-form" oninput="validateForm()">
      <label for="name">Name:</label>
      <input type="text" id="name" name="name" placeholder="Enter Name" required="required"><br>
      <div id="nameError" style="color:red; font-size:0.9rem;"></div><br>

      <label for="email">Email:</label>
      <input type="email" id="email" name="email" placeholder="Enter Email" required="required"><br>
      <div id="emailError" style="color:red; font-size:0.9rem;"></div><br>

      <label for="password">Password:</label>
      <input type="password" id="password" name="password" placeholder="Enter Password" required="required"><br>
      <div id="passwordError" style="color:red; font-size:0.9rem;"></div><br>

      <label for="contact">Contact:</label>
      <input type="text" id="contact" name="contact" placeholder="Enter Contact Number" required="required"><br>
      <div id="contactError" style="color:red; font-size:0.9rem;"></div><br>

      <label for="role">Role:</label>
      <select id="role" name="role" required="required">
        <option value="" disabled selected>Select your role</option>
        <option value="student">Student</option>
        <option value="teacher">Teacher</option>
      </select><br><br>

      <input type="submit" name="s" value="Sign Up"><br><br>
      <div class="Login"><a href="log" >Login</a></div><br>
      
      <div class="message" style="color: red; text-align: center; margin-top: 5px;">
        ${msg}
        ${msgforreg}
      </div>
    </form> 
  </div>
</body>
</html>
