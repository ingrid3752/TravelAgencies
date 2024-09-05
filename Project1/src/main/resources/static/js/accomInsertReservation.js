function updateId() {
	var accomCode = document.getElementById("accomCode").value;
	var memCode = document.getElementById("memCode").value;
	if (accomCode === "1") {
		accomIdField.value = "1";
	}
	if (memCode === "1") {
		memIdField.value = "1";
	}
}

function validateForm() {
    var memCode = document.getElementById('memCode').value;
    var accomCode = document.getElementById('accomCode').value;
    if (memCode === "" || accomCode === "") {
        alert("All fields must be filled out");
        return false;
    }
    return true;
}
