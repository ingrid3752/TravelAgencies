const quantityInput = document.getElementById("quantity");
const totalPriceElement = document.getElementById("totalPrice");
const pricePerUnit = 1000; // 단위 가격

document.getElementById("increase").addEventListener("click", () => {
  let quantity = parseInt(quantityInput.value);
  quantity++;
  quantityInput.value = quantity;
  updateTotalPrice(quantity);
});

document.getElementById("decrease").addEventListener("click", () => {
  let quantity = parseInt(quantityInput.value);
  if (quantity > 1) {
    quantity--;
    quantityInput.value = quantity;
    updateTotalPrice(quantity);
  }
});

function updateTotalPrice(quantity) {
  const totalPrice = quantity * pricePerUnit;
  totalPriceElement.textContent = totalPrice;
}
