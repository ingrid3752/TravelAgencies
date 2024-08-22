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
        // 별점 시각적 표시 추가 로직
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
            <strong>${name}</strong> <span>(${rating}⭐)</span>
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
        alert('리뷰가 제출되었습니다!');
    });
});