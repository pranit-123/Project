function validateForm() 
{	
    var name = document.getElementById("name").value;
    var nameError = document.getElementById("nameError");
    if (name == "" || !/^[a-zA-Z ]+$/.test(name) || name.length < 3 || name.length > 50) {
        nameError.innerHTML = "Please enter a valid notice name (only letters and spaces allowed, min 3 characters, max 50 characters).";
    } else {
        nameError.innerHTML = "";
    }

    var email = document.getElementById("email").value;
    var emailError = document.getElementById("emailError");
    if (email == "" || !/^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$/.test(email) || email.indexOf('@') === 0) {
        emailError.innerHTML = "Please enter a valid email address (only one '@' symbol allowed, not at the start).";
    } else {
        emailError.innerHTML = "";
    }

    var password = document.getElementById("password").value;
    var passwordError = document.getElementById("passwordError");
    if (password == "" || !/^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[@$!%*?&])[A-Za-z\d@$!%*?&]{8,}$/.test(password)) {
        passwordError.innerHTML = "Please enter a valid password (min 8 characters, at least one lowercase, one uppercase, one digit, and one special character).";
    } else {
        passwordError.innerHTML = "";
    }

    var contact = document.getElementById("contact").value;
    var contactError = document.getElementById("contactError");
    if (contact == "" || !/^\d{10}$/.test(contact)) {
        contactError.innerHTML = "Please enter a valid contact number (10 digits only).";
    } else {
        contactError.innerHTML = "";
    }

}