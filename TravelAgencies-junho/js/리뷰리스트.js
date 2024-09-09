document.addEventListener('DOMContentLoaded', () => {
    // DOMContentLoaded 이벤트가 발생하면 실행되는 코드
    const bestTabButton = document.querySelector('button[data-tab="best"]'); // '베스트 리뷰' 탭 버튼
    const allTabButton = document.querySelector('button[data-tab="all"]'); // '모든 리뷰' 탭 버튼
    const bestTabContent = document.querySelector('.tab-content.best'); // '베스트 리뷰' 콘텐츠
    const allTabContent = document.querySelector('.tab-content.all'); // '모든 리뷰' 콘텐츠
    const addReviewButton = document.getElementById('addReviewButton'); // 리뷰 추가 버튼
    const reviewRatingInput = document.getElementById('reviewRating'); // 평점 입력 필드
    const reviewTextInput = document.getElementById('reviewText'); // 리뷰 텍스트 입력 필드
    const reviewImageUrlInput = document.getElementById('reviewImageUrl'); // 리뷰 이미지 URL 입력 필드
    const addReviewFeedback = document.getElementById('addReviewFeedback'); // 리뷰 추가 피드백 메시지

    let reviews = loadReviewsFromLocalStorage(); // 로컬 스토리지에서 리뷰를 불러옴

    // 로컬 스토리지에서 리뷰를 로드하는 함수
    function loadReviewsFromLocalStorage() {
        try {
            const reviewsFromStorage = localStorage.getItem('reviews');
            return reviewsFromStorage ? JSON.parse(reviewsFromStorage) : []; // 리뷰가 있으면 파싱, 없으면 빈 배열
        } catch (error) {
            console.error('Error loading reviews from localStorage:', error); // 에러 발생 시 로그
            return [];
        }
    }

    // 리뷰를 로컬 스토리지에 저장하는 함수
    function saveReviewsToLocalStorage(reviews) {
        try {
            localStorage.setItem('reviews', JSON.stringify(reviews)); // 리뷰를 JSON으로 변환하여 저장
        } catch (error) {
            console.error('Error saving reviews to localStorage:', error); // 에러 발생 시 로그
        }
    }

    // 리뷰를 화면에 표시하는 함수
    function displayReviews(reviews, container) {
        container.innerHTML = ''; // 기존 리뷰를 클리어
        reviews.forEach(review => {
            const reviewElement = document.createElement('div');
            reviewElement.classList.add('review-item');
            reviewElement.setAttribute('data-id', review.id);
            reviewElement.innerHTML = `
                <div class="review-header">
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
            container.appendChild(reviewElement); // 새 리뷰를 컨테이너에 추가
        });
    }

    // 탭 클릭 이벤트 핸들러
    function handleTabClick(event) {
        const selectedTab = event.target.getAttribute('data-tab');
        if (!selectedTab) return;

        document.querySelectorAll('.tab-button').forEach(button => {
            button.classList.toggle('active', button.getAttribute('data-tab') === selectedTab);
        });

        if (bestTabContent) bestTabContent.classList.toggle('active', selectedTab === 'best');
        if (allTabContent) allTabContent.classList.toggle('active', selectedTab === 'all');

        updateReviewDisplays(); // 리뷰 디스플레이 업데이트
    }

    // 리뷰의 좋아요 또는 싫어요 수를 업데이트하는 함수
    function updateReviewCount(id, type) {
        const reviewId = String(id);
        const review = reviews.find(review => String(review.id) === reviewId);

        if (review) {
            if (type === 'like') {
                review.likes = (review.likes || 0) + 1;
            } else if (type === 'dislike') {
                review.dislikes = (review.dislikes || 0) + 1;
            } else {
                console.error(`Invalid type ${type}. Expected 'like' or 'dislike'.`);
                return;
            }

            saveReviewsToLocalStorage(reviews);
            updateBestReviews(); // 리뷰가 '베스트'로 표시될지 확인
            updateReviewDisplays();
        } else {
            console.error(`Review with ID ${id} not found.`);
        }
    }

    // 리뷰를 삭제하는 함수
    function deleteReview(id) {
        const reviewId = String(id);
        reviews = reviews.filter(review => String(review.id) !== reviewId);
        saveReviewsToLocalStorage(reviews);
        updateBestReviews(); // 리뷰가 '베스트'로 표시될지 확인
        updateReviewDisplays();
    }

    // 리뷰 디스플레이를 업데이트하는 함수
    function updateReviewDisplays() {
        const selectedTab = document.querySelector('.tab-button.active')?.getAttribute('data-tab');
        if (selectedTab === 'best') {
            displayReviews(reviews.filter(review => review.isBest), bestTabContent);
        } else {
            displayReviews(reviews, allTabContent);
        }
        updateAverageRating();
    }

    // 평균 평점을 계산하는 함수
    function calculateAverageRating(reviews) {
        const totalRating = reviews.reduce((acc, review) => acc + review.rating, 0);
        return reviews.length ? (totalRating / reviews.length).toFixed(1) : '0.0'; // 평점 계산
    }

    // 평균 평점을 업데이트하는 함수
    function updateAverageRating() {
        const averageRating = calculateAverageRating(reviews);
        const stars = '⭐'.repeat(Math.round(averageRating));

        const averageRatingValue = document.getElementById('averageRatingValue');
        if (averageRatingValue) {
            averageRatingValue.innerHTML = `
                평균 평점: <span class="stars">${stars}</span> (${averageRating})
            `;
        }
    }

    // '베스트' 리뷰를 업데이트하는 함수
    function updateBestReviews() {
        reviews.forEach(review => {
            review.isBest = review.rating >= 5 && (review.likes || 0) >= 10; // 리뷰가 '베스트'인지 확인
        });
        saveReviewsToLocalStorage(reviews);
    }

    // 새 리뷰를 추가하는 함수
    function addReview() {
        const rating = parseInt(reviewRatingInput.value, 10);
        const text = reviewTextInput.value.trim();
        const imageUrl = reviewImageUrlInput.value.trim();

        if (isNaN(rating) || rating < 1 || rating > 5) {
            addReviewFeedback.textContent = '평점은 1과 5 사이의 숫자여야 합니다.';
            return;
        }

        if (!text) {
            addReviewFeedback.textContent = '리뷰 내용은 필수입니다.';
            return;
        }

        const id = new Date().getTime(); // 타임스탬프 기반의 고유 ID 생성
        const newReview = {
            id,
            rating,
            text,
            imageUrl: imageUrl || '',
            date: new Date().toISOString().split('T')[0], // 현재 날짜를 문자열로 저장
            likes: 0,
            dislikes: 0,
            isBest: false // 초기에는 '베스트'로 표시되지 않음
        };

        reviews.push(newReview);
        saveReviewsToLocalStorage(reviews);
        updateBestReviews(); // 새 리뷰가 '베스트'로 표시될지 확인
        updateReviewDisplays();

        reviewRatingInput.value = '';
        reviewTextInput.value = '';
        reviewImageUrlInput.value = '';
        addReviewFeedback.textContent = '리뷰가 추가되었습니다!';
    }

    // 초기화 함수
    function initialize() {
        const defaultTab = 'best';
        const defaultButton = document.querySelector(`button[data-tab="${defaultTab}"]`);
        if (defaultButton) {
            defaultButton.classList.add('active');
        }
        if (bestTabContent) bestTabContent.classList.add('active');
        if (allTabContent) allTabContent.classList.remove('active');

        updateBestReviews(); // '베스트' 리뷰 업데이트
        updateReviewDisplays();
    }

    initialize(); // 페이지 로드 시 초기화

    // 탭 버튼 클릭 이벤트 리스너 추가
    document.querySelectorAll('.tab-button').forEach(button => {
        button.addEventListener('click', handleTabClick);
    });

    // 리뷰에 대한 좋아요, 싫어요, 삭제 버튼 클릭 이벤트 리스너 추가
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

    // 리뷰 추가 버튼 클릭 이벤트 리스너 추가
    addReviewButton.addEventListener('click', addReview);
});
