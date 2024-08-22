document.addEventListener('DOMContentLoaded', () => {
    const form = document.querySelector('.question-form');
    const questionInput = document.querySelector('#questionInput');
    const photoInput = document.querySelector('#photoInput');
    const photoPreview = document.querySelector('#photoPreview');
    const questionsList = document.querySelector('#questionsList');
    const searchInput = document.querySelector('#searchInput');
    const searchButton = document.querySelector('#searchButton');

    const questions = []; // 질문 데이터를 저장할 배열

    function addQuestion() {
        const questionText = questionInput.value.trim();
        const photoFile = photoInput.files[0];

        if (!questionText) {
            alert('질문을 입력해 주세요.');
            questionInput.focus();
            return;
        }

        const question = {
            text: questionText,
            author: '사용자', // 실제로는 사용자 정보를 동적으로 가져와야 함
            date: new Date().toLocaleDateString(),
            photo: photoFile ? URL.createObjectURL(photoFile) : null
        };

        questions.push(question);
        displayQuestions();
        form.reset();
        photoPreview.src = ''; // 미리보기 이미지 초기화
    }

    function displayQuestions(filteredQuestions = questions) {
        questionsList.innerHTML = '';

        if (filteredQuestions.length === 0) {
            questionsList.innerHTML = '<li>질문이 없습니다.</li>';
            return;
        }

        filteredQuestions.forEach(question => {
            const questionItem = document.createElement('li');
            questionItem.className = 'question-item';
            questionItem.innerHTML = `
                <div class="question-meta">
                    <span>작성자: ${question.author}</span> | 
                    <span>날짜: ${question.date}</span>
                </div>
                <div class="question-text">${question.text}</div>
                ${question.photo ? `<img src="${question.photo}" alt="질문 사진" />` : ''}
            `;
            questionsList.appendChild(questionItem);
        });
    }

    function searchQuestions() {
        const searchText = searchInput.value.trim().toLowerCase();
        
        if (searchText === '') {
            displayQuestions();
            return;
        }

        const filteredQuestions = questions.filter(question => 
            question.text.toLowerCase().includes(searchText)
        );

        if (filteredQuestions.length === 0) {
            alert('검색 결과가 없습니다.');
        }

        displayQuestions(filteredQuestions);
    }

    photoInput.addEventListener('change', () => {
        const file = photoInput.files[0];
        if (file) {
            const reader = new FileReader();
            reader.onload = function(e) {
                photoPreview.src = e.target.result;
            };
            reader.readAsDataURL(file);
        } else {
            photoPreview.src = '';
        }
    });

    form.querySelector('#addQuestionButton').addEventListener('click', addQuestion);
    searchButton.addEventListener('click', searchQuestions);
});