// 리뷰 데이터 (예제)
const reviews = [
    { id: 1, rating: 5, text: "훌륭한 서비스였습니다!", isBest: true },
    { id: 2, rating: 3, text: "보통이었어요.", isBest: false },
    { id: 3, rating: 4, text: "좋았어요, 다음에 또 올게요.", isBest: true },
    { id: 4, rating: 2, text: "별로였어요.", isBest: false }
];

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
        reviewElement.classList.add('review');
        reviewElement.innerHTML = `
            <div class="review-rating">Rating: ${'⭐'.repeat(review.rating)}</div>
            <div class="review-text">${review.text}</div>
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

// 리뷰 작성 폼 제출 시 동작
function handleReviewFormSubmit(event) {
    event.preventDefault();

    const rating = parseInt(document.getElementById('rating').value, 10);
    const text = document.getElementById('textbox').value;
    if (rating && text) {
        // 새로운 리뷰 데이터 추가
        const newReview = {
            id: reviews.length + 1,
            rating,
            text,
            isBest: rating >= 5 // 간단한 조건으로 베스트 리뷰 구분
        };
        reviews.push(newReview);

        // 리뷰 리스트 업데이트
        displayReviews(reviews.filter(review => review.isBest), bestTabContent);
        displayReviews(reviews, allTabContent);

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


