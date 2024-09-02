// 리뷰 데이터를 localStorage에서 불러오는 함수
function loadReviewsFromLocalStorage() {
    try {
        const reviewsFromStorage = localStorage.getItem('reviews');
        return reviewsFromStorage ? JSON.parse(reviewsFromStorage) : [];
    } catch (error) {
        console.error('Error loading reviews from localStorage:', error);
        return [];
    }
}

// 리뷰 데이터를 localStorage에 저장하는 함수
function saveReviewsToLocalStorage(reviews) {
    try {
        localStorage.setItem('reviews', JSON.stringify(reviews));
    } catch (error) {
        console.error('Error saving reviews to localStorage:', error);
    }
}

// 리뷰 출력 함수
function displayReviews(reviews, container) {
    container.innerHTML = ''; // 기존 리뷰 삭제
    reviews.forEach(review => {
        const reviewElement = document.createElement('div');
        reviewElement.classList.add('review-item');
        reviewElement.setAttribute('data-id', review.id); // 데이터 속성 추가
        reviewElement.innerHTML = `
            <div class="review-header">
                <div class="review-author">아이디: ${review.id}</div>
                <div class="review-rating">Rating: ${'⭐'.repeat(review.rating)}</div>
                <div class="review-date">${review.date}</div>
            </div>
            <div class="review-body">
                ${review.text}
                ${review.imageUrl ? `<img src="${review.imageUrl}" alt="리뷰 이미지" class="review-image" onerror="this.style.display='none'">` : ''}
            </div>
            <div class="review-buttons">
                <button class="like-button" data-id="${review.id}">👍 좋아요 (${review.likes || 0})</button>
                <button class="dislike-button" data-id="${review.id}">👎 싫어요 (${review.dislikes || 0})</button>
                <button class="delete-button" data-id="${review.id}">🗑️ 삭제</button>
            </div>
        `;
        container.appendChild(reviewElement);
    });
}

// 탭 버튼 클릭 시 탭 전환
function handleTabClick(event) {
    const selectedTab = event.target.getAttribute('data-tab');
    
    if (!selectedTab) return;

    // 탭 버튼 활성화 상태 변경
    document.querySelectorAll('.tab-button').forEach(button => {
        button.classList.toggle('active', button.getAttribute('data-tab') === selectedTab);
    });

    // 탭 콘텐츠 표시
    bestTabContent.classList.toggle('active', selectedTab === 'best');
    allTabContent.classList.toggle('active', selectedTab === 'all');

    // 리뷰 표시 업데이트
    updateReviewDisplays();
}

// 리뷰 카운트 업데이트 함수
function updateReviewCount(id, type) {
    const review = reviews.find(review => review.id === id);
    if (review) {
        if (type === 'like') {
            review.likes = (review.likes || 0) + 1;
        } else if (type === 'dislike') {
            review.dislikes = (review.dislikes || 0) + 1;
        }

        // 리뷰 데이터를 localStorage에 저장
        saveReviewsToLocalStorage(reviews);

        // 리뷰 리스트 업데이트
        updateReviewDisplays();
    }
}

// 리뷰 삭제 함수
function deleteReview(id) {
    // 리뷰 데이터에서 해당 ID의 리뷰를 삭제
    reviews = reviews.filter(review => review.id !== id);

    // 업데이트된 리뷰 데이터를 localStorage에 저장
    saveReviewsToLocalStorage(reviews);

    // 리뷰 리스트 업데이트
    updateReviewDisplays();
}

// 리뷰 리스트 업데이트 함수
function updateReviewDisplays() {
    const selectedTab = document.querySelector('.tab-button.active')?.getAttribute('data-tab');
    if (selectedTab === 'best') {
        displayReviews(reviews.filter(review => review.isBest), bestTabContent);
    } else {
        displayReviews(reviews, allTabContent);
    }
    
    // 평균 평점 업데이트
    updateAverageRating();
}

// 전체 리뷰의 평균 평점을 계산하는 함수
function calculateAverageRating(reviews) {
    const totalRating = reviews.reduce((acc, review) => acc + review.rating, 0);
    const averageRating = reviews.length ? (totalRating / reviews.length).toFixed(1) : 0;
    return averageRating;
}

// 평균 평점 섹션 업데이트 함수
function updateAverageRating() {
    const averageRating = calculateAverageRating(reviews);
    const stars = '⭐'.repeat(Math.round(averageRating)); // 별을 반복해서 표시

    document.getElementById('averageRatingValue').innerHTML = `
        평균 평점: <span class="stars">${stars}</span> (${averageRating})
    `;
}

// DOM 요소
const bestTabButton = document.querySelector('button[data-tab="best"]');
const allTabButton = document.querySelector('button[data-tab="all"]');
const bestTabContent = document.querySelector('.tab-content.best');
const allTabContent = document.querySelector('.tab-content.all');

// 리뷰 데이터 로드
let reviews = loadReviewsFromLocalStorage();

// 초기 탭 활성화 상태 설정 및 리뷰 표시
function initialize() {
    const defaultTab = 'best'; // 초기 탭을 'best'로 설정 (원하는 초기 탭으로 변경 가능)
    const defaultButton = document.querySelector(`button[data-tab="${defaultTab}"]`);
    if (defaultButton) {
        defaultButton.classList.add('active');
    }
    bestTabContent.classList.add('active');
    allTabContent.classList.remove('active');

    updateReviewDisplays();
}

// 초기화 함수 호출
initialize();

// 이벤트 리스너 추가
document.addEventListener('DOMContentLoaded', () => {
    // 탭 버튼 클릭 이벤트
    document.querySelectorAll('.tab-button').forEach(button => {
        button.addEventListener('click', handleTabClick);
    });

    // 리뷰 목록에 대한 클릭 이벤트 (이벤트 위임)
    document.addEventListener('click', event => {
        const target = event.target;
        if (target.classList.contains('like-button')) {
            const reviewId = target.getAttribute('data-id');
            updateReviewCount(reviewId, 'like');
        } else if (target.classList.contains('dislike-button')) {
            const reviewId = target.getAttribute('data-id');
            updateReviewCount(reviewId, 'dislike');
        } else if (target.classList.contains('delete-button')) {
            const reviewId = target.getAttribute('data-id');
            deleteReview(reviewId);
        }
    });
});
