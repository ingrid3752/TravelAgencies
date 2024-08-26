// 티켓 A
const quantityInputA = document.getElementById("quantity");
const totalPriceElementA = document.getElementById("totalPrice");
const pricePerUnitA = 500; // 티켓 A의 단위 가격

document.getElementById("plus").addEventListener("click", () => {
  let quantity = parseInt(quantityInputA.value);
  quantity++;
  quantityInputA.value = quantity;
  updateTotalPriceA(quantity);
});

document.getElementById("minus").addEventListener("click", () => {
  let quantity = parseInt(quantityInputA.value);
  if (quantity > 1) {
    quantity--;
    quantityInputA.value = quantity;
    updateTotalPriceA(quantity);
  }
});

function updateTotalPriceA(quantity) {
  const totalPrice = quantity * pricePerUnitA;
  totalPriceElementA.textContent = totalPrice;
}

// 티켓 B
const quantityInputB = document.getElementById("quantity1");
const totalPriceElementB = document.getElementById("totalPrice1");
const pricePerUnitB = 400; // 티켓 B의 단위 가격

document.getElementById("plus1").addEventListener("click", () => {
  let quantity = parseInt(quantityInputB.value);
  quantity++;
  quantityInputB.value = quantity;
  updateTotalPriceB(quantity);
});

document.getElementById("minus1").addEventListener("click", () => {
  let quantity = parseInt(quantityInputB.value);
  if (quantity > 1) {
    quantity--;
    quantityInputB.value = quantity;
    updateTotalPriceB(quantity);
  }
});

function updateTotalPriceB(quantity) {
  const totalPrice = quantity * pricePerUnitB;
  totalPriceElementB.textContent = totalPrice;
}

// 티켓 C
const quantityInputC = document.getElementById("quantity2");
const totalPriceElementC = document.getElementById("totalPrice2");
const pricePerUnitC = 300; // 티켓 C의 단위 가격

document.getElementById("plus2").addEventListener("click", () => {
  let quantity = parseInt(quantityInputC.value);
  quantity++;
  quantityInputC.value = quantity;
  updateTotalPriceC(quantity);
});

document.getElementById("minus2").addEventListener("click", () => {
  let quantity = parseInt(quantityInputC.value);
  if (quantity > 1) {
    quantity--;
    quantityInputC.value = quantity;
    updateTotalPriceC(quantity);
  }
});

function updateTotalPriceC(quantity) {
  const totalPrice = quantity * pricePerUnitC;
  totalPriceElementC.textContent = totalPrice;
}
// 티켓 D
const quantityInputD = document.getElementById("quantity3");
const totalPriceElementD = document.getElementById("totalPrice3");
const pricePerUnitD = 600; // 티켓 D의 단위 가격

document.getElementById("plus3").addEventListener("click", () => {
  let quantity = parseInt(quantityInputD.value);
  quantity++;
  quantityInputD.value = quantity;
  updateTotalPriceD(quantity);
});

document.getElementById("minus3").addEventListener("click", () => {
  let quantity = parseInt(quantityInputD.value);
  if (quantity > 1) {
    quantity--;
    quantityInputD.value = quantity;
    updateTotalPriceD(quantity);
  }
});

function updateTotalPriceD(quantity) {
  const totalPrice = quantity * pricePerUnitD;
  totalPriceElementD.textContent = totalPrice;
}

// 티켓 E
const quantityInputE = document.getElementById("quantity4");
const totalPriceElementE = document.getElementById("totalPrice4");
const pricePerUnitE = 700; // 티켓 E의 단위 가격

document.getElementById("plus4").addEventListener("click", () => {
  let quantity = parseInt(quantityInputE.value);
  quantity++;
  quantityInputE.value = quantity;
  updateTotalPriceE(quantity);
});

document.getElementById("minus4").addEventListener("click", () => {
  let quantity = parseInt(quantityInputE.value);
  if (quantity > 1) {
    quantity--;
    quantityInputE.value = quantity;
    updateTotalPriceE(quantity);
  }
});

function updateTotalPriceE(quantity) {
  const totalPrice = quantity * pricePerUnitE;
  totalPriceElementE.textContent = totalPrice;
}

// 티켓 F
const quantityInputF = document.getElementById("quantity5");
const totalPriceElementF = document.getElementById("totalPrice5");
const pricePerUnitF = 800; // 티켓 F의 단위 가격

document.getElementById("plus5").addEventListener("click", () => {
  let quantity = parseInt(quantityInputF.value);
  quantity++;
  quantityInputF.value = quantity;
  updateTotalPriceF(quantity);
});

document.getElementById("minus5").addEventListener("click", () => {
  let quantity = parseInt(quantityInputF.value);
  if (quantity > 1) {
    quantity--;
    quantityInputF.value = quantity;
    updateTotalPriceF(quantity);
  }
});

function updateTotalPriceF(quantity) {
  const totalPrice = quantity * pricePerUnitF;
  totalPriceElementF.textContent = totalPrice;
}

// 티켓 G
const quantityInputG = document.getElementById("quantity6");
const totalPriceElementG = document.getElementById("totalPrice6");
const pricePerUnitG = 900; // 티켓 G의 단위 가격

document.getElementById("plus6").addEventListener("click", () => {
  let quantity = parseInt(quantityInputG.value);
  quantity++;
  quantityInputG.value = quantity;
  updateTotalPriceG(quantity);
});

document.getElementById("minus6").addEventListener("click", () => {
  let quantity = parseInt(quantityInputG.value);
  if (quantity > 1) {
    quantity--;
    quantityInputG.value = quantity;
    updateTotalPriceG(quantity);
  }
});

function updateTotalPriceG(quantity) {
  const totalPrice = quantity * pricePerUnitG;
  totalPriceElementG.textContent = totalPrice;
}

// 티켓 H
const quantityInputH = document.getElementById("quantity7");
const totalPriceElementH = document.getElementById("totalPrice7");
const pricePerUnitH = 1000; // 티켓 H의 단위 가격

document.getElementById("plus7").addEventListener("click", () => {
  let quantity = parseInt(quantityInputH.value);
  quantity++;
  quantityInputH.value = quantity;
  updateTotalPriceH(quantity);
});

document.getElementById("minus7").addEventListener("click", () => {
  let quantity = parseInt(quantityInputH.value);
  if (quantity > 1) {
    quantity--;
    quantityInputH.value = quantity;
    updateTotalPriceH(quantity);
  }
});

function updateTotalPriceH(quantity) {
  const totalPrice = quantity * pricePerUnitH;
  totalPriceElementH.textContent = totalPrice;
}
// 코드에 필요한 요소들 변수에 할당 (전체 ui를 감싸는 div, 내용 텍스트, 더보기/줄이기 텍스트)
const textWrapper = document.querySelector(".text-wrapper");
const text = document.querySelector(".text");
const moreText = document.querySelector(".more-text");
const lessText = document.querySelector(".less-text");

// 더보기 텍스트 클릭시 이벤트
moreText.addEventListener("click", () => {
  moreText.style.display = "none"; // 더보기 텍스트 삭제
  lessText.style.display = "inline-block"; // 줄이기 텍스트 표시
  text.style.display = "inline-block"; // 텍스트의 속성을 -webkit-box에서 일반 inline-block 으로 변경
});

// 줄이기 텍스트 클릭시 이벤트
lessText.addEventListener("click", () => {
  lessText.style.display = "none"; // 줄이기 텍스트 삭제
  moreText.style.display = "inline-block"; // 더보기 텍스트 표시
  text.style.display = "-webkit-box"; // 텍스트의 속성을 다시 -webkit-box로 표시
});
