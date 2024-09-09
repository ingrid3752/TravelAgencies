const userName = document.querySelector("#userName");
const userNameSpan = document.querySelector("#userNameSpan");
const userId = document.querySelector("#userId");
const userIdSpan = document.querySelector("#userIdSpan");
const userPwd = document.querySelector("#userPwd");
const userPwdSpan = document.querySelector("#userPwdSpan");
const userPwdCheck = document.querySelector("#userPwdCheck");
const userPwdCheckSpan = document.querySelector("#userPwdCheckSpan");
const pHone = document.querySelector("#pHone");
const pHoneSpan = document.querySelector("#pHoneSpan");

userName.addEventListener("input", function (e) {
  const regExp = /^[가-힣]{2,}$/;
  const check = regExp.test(userName.value);

  if (check) {
    userNameSpan.style.color = "green";
    userNameSpan.innerHTML = "확인되었습니다.";
  } else {
    userNameSpan.style.color = "red";
    userNameSpan.innerHTML =
      "한글로만 이루어져야되며 2글자 이상으로 입력하시오.";
  }
});

userId.addEventListener("input", function (e) {
  const regExp = /^(?=.*[a-z])(?=.*[0-9])[A-Za-z0-9]{6,20}$/;
  const check = regExp.test(userId.value);

  if (check) {
    userIdSpan.style.color = "green";
    userIdSpan.innerHTML = "확인되었습니다";
    //e.target.nextElementSibling.style.color = "green";
    //e.target.nextElementSibling.innerHTML = "OK!";
  } else {
    userIdSpan.style.color = "red";
    userIdSpan.innerHTML = "6~20자의 영문 소문자, 숫자 사용해주세요.";
  }
});

userPwd.addEventListener("input", function (e) {
  const regExp =
    /^(?=.*[a-zA-Z])(?=.*\d)(?=.*[!@#$%^&*])[A-Za-z\d!@#$%^&*]{8,16}$/;
  const check = regExp.test(userPwd.value);

  if (check) {
    userPwdSpan.style.color = "green";
    userPwdSpan.innerHTML = "확인되었습니다";
  } else {
    userPwdSpan.style.color = "red";
    userPwdSpan.innerHTML =
      "8 ~ 16자의 영문 대/소문자, 숫자, 특수문자 한개 이상 사용해주세요.";
  }
});

userPwdCheck.addEventListener("input", function (e) {
  if (userPwd.value === userPwdCheck.value) {
    userPwdCheckSpan.style.color = "green";
    userPwdCheckSpan.innerHTML = "비밀번호가 일치합니다!";
  } else {
    userPwdCheckSpan.style.color = "red";
    userPwdCheckSpan.innerHTML = "위의 비밀번호와 일치하게 입력하시오.";
  }
});

pHone.addEventListener("input", function (e) {
  const regExp = /^\d{8}$/;
  const check = regExp.test(pHone.value);
  if (check) {
    pHoneSpan.style.color = "green";
    pHoneSpan.innerHTML = "확인되었습니다.";
  } else {
    pHoneSpan.style.color = "red";
    pHoneSpan.innerHTML = "올바른 번호를 입력하세요.";
  }
});

const domainListEl = document.querySelector("#emaillist");
const emailEl = document.querySelector("#emailtxt");
// select 옵션 변경 시
domainListEl.addEventListener("change", (event) => {
  // option에 있는 도메인 선택 시
  if (event.target.value !== "type") {
    // 선택한 도메인을 input에 입력하고 disabled
    emailEl.value = event.target.value;
    emailEl.disabled = true;
  } else {
    // 직접 입력 시
    // input 내용 초기화 & 입력 가능하도록 변경
    emailEl.value = "";
    emailEl.disabled = false;
  }
});

$("#overlappedID").click(function () {
  $("#signup").attr("type", "button");
  const id = $("#user_id").val();
  $.ajax({
    type: "get",
    async: false,
    url: "http://localhost:8080/signUp",
    data: { id: id },
    success: function (data) {
      if (data == 1) {
        $("#olmessage").text("이미 사용중인 ID 입니다.");
        $("#olmessage").addClass("olmessagef");
        $("#olmessage").removeClass("olmessaget");
      } else {
        $("#olmessage").text("사용 가능한 ID 입니다.");
        $("#olmessage").addClass("olmessaget");
        $("#olmessage").removeClass("olmessagef");
        $("#signup").attr("type", "submit");
      }
    },
  });
});
