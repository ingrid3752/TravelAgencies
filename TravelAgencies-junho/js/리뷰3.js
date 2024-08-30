// 리뷰 데이터를 localStorage에서 불러오는 함수
function loadReviewsFromLocalStorage() {
    const reviewsFromStorage = localStorage.getItem('reviews');
    return reviewsFromStorage ? JSON.parse(reviewsFromStorage) : [];
}

// 리뷰 데이터를 localStorage에 저장하는 함수
function saveReviewsToLocalStorage(reviews) {
    localStorage.setItem('reviews', JSON.stringify(reviews));
}

// 리뷰 ID 생성 함수 (간단한 UUID 생성 방식)
function generateUniqueId() {
    return '_' + Math.random().toString(36).substr(2, 9);
}

// 리뷰 작성 폼 제출 시 동작
function handleReviewFormSubmit(event) {
    event.preventDefault();

    const rating = parseInt(document.getElementById('rating').value, 10);
    const text = document.getElementById('textbox').value;
    
    // 입력 값 검증
    if (isNaN(rating) || rating < 1 || rating > 5) {
        alert('평점은 1에서 5 사이의 숫자여야 합니다.');
        return;
    }
    
    if (!text.trim()) {
        alert('리뷰 내용을 입력해주세요.');
        return;
    }

    // 현재 날짜 가져오기
    const date = new Date().toLocaleDateString();

    // 새로운 리뷰 데이터 추가
    const newReview = {
        id: generateUniqueId(), // 유일한 ID 생성
        rating,
        text,
        date,
        isBest: rating >= 5,
        likes: 0,
        dislikes: 0
    };

    // 기존 리뷰 데이터 로드
    let reviews = loadReviewsFromLocalStorage();

    // 최신 리뷰를 맨 위에 추가
    reviews.unshift(newReview);

    // 리뷰 데이터를 localStorage에 저장
    saveReviewsToLocalStorage(reviews);

    // 폼 리셋
    reviewForm.reset();

    // 사용자에게 성공 메시지 표시
    alert('리뷰가 성공적으로 제출되었습니다!');
}

// DOM 요소
const reviewForm = document.getElementById('reviewFormContent');

// 이벤트 리스너 추가
reviewForm.addEventListener('submit', handleReviewFormSubmit);
