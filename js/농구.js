// 티켓 A 관련 변수
const quantityInputA = document.getElementById("quantity");
const totalPriceElementA = document.getElementById("totalPrice");
const minusButtonA = document.getElementById("minus");
const payButtonA = document.querySelectorAll(".ticket-pay")[0];
const pricePerUnitA = 500; // 티켓 G의 단위 가격

// 티켓 B 관련 변수
const quantityInputB = document.getElementById("quantity1");
const totalPriceElementB = document.getElementById("totalPrice1");
const minusButtonB = document.getElementById("minus1");
const payButtonB = document.querySelectorAll(".ticket-pay")[1];
const pricePerUnitB = 400; // 티켓 H의 단위 가격

// 초기 상태에서 버튼 비활성화
minusButtonA.disabled = true;
payButtonA.disabled = true;
quantityInputA.value = 0;
totalPriceElementA.textContent = 0;
minusButtonB.disabled = true;
payButtonB.disabled = true;
quantityInputB.value = 0;
totalPriceElementB.textContent = 0;

// 티켓 A 수량 증가
document.getElementById("plus").addEventListener("click", () => {
  let quantity = parseInt(quantityInputA.value);
  quantity++;
  quantityInputA.value = quantity;
  updateTotalPriceA(quantity);
  toggleButtonStateA(quantity);
  updateTotalPrice();
});

// 티켓 A 수량 감소
minusButtonA.addEventListener("click", () => {
  let quantity = parseInt(quantityInputA.value);
  if (quantity > 0) {
    quantity--;
    quantityInputA.value = quantity;
    updateTotalPriceA(quantity);
    toggleButtonStateA(quantity);
    updateTotalPrice();
  }
});

// 티켓 B 수량 증가
document.getElementById("plus1").addEventListener("click", () => {
  let quantity = parseInt(quantityInputB.value);
  quantity++;
  quantityInputB.value = quantity;
  updateTotalPriceB(quantity);
  toggleButtonStateB(quantity);
  updateTotalPrice();
});

// 티켓 B 수량 감소
minusButtonB.addEventListener("click", () => {
  let quantity = parseInt(quantityInputB.value);
  if (quantity > 0) {
    quantity--;
    quantityInputB.value = quantity;
    updateTotalPriceB(quantity);
    toggleButtonStateB(quantity);
    updateTotalPrice();
  }
});

// 티켓 A 총 가격 업데이트
function updateTotalPriceA(quantity) {
  const totalPrice = quantity * pricePerUnitA;
  totalPriceElementA.textContent = totalPrice;
}

// 티켓 B 총 가격 업데이트
function updateTotalPriceB(quantity) {
  const totalPrice = quantity * pricePerUnitB;
  totalPriceElementB.textContent = totalPrice;
}

// 티켓 A 버튼 상태 업데이트
function toggleButtonStateA(quantity) {
  minusButtonA.disabled = quantity === 0;
  payButtonA.disabled = quantity === 0;
}

// 티켓 B 버튼 상태 업데이트
function toggleButtonStateB(quantity) {
  minusButtonB.disabled = quantity === 0;
  payButtonB.disabled = quantity === 0;
}

//
// 티켓 C 관련 변수
const quantityInputC = document.getElementById("quantity2");
const totalPriceElementC = document.getElementById("totalPrice2");
const minusButtonC = document.getElementById("minus2");
const payButtonC = document.querySelectorAll(".ticket-pay")[2];
const pricePerUnitC = 300; // 티켓 C의 단위 가격

// 티켓 D 관련 변수
const quantityInputD = document.getElementById("quantity3");
const totalPriceElementD = document.getElementById("totalPrice3");
const minusButtonD = document.getElementById("minus3");
const payButtonD = document.querySelectorAll(".ticket-pay")[3];
const pricePerUnitD = 600; // 티켓 H의 단위 가격

// 초기 상태에서 버튼 비활성화
minusButtonC.disabled = true;
payButtonC.disabled = true;
quantityInputC.value = 0;
totalPriceElementC.textContent = 0;
minusButtonD.disabled = true;
payButtonD.disabled = true;
quantityInputD.value = 0;
totalPriceElementD.textContent = 0;

// 티켓 C 수량 증가
document.getElementById("plus2").addEventListener("click", () => {
  let quantity = parseInt(quantityInputC.value);
  quantity++;
  quantityInputC.value = quantity;
  updateTotalPriceC(quantity);
  toggleButtonStateC(quantity);
  updateTotalPrice();
});

// 티켓 C 수량 감소
minusButtonC.addEventListener("click", () => {
  let quantity = parseInt(quantityInputC.value);
  if (quantity > 0) {
    quantity--;
    quantityInputC.value = quantity;
    updateTotalPriceC(quantity);
    toggleButtonStateC(quantity);
    updateTotalPrice();
  }
});

// 티켓 D 수량 증가
document.getElementById("plus3").addEventListener("click", () => {
  let quantity = parseInt(quantityInputD.value);
  quantity++;
  quantityInputD.value = quantity;
  updateTotalPriceD(quantity);
  toggleButtonStateD(quantity);
  updateTotalPrice();
});

// 티켓 D 수량 감소
minusButtonD.addEventListener("click", () => {
  let quantity = parseInt(quantityInputD.value);
  if (quantity > 0) {
    quantity--;
    quantityInputD.value = quantity;
    updateTotalPriceD(quantity);
    toggleButtonStateD(quantity);
    updateTotalPrice();
  }
});

// 티켓 C 총 가격 업데이트
function updateTotalPriceC(quantity) {
  const totalPrice = quantity * pricePerUnitC;
  totalPriceElementC.textContent = totalPrice;
}

// 티켓 D 총 가격 업데이트
function updateTotalPriceD(quantity) {
  const totalPrice = quantity * pricePerUnitD;
  totalPriceElementD.textContent = totalPrice;
}

// 티켓 C 버튼 상태 업데이트
function toggleButtonStateC(quantity) {
  minusButtonC.disabled = quantity === 0;
  payButtonC.disabled = quantity === 0;
}

// 티켓 D 버튼 상태 업데이트
function toggleButtonStateD(quantity) {
  minusButtonD.disabled = quantity === 0;
  payButtonD.disabled = quantity === 0;
}

//

// 티켓 E 관련 변수
const quantityInputE = document.getElementById("quantity4");
const totalPriceElementE = document.getElementById("totalPrice4");
const minusButtonE = document.getElementById("minus4");
const payButtonE = document.querySelectorAll(".ticket-pay")[4];
const pricePerUnitE = 700; // 티켓 C의 단위 가격

// 티켓 F 관련 변수
const quantityInputF = document.getElementById("quantity5");
const totalPriceElementF = document.getElementById("totalPrice5");
const minusButtonF = document.getElementById("minus5");
const payButtonF = document.querySelectorAll(".ticket-pay")[5];
const pricePerUnitF = 800; // 티켓 H의 단위 가격

// 초기 상태에서 버튼 비활성화
minusButtonE.disabled = true;
payButtonE.disabled = true;
minusButtonF.disabled = true;
payButtonF.disabled = true;
quantityInputE.value = 0;
totalPriceElementE.textContent = 0;
quantityInputF.value = 0;
totalPriceElementF.textContent = 0;

// 티켓 E 수량 증가
document.getElementById("plus4").addEventListener("click", () => {
  let quantity = parseInt(quantityInputE.value);
  quantity++;
  quantityInputE.value = quantity;
  updateTotalPriceE(quantity);
  toggleButtonStateE(quantity);
  updateTotalPrice();
});

// 티켓 E 수량 감소
minusButtonE.addEventListener("click", () => {
  let quantity = parseInt(quantityInputE.value);
  if (quantity > 0) {
    quantity--;
    quantityInputE.value = quantity;
    updateTotalPriceE(quantity);
    toggleButtonStateE(quantity);
    updateTotalPrice();
  }
});

// 티켓 F 수량 증가
document.getElementById("plus5").addEventListener("click", () => {
  let quantity = parseInt(quantityInputF.value);
  quantity++;
  quantityInputF.value = quantity;
  updateTotalPriceF(quantity);
  toggleButtonStateF(quantity);
  updateTotalPrice();
});

// 티켓 F 수량 감소
minusButtonF.addEventListener("click", () => {
  let quantity = parseInt(quantityInputF.value);
  if (quantity > 0) {
    quantity--;
    quantityInputF.value = quantity;
    updateTotalPriceF(quantity);
    toggleButtonStateF(quantity);
    updateTotalPrice();
  }
});

// 티켓 E 총 가격 업데이트
function updateTotalPriceE(quantity) {
  const totalPrice = quantity * pricePerUnitE;
  totalPriceElementE.textContent = totalPrice;
}

// 티켓 F 총 가격 업데이트
function updateTotalPriceF(quantity) {
  const totalPrice = quantity * pricePerUnitF;
  totalPriceElementF.textContent = totalPrice;
}

// 티켓 E 버튼 상태 업데이트
function toggleButtonStateE(quantity) {
  minusButtonE.disabled = quantity === 0;
  payButtonE.disabled = quantity === 0;
}

// 티켓 D 버튼 상태 업데이트
function toggleButtonStateF(quantity) {
  minusButtonF.disabled = quantity === 0;
  payButtonF.disabled = quantity === 0;
}
// 티켓 G 관련 변수
const quantityInputG = document.getElementById("quantity6");
const totalPriceElementG = document.getElementById("totalPrice6");
const minusButtonG = document.getElementById("minus6");
const payButtonG = document.querySelectorAll(".ticket-pay")[6];
const pricePerUnitG = 900; // 티켓 G의 단위 가격

// 티켓 H 관련 변수
const quantityInputH = document.getElementById("quantity7");
const totalPriceElementH = document.getElementById("totalPrice7");
const minusButtonH = document.getElementById("minus7");
const payButtonH = document.querySelectorAll(".ticket-pay")[7];
const pricePerUnitH = 1000; // 티켓 H의 단위 가격

// 초기 상태에서 버튼 비활성화
minusButtonG.disabled = true;
payButtonG.disabled = true;
minusButtonH.disabled = true;
payButtonH.disabled = true;
quantityInputG.value = 0;
totalPriceElementG.textContent = 0;
quantityInputH.value = 0;
totalPriceElementH.textContent = 0;

// 티켓 G 수량 증가
document.getElementById("plus6").addEventListener("click", () => {
  let quantity = parseInt(quantityInputG.value);
  quantity++;
  quantityInputG.value = quantity;
  updateTotalPriceG(quantity);
  toggleButtonStateG(quantity);
  updateTotalPrice();
});

// 티켓 G 수량 감소
minusButtonG.addEventListener("click", () => {
  let quantity = parseInt(quantityInputG.value);
  if (quantity > 0) {
    quantity--;
    quantityInputG.value = quantity;
    updateTotalPriceG(quantity);
    toggleButtonStateG(quantity);
    updateTotalPrice();
  }
});

// 티켓 H 수량 증가
document.getElementById("plus7").addEventListener("click", () => {
  let quantity = parseInt(quantityInputH.value);
  quantity++;
  quantityInputH.value = quantity;
  updateTotalPriceH(quantity);
  toggleButtonStateH(quantity);
  updateTotalPrice();
});

// 티켓 H 수량 감소
minusButtonH.addEventListener("click", () => {
  let quantity = parseInt(quantityInputH.value);
  if (quantity > 1) {
    quantity--;
    quantityInputH.value = quantity;
    updateTotalPriceH(quantity);
    toggleButtonStateH(quantity);
    updateTotalPrice();
  }
});

// 티켓 G 총 가격 업데이트
function updateTotalPriceG(quantity) {
  const totalPrice = quantity * pricePerUnitG;
  totalPriceElementG.textContent = totalPrice;
}

// 티켓 H 총 가격 업데이트
function updateTotalPriceH(quantity) {
  const totalPrice = quantity * pricePerUnitH;
  totalPriceElementH.textContent = totalPrice;
}

// 티켓 G 버튼 상태 업데이트
function toggleButtonStateG(quantity) {
  minusButtonG.disabled = quantity === 0;
  payButtonG.disabled = quantity === 0;
}

// 티켓 H 버튼 상태 업데이트
function toggleButtonStateH(quantity) {
  minusButtonH.disabled = quantity === 0;
  payButtonH.disabled = quantity === 0;
}
/////////////////////////////////////////////
// 전체 합산 금액 업데이트
function updateTotalPrice() {
  const totalA = parseInt(totalPriceElementA.textContent) || 0;
  const totalB = parseInt(totalPriceElementB.textContent) || 0;
  const totalC = parseInt(totalPriceElementC.textContent) || 0;
  const totalD = parseInt(totalPriceElementD.textContent) || 0;
  const totalE = parseInt(totalPriceElementE.textContent) || 0;
  const totalF = parseInt(totalPriceElementF.textContent) || 0;
  const totalG = parseInt(totalPriceElementG.textContent) || 0;
  const totalH = parseInt(totalPriceElementH.textContent) || 0;

  const grandTotal =
    totalA + totalB + totalC + totalD + totalE + totalF + totalG + totalH;

  // 합산 금액을 표시할 요소에 업데이트
  document.getElementById("grandTotal").textContent = grandTotal;
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

const btn = document.getElementById("modal_button"); // 모달 띄우는 버튼
const modal = document.getElementById("modal"); //
const closeBtn = document.getElementById("close_btn");

btn.onclick = function () {
  modal.classList.add("open");
};

closeBtn.onclick = function () {
  modal.classList.remove("open");
};

//모달2
const btn2 = document.getElementById("modal_button2"); // 모달 띄우는 버튼
const modal2 = document.getElementById("modal2"); //
const closeBtn2 = document.getElementById("close_btn2");

btn2.onclick = function () {
  modal2.classList.add("open");
};

closeBtn2.onclick = function () {
  modal2.classList.remove("open");
};

window.onclick = function (event) {
  if (event.target == modal) {
    modal.classList.remove("open");
  } else if (event.target == modal2) {
    modal2.classList.remove("open");
  }
};
