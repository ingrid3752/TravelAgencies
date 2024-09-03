function updateEntityId() {
	var entityIdField = document.getElementById("entityId");
	var entityType = document.getElementById("entityType").value;
	
	entityIdField.value = entityType;
}