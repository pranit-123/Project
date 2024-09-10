document.addEventListener('DOMContentLoaded', function() {
	var today = new Date().toISOString().split('T')[0]; // Get today's date in 'YYYY-MM-DD' format
	document.getElementById('ndate').setAttribute('min', today); // Set the min attribute to today's date
	document.getElementById('ndate').setAttribute('pattern', '\\d{4}-\\d{2}-\\d{2}'); // Set the pattern attribute to ensure YYYY-MM-DD format
});

 function validateForm() {
	var isValid = true;

// Name validation
	var name = document.getElementById("name").value;
	var nameError = document.getElementById("nameError");
	if (name == "" || !/^[a-zA-Z ]+$/.test(name)) {
		nameError.innerHTML = "Please enter a valid notice name (only letters and spaces allowed).";
		isValid = false;
	} else {
		nameError.innerHTML = "";
	}
	
}