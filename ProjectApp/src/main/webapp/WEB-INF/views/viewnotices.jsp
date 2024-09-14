<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page isELIgnored="false" %> 

<!DOCTYPE html>
<html>                                 <!-- viewnotices.jsp means viewadminnotices.css  -->
<head>                                 <!-- viewnotices.css means viewadminnotices.css -->
    <meta charset="UTF-8">
    <title>View Notices</title>
    <!-- Bootstrap CSS -->
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <!-- Custom CSS -->
    <link href="<c:url value='/resources/CSS/adminviewnotices.css' />" rel="stylesheet" type="text/css">
     <!-- Custom JS -->
    <script src="<c:url value='/resources/JS/pegiforviewnote.js' />"></script> 
</head>
<body>
    <div class="container mt-2">
       <div class = navbar>
        <h2 class="mb-2">List of All Notices</h2>
       </div>
        <div id="noticeContainer" class="row">
            
            <!-- Notice content dynamically added by pagination -->
            <c:forEach var="n" items="${list}" varStatus="status">
                <div class="col-md-6 notice-item">
                    <div class="notice-block">
                        <div class="notice-heading">
                            ${n.getNname()}
                        </div>
                        <div class="notice-details">
                            <strong>NID:</strong> ${n.getNid()} <br>
                            <strong>NDate:</strong> ${n.getNdate()} <br>
                            <strong>LOCATION:</strong> ${n.getLocation()} <br>
                            <strong>ORGANIZEFOR:</strong> ${n.getOrganizeFor()}
                            <br><br>
                            <!-- Collapse for description -->
                            <button class="btn-toggle" type="button" data-toggle="collapse" data-target="#desc-${n.getNid()}" aria-expanded="false" aria-controls="desc-${n.getNid()}">
                               View Description
                            </button>
                            <div class="collapse mt-2" id="desc-${n.getNid()}">
                                <strong>Description:</strong> ${n.getNdescription()}
                            </div>
                            <div class="actions">
                                <a href='updnotebyid?nid=${n.getNid()}' class="btn btn-primary btn-sm">UPDATE</a>
                                <a href='delnotebyid?nid=${n.getNid()}' class="btn btn-danger btn-sm">DELETE</a>
                            </div>
                        </div>
                    </div>
                </div>
            </c:forEach>
        </div>

        <!-- Pagination controls -->
        <div id="paginationControls" class="pagination justify-content-center">
            <!-- Pagination buttons will be dynamically inserted here by JavaScript -->
        </div>
    </div>

    <!-- Bootstrap JS and dependencies -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.3/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

</body>
</html>