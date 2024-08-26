<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.List" %>
<%@ page import="com.kh.project.model.vo.ReviewResponse" %>
<%@ page import="com.kh.project.model.vo.Review" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>리뷰 목록</title>
    <link href="${pageContext.request.contextPath}/css/review.css" rel="stylesheet" />
</head>
<body>
    <div class="container">
        <div class="header">
            <h1>리뷰 게시판</h1>
            <div class="review-form-button">
                <a href="<%=request.getContextPath()%>/reviewForm">
                    <button>리뷰 작성하기</button>
                </a>
            </div>
        </div>

        <div class="review-list">
            <c:forEach var="review" items="${reviewResponse.reviews}">
                <div class="review-item">
                    <h3>${review.title}</h3>
                    <p>작성자 코드: ${review.memCode}</p>
                    <p>${review.reviewText}</p>
                    <p>평점: ${review.rating}</p>
                    <p>작성일: ${review.reviewDate}</p>
                </div>
            </c:forEach>
        </div>

        <div class="average-rating">
            <p>평균 평점: ${reviewResponse.averageRating}</p>
        </div>
    </div>
</body>
</html>
