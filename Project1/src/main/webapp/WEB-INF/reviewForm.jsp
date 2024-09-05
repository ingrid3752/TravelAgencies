<%@page import="com.kh.project.model.vo.Member"%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>리뷰 작성</title>
    <link href="${pageContext.request.contextPath}/css/reviewForm.css" rel="stylesheet" />
    <link href="${pageContext.request.contextPath}/css/reset.css" rel="stylesheet" />
</head>
<body>
    <div class="container">
        <h1>리뷰 작성하기</h1>

        <div class="review-form">
            <form action="/review/submit" method="post">
               
                <!-- 사용자 코드 숨겨진 필드로 설정 -->
                <input type="hidden" id="memCode" name="memCode" value="${memCode}">
				<!-- 제목 입력 -->
				<label for="title">제목 : <input type="text" id="title" name="title"></label>
				<label for="entityType">리뷰할 컨텐츠 : </label> 
				<select id="entityType" name="entityType" required>
					<option value="1">숙소</option>
					<option value="2">식당</option>
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

                <button type="submit" onclick="updateEntityId()">리뷰 제출</button>
            </form>
        </div>
    </div>
    <script src="${pageContext.request.contextPath}/js/reviewForm.js"></script>
</body>
</html>
