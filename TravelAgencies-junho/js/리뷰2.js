// 리뷰를 제출하고 목록에 추가하는 코드

document.addEventListener('DOMContentLoaded', () => {
    const form = document.getElementById('review-form');
    const reviewList = document.getElementById('reviews');

    form.addEventListener('submit', (event) => {
        event.preventDefault();

        // 폼 데이터를 가져옵니다
        const name = document.getElementById('name').value;
        const star = document.getElementById('star').value;
        const nickname = document.getElementById('nickname').value;
        const reviewText = document.getElementById('review-text').value;

        // 리뷰를 리스트에 추가합니다
        const reviewItem = document.createElement('li');
        reviewItem.innerHTML = `
            <strong>${name} (${nickname})</strong> - ${'⭐'.repeat(star)}
            <p>${reviewText}</p>
        `;
        reviewList.appendChild(reviewItem);

        // 폼 필드를 초기화합니다
        form.reset();
    });
});