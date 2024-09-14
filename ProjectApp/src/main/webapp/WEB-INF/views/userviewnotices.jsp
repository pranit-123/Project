<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page isELIgnored="false" %> 

<!DOCTYPE html>                           <!-- userviewnotices.jsp means viewusernotices.jsp -->                                
<html lang="en">                          <!-- viewnotices.css means userviewnotices.css -->
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>View Event</title>
    <!-- Bootstrap CSS -->
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <!-- Custom CSS -->
    <link href="<c:url value='/resources/CSS/viewnotices.css' />" rel="stylesheet" type="text/css">
     <!-- Custom JS -->
    <script src="<c:url value='/resources/JS/pegiforviewnote.js' />"></script> 
</head>
<body>
    <div class="container mt-4">
        <h2 class="mb-4 text-center">List of All Notices</h2>

        <div id="noticeContainer" class="row">
            <!-- Notice content dynamically added by pagination -->
            <c:forEach var="n" items="${list}" varStatus="status">
                <div class="col-md-6 notice-item">
                    <div class="notice-block">
                        <div class="notice-heading">
                            ${n.getNname()}
                        </div>
                        <div class="notice-details">
                            <strong>Date:</strong> ${n.getNdate()} <br>
                            <strong>Location:</strong> ${n.getLocation()} <br>
                            <strong>Organized For:</strong> ${n.getOrganizeFor()}
                            <br><br>
                            <!-- Collapse for description -->
                            <button class="btn-toggle" type="button" data-toggle="collapse" data-target="#desc-${n.getNid()}" aria-expanded="false" aria-controls="desc-${n.getNid()}">
                                Show Description
                            </button>
                            <div class="collapse mt-2" id="desc-${n.getNid()}">
                                <strong>Description:</strong> ${n.getNdescription()}
                            </div>
                        </div>
                    </div>
                </div>
            </c:forEach>
        </div>

        <!-- Pagination Controls -->
        <nav>
            <ul id="paginationControls" class="pagination"></ul>
        </nav>
    </div>

    <!-- Bootstrap JS and dependencies -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.3/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

</body>
</html>


<%-- 
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page isELIgnored="false" %> 

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>View Event</title>
    <!-- Bootstrap CSS -->
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <!-- Custom CSS -->
    <link href="<c:url value='/resources/CSS/viewnotices.css' />" rel="stylesheet" type="text/css">
</head>
<body>
    <div class="container mt-2">
        <h2 class="mb-2">List of All Notices</h2>
        
        <table class="table table-striped table-bordered" id="noticeTable">
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
            <tbody id="noticeTableBody">
                <!-- JSTL to load all notices -->
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

        <!-- Pagination controls -->
        <div id="paginationControls" class="pagination justify-content-center">
            <!-- Pagination buttons will be dynamically inserted here by JavaScript -->
        </div>
    </div>

    <!-- Bootstrap JS and dependencies -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.3/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

    <!-- JavaScript for pagination -->
    <script>
        const rowsPerPage = 10;  // Number of rows per page
        const tableBody = document.getElementById('noticeTableBody');
        const rows = tableBody.getElementsByTagName('tr');
        const totalRows = rows.length;
        const totalPages = Math.ceil(totalRows / rowsPerPage);
        const paginationControls = document.getElementById('paginationControls');

        function showPage(page) {
            let start = (page - 1) * rowsPerPage;
            let end = start + rowsPerPage;

            // Hide all rows
            for (let i = 0; i < totalRows; i++) {
                rows[i].style.display = 'none';
            }

            // Show rows for the selected page
            for (let i = start; i < end && i < totalRows; i++) {
                rows[i].style.display = 'table-row';  // Use 'table-row' to ensure the table structure is maintained
            }

            // Highlight the current page button
            let currentButton = document.querySelector('.page-item.active');
            if (currentButton) currentButton.classList.remove('active');
            document.getElementById(`page-${page}`).classList.add('active');
        }

        function setupPagination() {
            for (let i = 1; i <= totalPages; i++) {
                let pageButton = document.createElement('li');
                pageButton.classList.add('page-item');
                pageButton.id = `page-${i}`;

                let link = document.createElement('a');
                link.classList.add('page-link');
                link.href = '#';
                link.innerText = i;
                link.addEventListener('click', function (e) {
                    e.preventDefault();
                    showPage(i);
                });

                pageButton.appendChild(link);
                paginationControls.appendChild(pageButton);
            }
        }

        // Initial setup
        document.addEventListener('DOMContentLoaded', function () {
            setupPagination();
            showPage(1);  // Show the first page initially
        });
    </script>
</body>
</html>
 --%>