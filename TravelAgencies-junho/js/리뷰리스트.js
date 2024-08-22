document.addEventListener('DOMContentLoaded', () => {
    const reviewListSection = document.getElementById('reviewList');

    // 로컬 저장소에서 리뷰 데이터 불러오기
    const reviews = JSON.parse(localStorage.getItem('reviews')) || [];

    // 리뷰 항목을 동적으로 생성하여 추가
    reviews.forEach(review => {
        const reviewItem = document.createElement('article');
        reviewItem.className = 'review-item';

        reviewItem.innerHTML = `
            <header class="review-header">
                <h3 class="review-title">${review.name}</h3>
                <span class="review-rating">${'⭐'.repeat(review.rating)}</span>
            </header>
            <div class="review-meta">
                <span class="review-category">카테고리: ${review.category}</span>
                <span class="review-destination">여행지: ${review.destination}</span>
                <span class="review-date">작성일: ${review.date}</span>
            </div>
            <p class="review-body">${review.comment}</p>
        `;

        reviewListSection.appendChild(reviewItem);
    });
});