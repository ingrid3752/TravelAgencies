document.addEventListener('DOMContentLoaded', () => {
    const form = document.querySelector('#reviewForm form');
    const nameInput = document.querySelector('#name');
    const ratingSelect = document.querySelector('#inputGroupSelect01');
    const commentTextarea = document.querySelector('#comment');
    const reviewList = document.querySelector('#reviewList'); // 리뷰 항목이 추가될 리스트

    // 별점 선택 시 시각적 표시
    ratingSelect.addEventListener('change', () => {
        const selectedValue = ratingSelect.value;
        console.log(`선택된 별점: ${selectedValue}`); // 선택된 별점 로그
        // 별점 시각적 표시
    });

    form.addEventListener('submit', (event) => {
        event.preventDefault(); // 기본 폼 제출 동작을 방지

        // 입력 값 가져오기
        const name = nameInput.value.trim();
        const rating = ratingSelect.value;
        const comment = commentTextarea.value.trim();

        // 입력 값 검증
        if (!name) {
            alert('이름을 입력해 주세요.');
            nameInput.focus();
            return;
        }

        if (rating === '' || rating === '선택하기') {
            alert('별점을 선택해 주세요.');
            ratingSelect.focus();
            return;
        }

        if (!comment) {
            alert('댓글을 입력해 주세요.');
            commentTextarea.focus();
            return;
        }

        // 새로운 리뷰 항목 생성
        const reviewItem = document.createElement('div');
        reviewItem.className = 'review-item';

        const reviewHeader = document.createElement('div');
        reviewHeader.className = 'review-header';
        reviewHeader.innerHTML = `
            <strong>${name}</strong> <span>${'⭐'.repeat(rating)}</span>
        `;
        reviewItem.appendChild(reviewHeader);

        const reviewBody = document.createElement('p');
        reviewBody.textContent = comment;
        reviewItem.appendChild(reviewBody);

        // 리뷰 리스트에 새로운 리뷰 항목 추가
        reviewList.appendChild(reviewItem);

        // 폼 필드 초기화
        form.reset();

        // 사용자에게 피드백 제공
        alert('리뷰가 성공적으로 제출되었습니다!');
        stop
    });
});


document.addEventListener('DOMContentLoaded', () => {
    const categorySelect = document.getElementById('categorySelect');
    const destinationSelect = document.getElementById('destinationSelect');

    // 여행지 데이터 (여기서 필요한 데이터를 직접 입력합니다)
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

    // 카테고리 변경 시 세부 여행지 업데이트
    categorySelect.addEventListener('change', () => {
        const selectedCategory = categorySelect.value;

        // destinationSelect 초기화
        destinationSelect.innerHTML = '<option value="" selected>여행지를 선택하세요</option>';

        if (selectedCategory && destinations[selectedCategory]) {
            destinations[selectedCategory].forEach(dest => {
                const option = document.createElement('option');
                option.value = dest.value;
                option.textContent = dest.text;
                destinationSelect.appendChild(option);
            });
        }
    });
});