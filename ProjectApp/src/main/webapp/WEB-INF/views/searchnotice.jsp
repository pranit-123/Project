<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page isELIgnored="false" %> 

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>View Notices</title>
    <!-- Bootstrap CSS -->
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <!-- Custom CSS -->
    <link href="<c:url value='/resources/CSS/searchnotice.css' />" rel="stylesheet" type="text/css">
     <!-- Custom JS -->   
    <script src="<c:url value='/resources/JS/searchnotice.js' />"></script>
    
</head>
<body>
    <div class="container mt-2">
        <h2 class="mb-2">List of All Notices</h2>
        
        <!-- Search Bar and Filter Dropdown -->
    <div class="input-group mt-2">
      <input type="text" id="searchInput" class="form-control" placeholder="Search notice..." onkeyup="searchNotices()">
      <div class="input-group-append">
        <select id="searchFilter" class="form-control">
          <option value="" disabled selected>Filter By</option>
          <option value="0">Search by ID</option>
          <option value="1">Search by Name</option>
          <option value="4">Search by Location</option>
        </select>
      </div>
    </div>
    
        <table class="table table-striped table-bordered" id="noticesTable">
            <thead class="thead-dark">
                <tr>
                    <th>NID</th>
                    <th>NName</th>
                    <th>NDESCRIPTION</th>
                    <th>NDate</th>
                    <th>LOCATION</th>
                    <th>ORGANIZEFOR</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach var="n" items="${list}">
                    <tr>
                        <td>${n.getNid()}</td>
                        <td>${n.getNname()}</td>
                        <td>${n.getNdescription()}</td>
                        <td>${n.getNdate()}</td>
                        <td>${n.getLocation()}</td>
                        <td>${n.getOrganizeFor()}</td>
                    </tr>      
                </c:forEach>
            </tbody>
        </table>
        <!-- Message if no records are found -->
        <h1 id="noRecordsMessage" class="text-secondary" >No records found</h1>

    </div>
    <!-- Bootstrap JS and dependencies -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.3/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

   
</body>
</html>
