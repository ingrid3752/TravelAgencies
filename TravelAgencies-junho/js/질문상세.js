document.addEventListener("DOMContentLoaded", () => {
    const questionTitleElement = document.getElementById("question-title");
    const questionAuthorElement = document.getElementById("question-author");
    const questionDateElement = document.getElementById("question-date");
    const questionViewsElement = document.getElementById("question-views");
    const questionContentElement = document.getElementById("question-content");
    const attachedImageElement = document.getElementById("attached-image");

    // URL에서 쿼리 파라미터를 통해 질문 ID를 가져옵니다.
    const urlParams = new URLSearchParams(window.location.search);
    const questionId = urlParams.get("id");

    if (!questionId) {
        displayError("질문 ID가 제공되지 않았습니다.");
        return;
    }

    const questionIdNumber = parseInt(questionId, 10);

    if (isNaN(questionIdNumber)) {
        displayError("유효하지 않은 질문 ID입니다.");
        return;
    }

    // LocalStorage에서 질문 데이터를 가져옵니다.
    const getQuestions = () => JSON.parse(localStorage.getItem("questions")) || [];
    const questions = getQuestions();

    // 날짜 및 시간 포맷팅 함수
    const formatDateTime = (date) => {
        const d = new Date(date);
        const year = d.getFullYear();
        const month = String(d.getMonth() + 1).padStart(2, '0');
        const day = String(d.getDate()).padStart(2, '0');
        const hours = String(d.getHours()).padStart(2, '0');
        const minutes = String(d.getMinutes()).padStart(2, '0');
        return `${year}-${month}-${day} ${hours}:${minutes}`;
    };
// 이미지 경로 설정 및 오류 처리 함수
const setImageSrc = (url) => {
    if (url) {
        attachedImageElement.src = url;
    } else {
        attachedImageElement.src = '/images/default-image.jpg'; // 절대 경로
    }

    attachedImageElement.onerror = () => {
        attachedImageElement.src = '/images/default-image.jpg'; // 기본 이미지 경로
    };
};


    // 질문 표시 함수
    const displayQuestion = () => {
        const question = questions.find(q => q.id === questionIdNumber);

        if (question) {
            questionTitleElement.textContent = question.title || "제목이 없습니다.";
            questionAuthorElement.textContent = `작성자: ${question.author || "작성자가 없습니다."}`;
            questionDateElement.textContent = question.date ? formatDateTime(question.date) : "날짜가 없습니다.";
            questionViewsElement.textContent = `조회수: ${question.views || "조회수가 없습니다."}`;
            questionContentElement.innerHTML = question.content || "내용이 없습니다.";

            // 이미지 출력
            setImageSrc(question.image);
        } else {
            displayError("질문을 찾을 수 없습니다.");
        }
    };

    // 에러 메시지 표시 함수
    const displayError = (message) => {
        questionTitleElement.textContent = message;
        questionAuthorElement.textContent = "";
        questionDateElement.textContent = "";
        questionViewsElement.textContent = "";
        questionContentElement.innerHTML = "";
        attachedImageElement.src = ''; 
    };

    displayQuestion();
});
