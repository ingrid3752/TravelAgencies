document.addEventListener('DOMContentLoaded', () => {
    const bestTabButton = document.querySelector('button[data-tab="best"]');
    const allTabButton = document.querySelector('button[data-tab="all"]');
    const bestTabContent = document.querySelector('.tab-content.best');
    const allTabContent = document.querySelector('.tab-content.all');
    const addReviewButton = document.getElementById('addReviewButton');
    const reviewRatingInput = document.getElementById('reviewRating');
    const reviewTextInput = document.getElementById('reviewText');
    const reviewImageUrlInput = document.getElementById('reviewImageUrl');
    const addReviewFeedback = document.getElementById('addReviewFeedback');

    let reviews = loadReviewsFromLocalStorage();

    function loadReviewsFromLocalStorage() {
        try {
            const reviewsFromStorage = localStorage.getItem('reviews');
            return reviewsFromStorage ? JSON.parse(reviewsFromStorage) : [];
        } catch (error) {
            console.error('Error loading reviews from localStorage:', error);
            return [];
        }
    }

    function saveReviewsToLocalStorage(reviews) {
        try {
            localStorage.setItem('reviews', JSON.stringify(reviews));
        } catch (error) {
            console.error('Error saving reviews to localStorage:', error);
        }
    }

    function displayReviews(reviews, container) {
        container.innerHTML = ''; // Clear existing reviews
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
            container.appendChild(reviewElement);
        });
    }

    function handleTabClick(event) {
        const selectedTab = event.target.getAttribute('data-tab');
        if (!selectedTab) return;

        document.querySelectorAll('.tab-button').forEach(button => {
            button.classList.toggle('active', button.getAttribute('data-tab') === selectedTab);
        });

        if (bestTabContent) bestTabContent.classList.toggle('active', selectedTab === 'best');
        if (allTabContent) allTabContent.classList.toggle('active', selectedTab === 'all');

        updateReviewDisplays();
    }

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
            updateBestReviews(); // Check if reviews should be marked as best after update
            updateReviewDisplays();
        } else {
            console.error(`Review with ID ${id} not found.`);
        }
    }

    function deleteReview(id) {
        const reviewId = String(id);
        reviews = reviews.filter(review => String(review.id) !== reviewId);
        saveReviewsToLocalStorage(reviews);
        updateBestReviews(); // Check if reviews should be marked as best after deletion
        updateReviewDisplays();
    }

    function updateReviewDisplays() {
        const selectedTab = document.querySelector('.tab-button.active')?.getAttribute('data-tab');
        if (selectedTab === 'best') {
            displayReviews(reviews.filter(review => review.isBest), bestTabContent);
        } else {
            displayReviews(reviews, allTabContent);
        }
        updateAverageRating();
    }

    function calculateAverageRating(reviews) {
        const totalRating = reviews.reduce((acc, review) => acc + review.rating, 0);
        return reviews.length ? (totalRating / reviews.length).toFixed(1) : '0.0';
    }

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

    function updateBestReviews() {
        // Mark reviews as 'best' if they meet the conditions
        reviews.forEach(review => {
            review.isBest = review.rating >= 5 && (review.likes || 0) >= 10;
        });
        saveReviewsToLocalStorage(reviews);
    }

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

        const id = new Date().getTime(); // Unique ID based on timestamp
        const newReview = {
            id,
            rating,
            text,
            imageUrl: imageUrl || '',
            date: new Date().toISOString().split('T')[0],
            likes: 0,
            dislikes: 0,
            isBest: false // Initially not marked as best
        };

        reviews.push(newReview);
        saveReviewsToLocalStorage(reviews);
        updateBestReviews(); // Check if new review should be marked as 'best'
        updateReviewDisplays();

        reviewRatingInput.value = '';
        reviewTextInput.value = '';
        reviewImageUrlInput.value = '';
        addReviewFeedback.textContent = '리뷰가 추가되었습니다!';
    }

    function initialize() {
        const defaultTab = 'best';
        const defaultButton = document.querySelector(`button[data-tab="${defaultTab}"]`);
        if (defaultButton) {
            defaultButton.classList.add('active');
        }
        if (bestTabContent) bestTabContent.classList.add('active');
        if (allTabContent) allTabContent.classList.remove('active');

        updateBestReviews(); // Ensure 'best' reviews are updated
        updateReviewDisplays();
    }

    initialize();

    document.querySelectorAll('.tab-button').forEach(button => {
        button.addEventListener('click', handleTabClick);
    });

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

    // Add event listener for the add review button
    addReviewButton.addEventListener('click', addReview);
});


