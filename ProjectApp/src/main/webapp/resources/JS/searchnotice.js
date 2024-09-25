function searchNotices() {
    var input, filter, table, tr, td, i, txtValue, selectedFilter, isRecordFound = false;
    input = document.getElementById("searchInput");
    filter = input.value.trim().toUpperCase(); // Apply trim to remove leading/trailing spaces
    table = document.getElementById("noticesTable");
    tr = table.getElementsByTagName("tr");
    selectedFilter = document.getElementById("searchFilter").value;

    for (i = 1; i < tr.length; i++) {
        tr[i].style.display = "none"; // Initially hide the row
        td = tr[i].getElementsByTagName("td")[selectedFilter]; // Get the selected column
        if (td) {
            txtValue = td.textContent || td.innerText;
            if (txtValue.toUpperCase().indexOf(filter) > -1) {
                tr[i].style.display = ""; // Show the row if matched
                isRecordFound = true;     // Mark that we found a record
            }
        }
    }

    // Show or hide the "No records found" message based on whether any records were found
    var noRecordsMessage = document.getElementById("noRecordsMessage");
    if (isRecordFound) {
        noRecordsMessage.style.display = "none"; 
    } else {
        noRecordsMessage.style.display = "block"; 
    }
}
