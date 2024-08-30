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
