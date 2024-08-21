let plus = document.querySelector(".plus");
let minus = document.querySelector(".minus");
let result = document.querySelector("#result");
let totalcost = document.querySelector(".totalcost");
let i = 1;
plus.addEventListener("click", () => {
  i++;
  result.textContent = i;
  let totalcostNum = i * 300;
  totalcost.textContent = "won ₩" + totalcostNum.toLocaleString();
});
minus.addEventListener("click", () => {
  if (1 > 0) {
    i--;
    result.textContent = i;
    let totalcostNum = i * 300;
    totalcost.textContent = "won ₩" + totalcostNum.toLocaleString();
  } else {
    totalcost.textContent = "won ₩" + 0;
  }
});
