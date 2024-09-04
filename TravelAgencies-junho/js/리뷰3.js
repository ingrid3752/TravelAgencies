// 리뷰 제출 폼 처리
document.getElementById('reviewFormContent').addEventListener('submit', function(event) {
    event.preventDefault();

    const rating = parseInt(document.getElementById('rating').value, 10);
    const text = document.getElementById('textbox').value;
    const imageInput = document.getElementById('imageUpload');
    const file = imageInput.files[0];

    // 유효성 검사
    if (isNaN(rating) || rating <= 0 || rating > 5) {
        alert('Rating must be between 1 and 5.');
        return;
    }
    if (text.trim() === '') {
        alert('Review text cannot be empty.');
        return;
    }

    const id = new Date().getTime(); // 임시로 ID를 현재 시간으로 설정

    let imageUrl = '';

    if (file) {
        if (file.size > 5 * 1024 * 1024) { // 5MB 제한
            alert('Image file size should be less than 5MB.');
            return;
        }
        const reader = new FileReader();
        reader.onloadend = () => {
            imageUrl = reader.result;
            saveReviewToStorage(id, rating, text, imageUrl);
        };
        reader.readAsDataURL(file);
    } else {
        saveReviewToStorage(id, rating, text, imageUrl);
    }
});

function saveReviewToStorage(id, rating, text, imageUrl) {
    let reviews = JSON.parse(localStorage.getItem('reviews')) || [];
    const newReview = {
        id,
        rating,
        text,
        imageUrl: imageUrl || '',
        date: new Date().toLocaleDateString(),
        likes: 0,
        dislikes: 0,
        isBest: false
    };
    reviews.push(newReview);
    localStorage.setItem('reviews', JSON.stringify(reviews));

    // 피드백 메시지 표시
    const feedbackMessage = document.getElementById('feedbackMessage');
    if (feedbackMessage) {
        feedbackMessage.textContent = '리뷰가 성공적으로 제출되었습니다!';
        feedbackMessage.style.display = 'block';
        setTimeout(() => {
            feedbackMessage.style.display = 'none';
        }, 3000); // 3초 후 메시지 숨기기
    } else {
        console.error('Feedback message element not found.');
    }

    // 폼 초기화
    document.getElementById('reviewFormContent').reset();
    document.getElementById('imagePreview').style.display = 'none';
}

// 이미지 미리보기 기능
document.getElementById('imageUpload').addEventListener('change', function() {
    const file = this.files[0];
    const imagePreview = document.getElementById('imagePreview');

    if (file) {
        const reader = new FileReader();
        reader.onloadend = () => {
            imagePreview.src = reader.result;
            imagePreview.style.display = 'block';
        };
        reader.readAsDataURL(file);
    } else {
        imagePreview.src = '';
        imagePreview.style.display = 'none';
    }
});
