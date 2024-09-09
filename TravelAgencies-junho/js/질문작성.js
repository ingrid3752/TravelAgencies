document.addEventListener("DOMContentLoaded", function() {
    const form = document.getElementById("question-form");

    form.addEventListener("submit", function(event) {
        event.preventDefault(); // 폼 제출 시 페이지 새로 고침 방지

        const title = document.getElementById("title").value;
        const author = document.getElementById("author").value;
        const content = document.getElementById("content").value;
        const imageInput = document.getElementById("image").files[0]; // 이미지 파일 가져오기

        if (title && author && content) {
            // 이미지 파일이 존재하면 Data URL로 변환
            const getImageDataUrl = (file) => {
                return new Promise((resolve, reject) => {
                    const reader = new FileReader();
                    reader.onload = () => resolve(reader.result);
                    reader.onerror = reject;
                    reader.readAsDataURL(file);
                });
            };

            // 이미지 파일이 있는 경우 처리
            const processImage = imageInput ? getImageDataUrl(imageInput) : Promise.resolve(null);

            processImage.then((imageDataUrl) => {
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
                form.reset();
            }).catch(() => {
                alert("이미지 처리 중 오류가 발생했습니다.");
            });

        } else {
            alert("모든 필드를 채워야 합니다.");
        }
    });
});
