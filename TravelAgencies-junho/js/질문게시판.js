function addQuestion() {
    const questionInput = document.getElementById('questionInput');
    const questionsList = document.getElementById('questionsList');

    if (questionInput.value.trim() === '') {
        alert('질문을 입력해주세요.');
        return;
    }

    const newQuestion = document.createElement('li');
    newQuestion.textContent = questionInput.value.trim();
    questionsList.appendChild(newQuestion);

    questionInput.value = '';
}