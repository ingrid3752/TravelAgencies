// 리뷰 데이터 (예제, localStorage에서 불러오는 경우는 제외)
const reviews = loadReviewsFromLocalStorage();

// DOM 요소
const bestTabButton = document.querySelector('button[data-tab="best"]');
const allTabButton = document.querySelector('button[data-tab="all"]');
const bestTabContent = document.querySelector('.tab-content.best');
const allTabContent = document.querySelector('.tab-content.all');
const reviewForm = document.getElementById('reviewFormContent');

// 리뷰 출력 함수
function displayReviews(reviews, container) {
    container.innerHTML = ''; // 기존 리뷰 삭제
    reviews.forEach(review => {
        const reviewElement = document.createElement('div');
        reviewElement.classList.add('review-item');
        reviewElement.innerHTML = `
            <div class="review-header">
                <div class="review-rating">Rating: ${'⭐'.repeat(review.rating)}</div>
                <div class="review-date">${review.date}</div>
            </div>
            <div class="review-body">${review.text}</div>
        `;
        container.appendChild(reviewElement);
    });
}

// 탭 버튼 클릭 시 탭 전환
function handleTabClick(event) {
    const selectedTab = event.target.getAttribute('data-tab');

    // 탭 버튼 활성화 상태 변경
    document.querySelectorAll('.tab-button').forEach(button => {
        button.classList.toggle('active', button.getAttribute('data-tab') === selectedTab);
    });

    // 탭 콘텐츠 표시
    bestTabContent.classList.toggle('active', selectedTab === 'best');
    allTabContent.classList.toggle('active', selectedTab === 'all');
}

// 리뷰 데이터를 localStorage에 저장하는 함수
function saveReviewsToLocalStorage(reviews) {
    localStorage.setItem('reviews', JSON.stringify(reviews));
}

// localStorage에서 리뷰 데이터를 불러오는 함수
function loadReviewsFromLocalStorage() {
    const reviewsFromStorage = localStorage.getItem('reviews');
    return reviewsFromStorage ? JSON.parse(reviewsFromStorage) : [];
}

// 리뷰 작성 폼 제출 시 동작
function handleReviewFormSubmit(event) {
    event.preventDefault();

    const rating = parseInt(document.getElementById('rating').value, 10);
    const text = document.getElementById('textbox').value;
    if (rating && text) {
        // 현재 날짜 가져오기
        const date = new Date().toLocaleDateString(); // 날짜를 로케일 형식으로 가져옵니다.
        
        // 새로운 리뷰 데이터 추가
        const newReview = {
            id: reviews.length + 1,
            rating,
            text,
            date, // 날짜 추가
            isBest: rating >= 5 // 간단한 조건으로 베스트 리뷰 구분
        };
        reviews.push(newReview);

        // 리뷰 리스트 업데이트
        displayReviews(reviews.filter(review => review.isBest), bestTabContent);
        displayReviews(reviews, allTabContent);

        // 리뷰 데이터를 localStorage에 저장
        saveReviewsToLocalStorage(reviews);

        // 폼 리셋
        reviewForm.reset();
    }
}

// 초기 리뷰 표시
displayReviews(reviews.filter(review => review.isBest), bestTabContent);
displayReviews(reviews, allTabContent);

// 이벤트 리스너 등록
bestTabButton.addEventListener('click', handleTabClick);
allTabButton.addEventListener('click', handleTabClick);
reviewForm.addEventListener('submit', handleReviewFormSubmit);