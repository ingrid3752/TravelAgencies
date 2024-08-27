document.addEventListener("DOMContentLoaded", function() {
    const form = document.querySelector("form");
    const titleInput = document.getElementById("title");
    const contentTextarea = document.getElementById("content");

    form.addEventListener("submit", function(event) {
        event.preventDefault(); // 폼 제출 방지

        const title = titleInput.value.trim();
        const content = contentTextarea.value.trim();
        const date = new Date().toISOString().split('T')[0]; // YYYY-MM-DD 포맷의 현재 날짜

        if (title === "" || content === "") {
            alert("제목과 내용을 모두 입력해 주세요.");
            return;
        }

        // 질문 데이터 생성
        const question = {
            title: title,
            content: content,
            date: date
        };

        // 로컬 스토리지에서 기존 질문 리스트 가져오기
        const questions = JSON.parse(localStorage.getItem("questions")) || [];
        
        // 새로운 질문 추가
        questions.push(question);

        // 업데이트된 질문 리스트를 로컬 스토리지에 저장
        localStorage.setItem("questions", JSON.stringify(questions));

        // 폼 데이터 초기화
        titleInput.value = "";
        contentTextarea.value = "";

        // 제출 후 질문 게시판 페이지로 이동
        window.location.href = "./질문게시판.html";
    });
});