const userName = document.querySelector("#userName");
const userNameSpan = document.querySelector("#userNameSpan");
const userId = document.querySelector("#idCheckInput");
const userIdSpan = document.querySelector("#idCheckView");
const userPwd = document.querySelector("#userPwd");
const userPwdSpan = document.querySelector("#userPwdSpan");
const userPwdCheck = document.querySelector("#userPwdCheck");
const userPwdCheckSpan = document.querySelector("#userPwdCheckSpan");
const emailtx = document.querySelector("#emailDomain");
const phone = document.querySelector("#phone");
const pHone = document.querySelector("#pHone");
const pHoneSpan = document.querySelector("#pHoneSpan");
const emailUser = document.querySelector("#emailUser");
  const emailDomain = document.querySelector("#emailDomain");
  const domainList = document.querySelector("#domainList");
  const emailForm = document.getElementById('emailForm');
  const fullEmail = document.getElementById('fullEmail');
  const fullphone = document.getElementById("Pphone");
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
	  isValid= false;
  }
});
userId.addEventListener("input", function (e) {
  const regExp = /^(?=.*[a-z])(?=.*[0-9])[A-Za-z0-9]{6,20}$/;
  const check = regExp.test(userId.value);
  // 아이디가 유효한 형식일 경우
  if (check) {
    userIdSpan.style.color = "red";
    userIdSpan.innerHTML = "중복확인을 해주세요";
  } else if (userId.value.length >= 6) {
    userIdSpan.style.color = "red";
    userIdSpan.innerHTML = "6~20자 이상의 영문 소문자, 숫자 사용해주세요.";
}
});
$(document).ready(function() {
    // 중복체크 버튼을 눌렀을 때
    $("#idCheckButton").click(() => {
        const idValue = $("#idCheckInput").val();
        // 빈 값일 경우 처리
        if (!idValue) {
            alert("아이디를 입력해주세요.");
            return;
        }
        // AJAX 요청
        $.ajax({
            type: 'POST',
            url: '/check', // 서버에 요청 보낼 URL
            data: { id: idValue }, // 요청 데이터
            success: function(result) {
                if (result) {
                    $("#idCheckView").text("이미 사용 중인 아이디입니다.").css("color", "red");
                } else {
                    $("#idCheckView").text("사용 가능한 아이디입니다.").css("color", "green");
                }
            },
            error: function() {
                alert("아이디 중복 체크 중 오류가 발생했습니다.");
            }
        });
    });
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
emailUser.addEventListener("change", (event) => {
  if (event.target.value !== "type") {
    emailtx.value = event.target.value;
    emailtx.disabled = true;
  } else {
    emailtx.value = "";
    emailtx.disabled = false;
  }
});
function Validation(event) {
    let isValid = true;  // 모든 입력이 유효한지 확인할 플래그 변수
    // 이름 유효성 검사
    const regExpName = /^[가-힣]{2,}$/;
    if (!regExpName.test(userName.value.trim())) {
        userNameSpan.style.color = "red";
        userNameSpan.innerHTML = "한글로만 이루어져야 하며 2글자 이상 입력해야 합니다.";
        isValid = false;
    } else {
        userNameSpan.innerHTML = ""; // 오류 없을 시 메시지 초기화
    }
    // 아이디 유효성 검사
    const regExpId = /^(?=.*[a-z])(?=.*[0-9])[A-Za-z0-9]{6,20}$/;
    if (!regExpId.test(userId.value.trim())) {
        userIdSpan.style.color = "red";
        userIdSpan.innerHTML = "아이디는 영문 소문자와 숫자를 포함한 6~20자여야 합니다람쥐.";
        isValid = false;
    } else {
        userIdSpan.innerHTML = ""; // 오류 없을 시 메시지 초기화
    }
    // 비밀번호 유효성 검사
    const regExpPwd = /^(?=.*[a-zA-Z])(?=.*\d)(?=.*[!@#$%^&*])[A-Za-z\d!@#$%^&*]{8,16}$/;
    if (!regExpPwd.test(userPwd.value.trim())) {
        userPwdSpan.style.color = "red";
        userPwdSpan.innerHTML = "비밀번호는 8~16자, 영문, 숫자, 특수문자가 포함되어야 합니다.";
        isValid = false;
    } else {
        userPwdSpan.innerHTML = ""; // 오류 없을 시 메시지 초기화
    }
    // 비밀번호 확인 검사
    if (userPwd.value.trim() !== userPwdCheck.value.trim()) {
        userPwdCheckSpan.style.color = "red";
        userPwdCheckSpan.innerHTML = "비밀번호가 일치하지 않습니다.";
        isValid = false;
    } else {
        userPwdCheckSpan.innerHTML = ""; // 오류 없을 시 메시지 초기화
    }
    // 이메일 유효성 검사
    if (emailtx.value.trim() === "" || emailtx.value === "이메일을 선택해주세요") {
        alert("이메일을 입력하거나 선택해주세요.");
        isValid = false;
    }
    // 휴대폰 번호 유효성 검사
    const regExpPhone = /^\d{8}$/;  // 8자리 숫자
    if (!regExpPhone.test(pHone.value.trim())) {
        pHoneSpan.style.color = "red";
        pHoneSpan.innerHTML = "올바른 번호를 입력하세요.";
        isValid = false;
    } else {
        pHoneSpan.innerHTML = ""; // 오류 없을 시 메시지 초기화
		
    }const completePhone = phone.value + pHone.value;
	fullphone.value= completePhone;
	
	console.log(fullphone);
			
    // 유효하지 않으면 폼 제출 중지
    if (!isValid) {
        event.preventDefault();  // 폼 제출 방지
    }
}
  // 도메인 리스트가 변경될 때 처리
  domainList.addEventListener("change", (event) => {
      if (event.target.value === "type") {
          // 사용자가 도메인을 직접 입력할 수 있도록 설정
          emailDomain.value = "";
          emailDomain.disabled = false;
          emailDomain.focus();
      } else {
          // 선택한 도메인으로 설정하고 입력을 막음
          emailDomain.value = event.target.value;
          emailDomain.disabled = true;
      }
      // 이메일 주소 합치기
      const completeEmail = emailUser.value + '@' + emailDomain.value;
      fullEmail.value = completeEmail; // 히든 필드에 합쳐진 이메일 주소 저장
      console.log(fullEmail);
	 });