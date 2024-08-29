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

const btn = document.getElementById("modal_button"); // 모달 띄우는 버튼
const modal = document.getElementById("modal"); //
const closeBtn = document.getElementById("close_btn");

btn.onclick = function () {
  modal.classList.add("open");
};

closeBtn.onclick = function () {
  modal.classList.remove("open");
};
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
