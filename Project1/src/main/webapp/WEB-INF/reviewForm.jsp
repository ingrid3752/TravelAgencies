<%@page import="com.kh.project.model.vo.Member"%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="jakarta.servlet.http.HttpSession" %>
<%
    // 세션에서 현재 로그인한 사용자의 정보를 가져옵니다.
    HttpSession session2 = request.getSession();
    Member member = (Member) session2.getAttribute("loggedInMember"); // 세션에 저장된 로그인한 사용자 정보
    int memCode = (member != null) ? member.getMemCode() : 0; // 사용자 코드 추출
%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>리뷰 작성</title>
    <link href="${pageContext.request.contextPath}/css/reviewForm.css" rel="stylesheet" />
    <link href="${pageContext.request.contextPath}/css/reset.css" rel="stylesheet" />
    <script>
    function updateEntityId() {
        var entityType = document.getElementById("entityType").value;
        var entityIdField = document.getElementById("entityId");

        if (entityType === "숙소") {
            entityIdField.value = 1;
        } else if (entityType === "식당") {
            entityIdField.value = 2;
        } else {
            entityIdField.value = "";
        }
        
        console.log("Selected entityType:", entityType);
        console.log("Set entityId:", entityIdField.value);
    }

    document.addEventListener("DOMContentLoaded", function() {
        document.querySelector("form").addEventListener("submit", function(event) {
            var entityIdField = document.getElementById("entityId").value;
            if (!entityIdField) {
                event.preventDefault();
                alert("Entity ID가 설정되지 않았습니다. 리뷰할 컨텐츠를 선택하세요.");
            }
        });
    });
</script>

</head>
<body>
    <div class="container">
        <h1>리뷰 작성하기</h1>

        <div class="review-form">
            <form action="<%=request.getContextPath()%>/review/submit" method="post">
                
                <!-- 사용자 코드 (mem_code) 숨겨진 필드로 설정 -->
                <input type="hidden" id="memCode" name="memCode" value="<%= memCode %>">

				<!-- 엔티티 타입 선택 -->
				<label for="entityType">리뷰할 컨텐츠 : </label>
				<select id="entityType" name="entityType" onchange="updateEntityId()" required>
					<option value="">선택하세요</option>
					<option value="숙소">숙소</option>
					<option value="식당">식당</option>
				</select>

				<!-- 엔티티 ID는 자동으로 설정 -->
				<input type="hidden" id="entityId" name="entityId" value="">

				<!-- 평점 (rating) -->
                <label for="rating">평점 : </label>
                <br>
                <input type="number" id="rating" name="rating" min="1" max="5" required>
				<br><br>
				
                <!-- 리뷰 텍스트 (review_text) -->
                <label for="content">내용 : </label>
                <br>
                <textarea id="content" name="reviewText" rows="5" required></textarea>

                <button type="submit">리뷰 제출</button>
            </form>
        </div>
    </div>
</body>
</html>
