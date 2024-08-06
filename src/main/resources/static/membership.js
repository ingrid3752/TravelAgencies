const userId = document.querySelector("#userId");
const userIdSpan = document.querySelector("#userIdSpan");
const userPwd = document.querySelector("#userPwd");
const userPwdSpan = document.querySelector("#userPwdSpan");
const userPwdCheck = document.querySelector("#userPwdCheck");
const userPwdCheckSpan = document.querySelector("#userPwdCheckSpan");
const userName = document.querySelector("#userName");
const userNameSpan = document.querySelector("#userNameSpan");
const userPhone = document.querySelector("#userPhone");
const userPhoneSpan = document.querySelector("#userPhoneSpan");

userId.addEventListener("input", function (e) {
  // 첫 글자 반드시 영문자로 시작하며, 영문자와 숫자를 포함하여 총 5~15자로 입력
  const regExp = /^[a-zA-Z][a-zA-Z0-9]{4,14}$/;
  const check = regExp.test(userId.value);

  if (check) {
    userIdSpan.style.color = "green";
    userIdSpan.innerHTML = "OK!";
  } else {
    userIdSpan.style.color = "red";
    userIdSpan.innerHTML =
      "첫글자 반드시 영문자로, 영문자 숫자 포함하여 총 5~15자로 입력하시오";
  }
});

userPwd.addEventListener("input", function (e) {
  // 영문자, 숫자, 특수문자를 포함하여 9~15자로 입력
  const regExp = /^(?=.*[a-zA-Z])(?=.*\d)(?=.*[!@#$%^&*])[!-~]{9,15}$/;
  const check = regExp.test(userPwd.value);

  if (check) {
    userPwdSpan.style.color = "green";
    userPwdSpan.innerHTML = "OK!";
  } else {
    userPwdSpan.style.color = "red";
    userPwdSpan.innerHTML =
      "영문자, 숫자, 특수문자 포함하여 총 9~15자로 입력하시오";
  }
});

userPwdCheck.addEventListener("input", function (e) {
  // 위의 비밀번호와 일치해야 함
  if (userPwd.value === userPwdCheck.value) {
    userPwdCheckSpan.style.color = "green";
    userPwdCheckSpan.innerHTML = "OK!";
  } else {
    userPwdCheckSpan.style.color = "red";
    userPwdCheckSpan.innerHTML = "위의 비밀번호와 일치하게 입력하시오";
  }
});

userName.addEventListener("input", function (e) {
  // 한글로 작성하고, 2글자 이상 입력해야 함
  const regExp = /^[가-힣]{2,}$/;
  const check = regExp.test(userName.value);

  if (check) {
    userNameSpan.style.color = "green";
    userNameSpan.innerHTML = "OK!";
  } else {
    userNameSpan.style.color = "red";
    userNameSpan.innerHTML = "한글로 작성, 2글자 이상 입력하시오";
  }
});

userPhone.addEventListener("input", function (e) {
  // 올바른 번호 11자리를 입력해야 함
  const regExp = /^01([0|1|6|7|8|9])([0-9]{3,4})([0-9]{4})$/;
  const check = regExp.test(userPhone.value);

  if (check) {
    userPhoneSpan.style.color = "green";
    userPhoneSpan.innerHTML = "Ok!";
  } else {
    userPhoneSpan.style.color = "red";
    userPhoneSpan.innerHTML = "올바른 번호 11자리를 입력해 주세요";
  }
});







