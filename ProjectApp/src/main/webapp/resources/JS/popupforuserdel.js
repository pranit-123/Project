function confirmDelete(email) {
    Swal.fire({
        title: 'Are you sure?',
        text: 'You will not be able to recover this user!',
        icon: 'warning',
        showCancelButton: true,
        confirmButtonColor: '#d33',
        cancelButtonColor: '#3085d6',
        confirmButtonText: 'Yes, delete it!'
    }).then((result) => {
        if (result.isConfirmed) {
            // Redirect to delete action with email instead of ID
            window.location.href = 'deluserbyemail?email=' + encodeURIComponent(email);
        }
    });
}
function confirmUpdate(email) {
    Swal.fire({
        title: 'Are you sure?',
        text: 'You are about to update this user!',
        icon: 'info',
        showCancelButton: true,
        confirmButtonColor: '#28a745',
        cancelButtonColor: '#3085d6',
        confirmButtonText: 'Yes, update it!'
    }).then((result) => {
        if (result.isConfirmed) {
            // Redirect to update action with email instead of ID
            window.location.href = 'upduserbyemail?email=' + encodeURIComponent(email);
        }                          
    });
}

