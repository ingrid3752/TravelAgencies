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
