document.addEventListener("DOMContentLoaded", function() {
    const postsContainer = document.getElementById("posts-container");

    // 로컬 스토리지에서 질문 리스트 가져오기
    const questions = JSON.parse(localStorage.getItem("questions")) || [];

    // 질문 데이터를 게시판에 추가
    questions.forEach((question, index) => {
        const postElement = document.createElement("div");
        postElement.className = "navbar2";
        postElement.innerHTML = `
            <a>${index + 1}</a>
            <a>${question.title}</a>
            <a>작성자</a> <!-- 실제 작성자는 로그인 정보를 통해 가져와야 합니다. -->
            <a>${question.date}</a>
        `;
        postsContainer.appendChild(postElement);
    });
});