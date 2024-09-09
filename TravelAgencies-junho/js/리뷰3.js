document.getElementById('reviewFormContent').addEventListener('submit', function(event) {
    event.preventDefault(); // 폼 제출의 기본 동작을 막음

    const rating = parseInt(document.getElementById('rating').value, 10); // 평점 입력값
    const text = document.getElementById('textbox').value; // 리뷰 텍스트 입력값
    const imageInput = document.getElementById('imageUpload'); // 이미지 파일 입력
    const file = imageInput.files[0]; // 선택된 이미지 파일

    // 유효성 검사
    if (isNaN(rating) || rating <= 0 || rating > 5) {
        alert('Rating must be between 1 and 5.'); // 평점이 1-5 사이가 아니면 경고
        return;
    }
    if (text.trim() === '') {
        alert('Review text cannot be empty.'); // 리뷰 텍스트가 비어 있으면 경고
        return;
    }

    const id = new Date().getTime(); // 리뷰 ID를 현재 시간으로 설정

    let imageUrl = ''; // 기본 이미지 URL을 빈 문자열로 설정

    if (file) {
        if (file.size > 5 * 1024 * 1024) { // 이미지 파일 크기가 5MB를 초과하면
            alert('Image file size should be less than 5MB.'); // 경고 메시지 표시
            return;
        }
        const reader = new FileReader();
        reader.onloadend = () => {
            imageUrl = reader.result; // 이미지 파일을 Data URL로 변환
            saveReviewToStorage(id, rating, text, imageUrl); // 리뷰 저장
        };
        reader.readAsDataURL(file); // 이미지 파일 읽기
    } else {
        saveReviewToStorage(id, rating, text, imageUrl); // 이미지가 없으면 리뷰 저장
    }
});

function saveReviewToStorage(id, rating, text, imageUrl) {
    let reviews = JSON.parse(localStorage.getItem('reviews')) || []; // 기존 리뷰 목록을 가져옴
    const newReview = {
        id,
        rating,
        text,
        imageUrl: imageUrl || '', // 이미지 URL이 없으면 빈 문자열
        date: new Date().toLocaleDateString(), // 현재 날짜를 문자열로 저장
        likes: 0, // 기본 좋아요 수
        dislikes: 0, // 기본 싫어요 수
        isBest: false // 기본 베스트 리뷰 여부
    };
    reviews.push(newReview); // 새 리뷰를 목록에 추가
    localStorage.setItem('reviews', JSON.stringify(reviews)); // 리뷰 목록을 localStorage에 저장

    // 피드백 메시지 표시
    const feedbackMessage = document.getElementById('feedbackMessage');
    if (feedbackMessage) {
        feedbackMessage.textContent = '리뷰가 성공적으로 제출되었습니다!'; // 피드백 메시지 설정
        feedbackMessage.style.display = 'block'; // 메시지 표시
        setTimeout(() => {
            feedbackMessage.style.display = 'none'; // 3초 후 메시지 숨김
        }, 3000);
    } else {
        console.error('Feedback message element not found.'); // 피드백 메시지 요소가 없으면 에러 로그
    }
    

    // 폼 초기화
    document.getElementById('reviewFormContent').reset(); // 폼 필드 초기화
    document.getElementById('imagePreview').style.display = 'none'; // 이미지 미리보기 숨김
}

document.getElementById('imageUpload').addEventListener('change', function() {
    const file = this.files[0]; // 선택된 파일
    const imagePreview = document.getElementById('imagePreview'); // 이미지 미리보기 요소

    if (file) {
        const reader = new FileReader();
        reader.onloadend = () => {
            imagePreview.src = reader.result; // 파일을 Data URL로 변환하여 미리보기 이미지 설정
            imagePreview.style.display = 'block'; // 이미지 미리보기 표시
        };
        reader.readAsDataURL(file); // 파일 읽기
    } else {
        imagePreview.src = ''; // 파일이 없으면 미리보기 이미지 초기화
        imagePreview.style.display = 'none'; // 이미지 미리보기 숨김
    }
});
