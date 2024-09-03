function updateReservation() {
	var accomCode = document.getElementById("accomCode");
	var memCode = document.getElementById("memCode").value;
	
	entityIdField.value = entityType;
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