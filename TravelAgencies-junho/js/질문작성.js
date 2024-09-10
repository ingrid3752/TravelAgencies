document.addEventListener("DOMContentLoaded", function() {
    const form = document.getElementById("question-form");

    form.addEventListener("submit", async function(event) {
        event.preventDefault(); // 폼 제출 시 페이지 새로 고침 방지

        const title = document.getElementById("title").value.trim();
        const author = document.getElementById("author").value.trim();
        const content = document.getElementById("content").value.trim();
        const imageInput = document.getElementById("image").files[0]; // 이미지 파일 가져오기

        // 필드 검증
        if (!title || !author || !content) {
            alert("모든 필드를 채워야 합니다.");
            return;
        }

        try {
            // 이미지 파일이 존재하면 Data URL로 변환
            let imageDataUrl = null;
            if (imageInput) {
                imageDataUrl = await getImageDataUrl(imageInput);
            }

            // 로컬 스토리지에 질문 저장
            const questions = JSON.parse(localStorage.getItem("questions")) || [];
            const newQuestion = {
                id: questions.length ? questions[questions.length - 1].id + 1 : 1,
                title: title,
                author: author,
                content: content,
                date: new Date().toISOString(),
                views: 0,
                image: imageDataUrl // 이미지 Data URL 추가
            };
            questions.push(newQuestion);
            localStorage.setItem("questions", JSON.stringify(questions));

            // 성공 메시지 또는 다른 페이지로 리디렉션
            alert("질문이 성공적으로 제출되었습니다.");
            form.reset(); // 폼 리셋
        } catch (error) {
            console.error("이미지 처리 중 오류 발생:", error);
            alert("이미지 처리 중 오류가 발생했습니다.");
        }
    });
});

const MAX_IMAGE_SIZE = 2 * 1024 * 1024; // 2MB

const getImageDataUrl = (file) => {
    return new Promise((resolve, reject) => {
        if (file.size > MAX_IMAGE_SIZE) {
            reject(new Error("파일 크기가 너무 큽니다. 2MB 이하의 파일만 업로드 가능합니다."));
            return;
        }
        const reader = new FileReader();
        reader.onload = () => resolve(reader.result);
        reader.onerror = () => reject(new Error("이미지 읽기 실패"));
        reader.readAsDataURL(file);
    });
};
