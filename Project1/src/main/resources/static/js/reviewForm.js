function updateEntityId() {
    var entityType = document.getElementById("entityType").value;
    var entityIdField = document.getElementById("entityId");
    if (entityType === "1") {
        entityIdField.value = "1";  
    } else if (entityType === "2") {
        entityIdField.value = "2";  
    }
}