<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page isELIgnored="false" %> 

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>View Users</title>
    <!-- Bootstrap CSS -->
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <!-- Custom CSS -->
    <link href="<c:url value='/resources/CSS/viewusers.css' />" rel="stylesheet" type="text/css">
    
</head>
<body>
    <div class="container mt-2">
        <h2 class="mb-2">List of All Users</h2>
        
        <table class="table table-striped table-bordered" id="userTable">
            <thead class="thead-dark">
                <tr>
                    <th>Rid</th>
                    <th>Name</th>
                    <th>Email</th>
                    <th>Password</th>
                    <th>Contact</th>
                    <th>Role</th>
                </tr>
            </thead>
            <tbody id="userTableBody">
                <!-- JSTL to load all users -->
                <c:forEach var="n" items="${list}">
                    <tr>
                        <td>${n.getRid()}</td>
                        <td>${n.getName()}</td>
                        <td>${n.getEmail()}</td>
                        <td>${n.getPassword()}</td>
                        <td>${n.getContact()}</td>
                        <td>${n.getRole()}</td>
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

    <!-- JavaScript for pagination without scroll -->
    <script>
        const rowsPerPage = 10;  // Number of rows per page
        const tableBody = document.getElementById('userTableBody');
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
                rows[i].style.display = 'table-row';  // Use 'table-row' to avoid scroll
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