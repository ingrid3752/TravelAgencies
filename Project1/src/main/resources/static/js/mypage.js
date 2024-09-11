function imgShow(event) {
  var reader = new FileReader();
  reader.onload = function (event) {
    // 기존 이미지를 제거하고 새로운 이미지 추가
    var container = document.querySelector("#image_container");
    container.innerHTML = ""; // 컨테이너 내부를 비움
    // 새 이미지를 생성 및 추가
    var img = document.createElement("img");
    img.setAttribute("src", event.target.result);
    container.appendChild(img);
  };
  // 선택한 파일을 읽어들임
  reader.readAsDataURL(event.target.files[0]);
}
// 디테일
document.querySelectorAll("details").forEach((detail) => {
  detail.addEventListener("toggle", function () {
    if (this.open) {
      const content = this.querySelector("summary ~ *");
      content.style.animation = "none"; // 기존 애니메이션 제거
      setTimeout(() => {
        content.style.animation = ""; // 애니메이션을 다시 추가하여 트리거
      }, 10); // 작은 지연을 주어 애니메이션이 제대로 실행되도록 함
    }
  });
});
const name = document.querySelector("#name");
const nameSpan = document.querySelector("#nameSpan");
const pwd = document.querySelector("#pwd");
const pwdSpan = document.querySelector("#pwdSpan");
const password = document.querySelector("#password");
const passwordSpan = document.querySelector("#passwordSpan");
const passwordCheck = document.querySelector("#passwordCheck");
const passwordCheckSpan = document.querySelector("#passwordCheckSpan");
const phone = document.querySelector("#phone");
const phoneSpan = document.querySelector("#phoneSpan");
const email = document.querySelector("#email");
const emailSpan = document.querySelector("#emailSpan");
let nextCheck = false;

name.addEventListener("input", function (e) {
  const regExp = /^[가-힣]{2,}$/;
  const check = regExp.test(name.value);
  if (check) {
    nameSpan.style.color = "green";
    nameSpan.innerHTML = "확인되었습니다.";
  } else {
    nameSpan.style.color = "red";
    nameSpan.innerHTML = "한글로만 이루어져야되며 2글자 이상으로 입력하시오.";
  }
});

phone.addEventListener("input", function (e) {
  const regExp = /^010\d{8}$/;
  const check = regExp.test(phone.value);
  if (check) {
    phoneSpan.style.color = "green";
    phoneSpan.innerHTML = "확인되었습니다.";
  } else {
    phoneSpan.style.color = "red";
    phoneSpan.innerHTML = "특수문자를 제외한 숫자 11자리입력해주세요";
  }
});

email.addEventListener("input", function (e) {
  const regExp = /^[a-zA-Z0-9+-\_.]+@[a-zA-Z0-9-]+\.[a-zA-Z0-9-.]+$/;
  const check = regExp.test(email.value);
  if (check) {
    emailSpan.style.color = "green";
    emailSpan.innerHTML = "확인되었습니다";
  } else {
    emailSpan.style.color = "red";
    emailSpan.innerHTML = "올바른 이메일형식을 입력하세요";
  }
});

password.addEventListener("input", function (e) {
	
	console.log("변경할 비밀번호"+ passwordCheck.value);
	// 비밀번호 유효성 검사
	  const regExp = 
	    /^(?=.*[a-zA-Z])(?=.*\d)(?=.*[!@#$%^&*])[A-Za-z\d!@#$%^&*]{8,16}$/;
	  const check = regExp.test(password.value.trim());	
	  if (check) {
		if(pwd.value == password.value) {
			passwordSpan.style.color = "red";
			passwordSpan.innerHTML = "기존 비밀번호와 동일합니다.";
		}else {
			passwordSpan.style.color = "green";
			passwordSpan.innerHTML = "확인되었습니다";
			nextCheck = true;			
		}
	  } else {
		passwordSpan.style.color = "red";
		passwordSpan.innerHTML   = "비밀번호는 8~16자, 영문, 숫자, 특수문자가 포함되어야 합니다.";
		isValid = false;			   
	  }
});

passwordCheck.addEventListener("input", function (e) {
		
	if(nextCheck) {		
	  if (password.value.trim() == passwordCheck.value.trim()) {
			passwordCheckSpan.style.color = "green";
			passwordCheckSpan.innerHTML = "확인되었습니다";
      } else {
		passwordCheckSpan.style.color = "red";
	   	passwordCheckSpan.innerHTML = "비밀번호가 일치하지 않습니다.";
	   	isValid = false;
	  }
	}else {
		passwordCheckSpan.style.color = "red";
		passwordCheckSpan.innerHTML = "변경할 비밀번호가 올바르지 않습니다.";
	}
});

/************************************************************* */
function Validation(event) {
  let isValid = true; // 모든 입력이 유효한지 확인할 플래그 변수
  // 이름 유효성 검사
  const regExpName = /^[가-힣]{2,}$/;
  if (!regExpName.test(name.value.trim())) {
    nameSpan.style.color = "red";
    nameSpan.innerHTML = "한글로만 이루어져야 하며 2글자 이상 입력해야 합니다.";
    isValid = false;
  } else {
    nameSpan.innerHTML = ""; // 오류 없을 시 메시지 초기화
  }
  
  // 휴대폰 번호 유효성 검사
  const regExpPhone = /^010\d{8}$/; // 8자리 숫자
  if (!regExpPhone.test(phone.value.trim())) {
  	phoneSpan.style.color = "red";
  	phoneSpan.innerHTML = "올바른 번호를 입력하세요.";
  	isValid = false;
  } else {
  	phoneSpan.innerHTML = ""; // 오류 없을 시 메시지 초기화
  }
  
  console.log(isValid);
  // 유효하지 않으면 폼 제출 중지
  if (!isValid) {	
    event.preventDefault(); // 폼 제출 방지
  }
}

function Validation2(event) {
  let isValid = true; // 모든 입력이 유효한지 확인할 플래그 변수
 
  // 비밀번호 유효성 검사
    const regExpPwd =
      /^(?=.*[a-zA-Z])(?=.*\d)(?=.*[!@#$%^&*])[A-Za-z\d!@#$%^&*]{8,16}$/;
    if (!regExpPwd.test(password.value.trim())) {
      passwordSpan.style.color = "red";
      passwordSpan.innerHTML =
        "비밀번호는 8~16자, 영문, 숫자, 특수문자가 포함되어야 합니다.";
      isValid = false;
    } else {
      pwdSpan.innerHTML = ""; // 오류 없을 시 메시지 초기화
    }
    
    // 비밀번호 확인 검사
    if(!regExpPwd.test(password.value.trim())) { 
  	passwordCheckSpan.style.color = "red";
  	passwordCheckSpan.innerHTML = "변경할 비밀번호가 올바르지 않습니다.";
    }else {
    	if (password.value.trim() !== passwordCheck.value.trim()) {
  	    passwordCheckSpan.style.color = "red";
  	    passwordCheckSpan.innerHTML = "비밀번호가 일치하지 않습니다.";
  	    isValid = false;
    	} else {
  	    passwordCheckSpan.innerHTML = ""; // 오류 없을 시 메시지 초기화
    	}  
    }
  console.log(isValid);
  // 유효하지 않으면 폼 제출 중지
  if (!isValid) {	
    event.preventDefault(); // 폼 제출 방지
  }
}