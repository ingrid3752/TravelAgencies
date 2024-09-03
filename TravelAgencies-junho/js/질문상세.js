document.addEventListener("DOMContentLoaded", function() {
    const questionTitleElement = document.getElementById("question-title");
    const questionAuthorElement = document.getElementById("question-author");
    const questionDateElement = document.getElementById("question-date");
    const questionViewsElement = document.getElementById("question-views");
    const questionContentElement = document.getElementById("question-content");

    // URL에서 쿼리 파라미터를 통해 질문 ID를 가져옵니다.
    const urlParams = new URLSearchParams(window.location.search);
    const questionId = urlParams.get("id");

    console.log("Question ID from URL:", questionId); // 쿼리 파라미터 확인

    if (!questionId) {
        // ID가 없는 경우 처리
        questionTitleElement.textContent = "질문 ID가 제공되지 않았습니다.";
        return;
    }

    // ID를 숫자로 변환
    const questionIdNumber = parseInt(questionId, 10);

    if (isNaN(questionIdNumber)) {
        // 숫자로 변환되지 않은 경우 처리
        questionTitleElement.textContent = "유효하지 않은 질문 ID입니다.";
        return;
    }

    console.log("Parsed Question ID:", questionIdNumber); // 숫자로 변환된 ID 확인

    // 로컬 스토리지에서 질문 리스트를 가져옵니다.
    const getQuestions = () => JSON.parse(localStorage.getItem("questions")) || [];
    const questions = getQuestions();
    console.log("Questions from Local Storage:", questions); // 로컬 스토리지에서 가져온 질문 확인

    // 날짜를 "YYYY-MM-DD HH:MM" 형식으로 포맷팅하는 함수
    const formatDateTime = (date) => {
        const d = new Date(date);
        const year = d.getFullYear();
        const month = String(d.getMonth() + 1).padStart(2, '0');
        const day = String(d.getDate()).padStart(2, '0');
        const hours = String(d.getHours()).padStart(2, '0');
        const minutes = String(d.getMinutes()).padStart(2, '0');
        return `${year}-${month}-${day} ${hours}:${minutes}`;
    };

    // 질문 데이터를 가져와서 페이지에 표시합니다.
    const displayQuestion = () => {
        const question = questions.find(q => q.id === questionIdNumber);
        console.log("Found Question:", question); // 찾은 질문 확인

        if (question) {
            questionTitleElement.textContent = question.title;
            questionAuthorElement.textContent = question.author;
            questionDateElement.textContent = formatDateTime(question.date); // 날짜 포맷팅
            questionViewsElement.textContent = question.views;
            questionContentElement.innerHTML = question.content; // 내용이 HTML로 삽입되도록 수정
        } else {
            // 질문을 찾지 못한 경우 처리
            questionTitleElement.textContent = "질문을 찾을 수 없습니다.";
            questionAuthorElement.textContent = "";
            questionDateElement.textContent = "";
            questionViewsElement.textContent = "";
            questionContentElement.innerHTML = ""; // 내용 제거
        }
    };

    displayQuestion();
});
