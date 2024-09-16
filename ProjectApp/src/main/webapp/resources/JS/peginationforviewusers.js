 // not working
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