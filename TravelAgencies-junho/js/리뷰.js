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
        
        // 여행지 선택 박스 초기화
        destinationSelect.innerHTML = '<option value="" selected>여행지를 선택하세요</option>';
        
        // 선택된 카테고리에 따라 여행지 옵션 추가
        destinationsForCategory.forEach(destination => {
            const option = document.createElement('option');
            option.value = destination.value;
            option.textContent = destination.text;
            destinationSelect.appendChild(option);
        });
    });

    // 리뷰 제출
    form.addEventListener('submit', (event) => {
        event.preventDefault(); // 기본 폼 제출 동작을 방지

        // 입력 값 가져오기
        const name = nameInput.value.trim();
        const rating = ratingSelect.value;
        const comment = commentTextarea.value.trim();
        const category = categorySelect.value;
        const destination = destinationSelect.value;

        // 입력 값 검증
        if (!name || !rating || !comment || !category || !destination) {
            alert('모든 필드를 입력해 주세요.');
            return;
        }

        // 리뷰 데이터 객체 생성
        const review = {
            name,
            rating,
            comment,
            category,
            destination,
            date: new Date().toLocaleDateString() // 현재 날짜
        };

        // 로컬 저장소에서 리뷰 리스트 불러오기
        const reviews = JSON.parse(localStorage.getItem('reviews')) || [];
        
        // 새 리뷰를 리스트에 추가
        reviews.push(review);

        // 리뷰 리스트를 로컬 저장소에 저장
        localStorage.setItem('reviews', JSON.stringify(reviews));

        // 폼 필드 초기화
        form.reset();

        // 리뷰 리스트 업데이트
        displayReviews();

        // 사용자에게 피드백 제공
        alert('리뷰가 성공적으로 제출되었습니다!');
    });

    // 리뷰 리스트 표시 함수
    function displayReviews() {
        // 로컬 저장소에서 리뷰 리스트 불러오기
        const reviews = JSON.parse(localStorage.getItem('reviews')) || [];
        
        // 리뷰 리스트 초기화
        reviewList.innerHTML = '';

        // 각 리뷰 항목 추가
        reviews.forEach(review => {
            const reviewItem = document.createElement('div');
            reviewItem.classList.add('review-item');

            reviewItem.innerHTML = `
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
            `;

            reviewList.appendChild(reviewItem);
        });
    }

    // 페이지 로드 시 리뷰 리스트 표시
    displayReviews();
});