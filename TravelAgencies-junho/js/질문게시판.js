document.addEventListener("DOMContentLoaded", function() {
    const postsContainer = document.getElementById("posts-container");
    const searchInput = document.getElementById("search");
    const filterSelect = document.getElementById("filter");
    const paginationContainer = document.querySelector(".pagination");

    // 기본 페이지 설정
    let currentPage = parseInt(localStorage.getItem("currentPage")) || 1;
    const itemsPerPage = 5;

    // 날짜를 "YYYY-MM-DD" 형식으로 포맷팅하는 함수
    const formatDate = (date) => {
        const d = new Date(date);
        const year = d.getFullYear();
        const month = String(d.getMonth() + 1).padStart(2, '0');
        const day = String(d.getDate()).padStart(2, '0');
        return `${year}-${month}-${day}`;
    };

    // 로컬 스토리지에서 질문 리스트 가져오기
    const getQuestions = () => JSON.parse(localStorage.getItem("questions")) || [];

    // 로컬 스토리지에 질문 리스트 저장하기
    const saveQuestions = (questions) => localStorage.setItem("questions", JSON.stringify(questions));

    // 질문의 조회수를 증가시키는 함수
    const incrementViews = (id) => {
        let questions = getQuestions();
        const question = questions.find(q => q.id === id);
        if (question) {
            question.views += 1;
            saveQuestions(questions);
        }
    };

    // 페이지에 표시할 질문을 가져오는 함수
    const getPaginatedQuestions = (questions) => {
        const start = (currentPage - 1) * itemsPerPage;
        const end = start + itemsPerPage;
        return questions.slice(start, end);
    };

    // 페이지 네비게이션 생성 함수
    const renderPagination = (totalItems) => {
        const totalPages = Math.ceil(totalItems / itemsPerPage);
        paginationContainer.innerHTML = `
            <a href="#" class="prev" ${currentPage === 1 ? 'style="pointer-events: none;"' : ''}>이전</a>
            ${Array.from({ length: totalPages }, (_, i) => i + 1).map(pageNumber =>
                `<a href="#" class="page-number ${pageNumber === currentPage ? 'active' : ''}" data-page="${pageNumber}">${pageNumber}</a>`
            ).join('')}
            <a href="#" class="next" ${currentPage === totalPages ? 'style="pointer-events: none;"' : ''}>다음</a>
        `;
    };

    // 질문 리스트를 게시판에 렌더링하는 함수
    const renderPosts = (questions) => {
        postsContainer.innerHTML = ''; // 기존 콘텐츠 제거
        if (questions.length === 0) {
            postsContainer.innerHTML = '<p>질문이 없습니다.</p>';
            return;
        }
        questions.forEach((question, index) => {
            const postElement = document.createElement("div");
            postElement.className = "post-item";
            postElement.innerHTML = `
                <span class="post-id">${index + 1 + (currentPage - 1) * itemsPerPage}</span>
                <span class="post-title"><a href="./질문상세.html?id=${question.id}" class="view-link">${question.title}</a></span>
                <span class="post-author">${question.author}</span>
                <span class="post-date">${formatDate(question.date)}</span>
                <span class="post-views">${question.views}</span>
                <button class="delete-button" data-id="${question.id}">삭제</button>
            `;
            postsContainer.appendChild(postElement);
        });
    };

    // 질문 삭제 함수
    const deleteQuestion = (id) => {
        if (confirm('정말로 이 질문을 삭제하시겠습니까?')) {
            let questions = getQuestions();
            questions = questions.filter(q => q.id !== id);
            saveQuestions(questions);
            // 삭제 후 페이지를 초기화
            currentPage = 1;
            localStorage.setItem("currentPage", currentPage); // 현재 페이지 저장
            applySearchFilter(); // 검색 및 필터링 적용
        }
    };

    // 검색 및 필터 적용 함수
    const applySearchFilter = () => {
        let questions = getQuestions();
        const searchTerm = searchInput.value.toLowerCase();
        const filterValue = filterSelect.value;

        if (searchTerm) {
            questions = questions.filter(q => 
                q.title.toLowerCase().includes(searchTerm) ||
                q.author.toLowerCase().includes(searchTerm) ||
                q.content.toLowerCase().includes(searchTerm)
            );
        }

        if (filterValue === "latest") {
            questions.sort((a, b) => new Date(b.date) - new Date(a.date));
        } else if (filterValue === "popular") {
            questions.sort((a, b) => b.views - a.views);
        } else if (filterValue === "oldest") {
            questions.sort((a, b) => new Date(a.date) - new Date(b.date));
        }

        renderPosts(getPaginatedQuestions(questions));
        renderPagination(questions.length);
    };

    // 검색 및 필터 이벤트 리스너 추가
    searchInput.addEventListener("input", applySearchFilter);
    filterSelect.addEventListener("change", applySearchFilter);

    // 페이지 네비게이션 클릭 이벤트 리스너
    paginationContainer.addEventListener("click", function(event) {
        if (event.target.classList.contains("page-number")) {
            currentPage = parseInt(event.target.getAttribute("data-page"));
            localStorage.setItem("currentPage", currentPage); // 현재 페이지 저장
            applySearchFilter();
        } else if (event.target.classList.contains("prev")) {
            if (currentPage > 1) {
                currentPage--;
                localStorage.setItem("currentPage", currentPage); // 현재 페이지 저장
                applySearchFilter();
            }
        } else if (event.target.classList.contains("next")) {
            const totalItems = getQuestions().length;
            const totalPages = Math.ceil(totalItems / itemsPerPage);
            if (currentPage < totalPages) {
                currentPage++;
                localStorage.setItem("currentPage", currentPage); // 현재 페이지 저장
                applySearchFilter();
            }
        }
    });

    // 질문 삭제 버튼 클릭 이벤트 리스너
    postsContainer.addEventListener("click", function(event) {
        if (event.target.classList.contains("delete-button")) {
            const id = parseInt(event.target.getAttribute("data-id"));
            deleteQuestion(id);
        }
    });

    // 게시글 링크 클릭 시 조회수 증가
    postsContainer.addEventListener("click", function(event) {
        if (event.target.classList.contains("view-link")) {
            const id = parseInt(new URL(event.target.href).searchParams.get("id"));
            incrementViews(id);
        }
    });

    // 초기 질문 데이터 렌더링
    applySearchFilter();
});
