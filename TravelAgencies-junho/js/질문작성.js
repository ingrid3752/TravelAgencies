document.addEventListener("DOMContentLoaded", function() {
    const form = document.getElementById("question-form");

    form.addEventListener("submit", function(event) {
        event.preventDefault(); // 폼 제출 시 페이지 새로 고침 방지

        const title = document.getElementById("title").value;
        const author = document.getElementById("author").value;
        const content = document.getElementById("content").value;

        if (title && author && content) {
            // 로컬 스토리지에 질문 저장
            const questions = JSON.parse(localStorage.getItem("questions")) || [];
            const newQuestion = {
                id: questions.length ? questions[questions.length - 1].id + 1 : 1,
                title: title,
                author: author,
                content: content,
                date: new Date().toISOString(),
                views: 0
            };
            questions.push(newQuestion);
            localStorage.setItem("questions", JSON.stringify(questions));

            // 성공 메시지 또는 다른 페이지로 리디렉션
            alert("질문이 성공적으로 제출되었습니다.");
            form.reset();
        } else {
            alert("모든 필드를 채워야 합니다.");
        }
    });
});
