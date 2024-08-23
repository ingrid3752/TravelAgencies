document.addEventListener('DOMContentLoaded', () => {
    const form = document.querySelector('#reviewFormContent');
    const nameInput = document.querySelector('#name');
    const ratingSelect = document.querySelector('#rating');
    const commentTextarea = document.querySelector('#comment');
    const categorySelect = document.querySelector('#categorySelect');
    const destinationSelect = document.querySelector('#destinationSelect');
    const reviewList = document.querySelector('#reviewList');

    // 여행지 데이터
    const destinations = {
        domestic: [
            { value: 'seoul', text: '서울' },
            { value: 'busan', text: '부산' },
            { value: 'jeju', text: '제주도' }
        ],
        international: [
            { value: 'tokyo', text: '도쿄' },
            { value: 'newyork', text: '뉴욕' },
            { value: 'paris', text: '파리' }
        ]
    };

    // 카테고리 변경 시 여행지 업데이트
    categorySelect.addEventListener('change', () => {
        const selectedCategory = categorySelect.value;
        const destinationsForCategory = destinations[selectedCategory] || [];
        
        destinationSelect.innerHTML = '<option value="" selected>여행지를 선택하세요</option>';
        destinationsForCategory.forEach(({ value, text }) => {
            const option = document.createElement('option');
            option.value = value;
            option.textContent = text;
            destinationSelect.appendChild(option);
        });
    });

    // 리뷰 제출
    form.addEventListener('submit', (event) => {
        event.preventDefault();

        const name = nameInput.value.trim();
        const rating = ratingSelect.value;
        const comment = commentTextarea.value.trim();
        const category = categorySelect.value;
        const destination = destinationSelect.value;

        if (!name || !rating || !comment || !category || !destination) {
            alert('모든 필드를 입력해 주세요.');
            return;
        }

        const review = {
            name,
            rating,
            comment,
            category,
            destination,
            date: new Date().toLocaleDateString()
        };

        const reviews = JSON.parse(localStorage.getItem('reviews')) || [];
        reviews.push(review);
        localStorage.setItem('reviews', JSON.stringify(reviews));

        form.reset();
        displayReviews();
        alert('리뷰가 성공적으로 제출되었습니다!');
    });

    // 리뷰 리스트 표시 함수
    function displayReviews() {
        const reviews = JSON.parse(localStorage.getItem('reviews')) || [];
        reviewList.innerHTML = reviews.map(review => `
            <div class="review-item">
                <div class="review-header">
                    <span>${review.name}</span>
                    <span class="review-rating">${'⭐'.repeat(review.rating)}</span>
                </div>
                <div class="review-body">
                    <p>${review.comment}</p>
                </div>
                <div class="review-meta">
                    <p>${review.category} - ${review.destination}</p>
                    <p>${review.date}</p>
                </div>
            </div>
        `).join('');
    }

    // 페이지 로드 시 리뷰 리스트 표시
    displayReviews();
});