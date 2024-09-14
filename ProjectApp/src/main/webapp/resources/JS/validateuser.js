// Function to validate the name field
    function validateName() {
        var name = document.getElementById("name").value;
        var nameError = document.getElementById("nameError");
        if (name == "" || !/^[a-zA-Z ]+$/.test(name) || name.length < 3 || name.length > 50 || name.startsWith(' ')) {
            nameError.innerHTML = "Please enter a valid name (no leading spaces, only letters and spaces, min 3 characters, max 50 characters).";
            return false;
        } else {
            nameError.innerHTML = "";
            return true;
        }
    }

    // Function to validate the email field
    function validateEmail() {
        var email = document.getElementById("email").value;
        var emailError = document.getElementById("emailError");
        if (email == "" || !/^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$/.test(email) || email.startsWith(' ')) {
            emailError.innerHTML = "Please enter a valid email address (no leading spaces, only one '@' symbol allowed, not at the start).";
            return false;
        } else {
            emailError.innerHTML = "";
            return true;
        }
    }

    // Function to validate the password field
    function validatePassword() {
        var password = document.getElementById("password").value;
        var passwordError = document.getElementById("passwordError");
        if (password == "" || !/^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[@$!%*?&])[A-Za-z\d@$!%*?&]{8,}$/.test(password) || password.startsWith(' ')) {
            passwordError.innerHTML = "Please enter a valid password (no leading spaces, min 8 characters, at least one lowercase, one uppercase, one digit, and one special character).";
            return false;
        } else {
            passwordError.innerHTML = "";
            return true;
        }
    }

    // Function to validate the contact field
    function validateContact() {
        var contact = document.getElementById("contact").value;
        var contactError = document.getElementById("contactError");
        if (contact == "" || !/^\d{10}$/.test(contact) || contact.startsWith(' ')) {
            contactError.innerHTML = "Please enter a valid contact number (10 digits only, no leading spaces).";
            return false;
        } else {
            contactError.innerHTML = "";
            return true;
        }
    }

    // Function to validate the form on submit
    function validateFormOnSubmit(event) {
        // Call each validation function
        var isNameValid = validateName();
        var isEmailValid = validateEmail();
        var isPasswordValid = validatePassword();
        var isContactValid = validateContact();

        // Prevent form submission if any validation fails
        if (!isNameValid || !isEmailValid || !isPasswordValid || !isContactValid) {
            event.preventDefault(); // Stop form submission
            return false;
        }

        return true;
    }

    // Attach the validation functions to the 'blur' event of each input field and 'submit' event for the form
    window.onload = function() {
        document.getElementById("name").addEventListener("blur", validateName);
        document.getElementById("email").addEventListener("blur", validateEmail);
        document.getElementById("password").addEventListener("blur", validatePassword);
        document.getElementById("contact").addEventListener("blur", validateContact);

        // Add submit event listener to the form
        document.querySelector("form").addEventListener("submit", validateFormOnSubmit);
    };
