 document.addEventListener('DOMContentLoaded', function () {
            const rowsPerPage = 6;  // Show 6 notices per page
            const notices = document.querySelectorAll('.notice-item');
            const totalNotices = notices.length;
            const totalPages = Math.ceil(totalNotices / rowsPerPage);
            const paginationControls = document.getElementById('paginationControls');

            function showPage(page) {
                const start = (page - 1) * rowsPerPage;
                const end = start + rowsPerPage;

                // Hide all notices
                notices.forEach((notice, index) => {
                    notice.style.display = (index >= start && index < end) ? 'block' : 'none';
                });

                // Highlight the active page button
                document.querySelectorAll('.page-item').forEach(item => item.classList.remove('active'));
                document.getElementById(`page-${page}`).classList.add('active');
            }

            function setupPagination() {
                for (let i = 1; i <= totalPages; i++) {
                    const pageButton = document.createElement('li');
                    pageButton.classList.add('page-item');
                    pageButton.id = `page-${i}`;

                    const link = document.createElement('a');
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

            // Initialize pagination
            setupPagination();
            showPage(1);  // Show the first page initially
        });