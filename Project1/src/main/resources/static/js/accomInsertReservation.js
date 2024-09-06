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