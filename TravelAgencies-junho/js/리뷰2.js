function printValue() {
    // 값을 가져오기
    const name = document.querySelector('#name').value;
    const star = document.querySelector('#star').value;
    const nickname = document.querySelector('#nickname').value;
    const textarea = document.querySelector('#textarea').value;

    // 결과를 표시할 영역에 내용 설정
    const result = document.querySelector('#result');
    result.innerHTML = `
        <p>이름: ${name}</p>
        <p>별점: ${'⭐'.repeat(star)}</p>
        <p>닉네임: ${nickname}</p>
        <p>여행 후기: ${textarea}</p>
    `;
}