<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.List" %>
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
<header id="header">
      <div id="Binggrae_font">
        <a href="/" id="KHTRAVEL">KHTRAVEL</a>
      </div>
      <ul class="menu">
          <li>
            <a href="#">☰</a>
            <ul class="submenu">
              <li><a href="/reservation">예약</a></li>
					<li><a href="/stadium">경기장</a></li>
					<li><a href="/review">리뷰</a></li>
					<li><a href="/goods">굿즈</a></li>
          </ul>
      </li>
     </ul>
    </header>
    <div class="container">
        <div class="header">
            <h1>리뷰 게시판</h1>
            <div class="review-form-button">
                <a href="/reviewForm">
                    <button>리뷰 작성하기</button>
                </a>
            </div>
        </div>

        <div class="review-list">
			<c:forEach var="review" items="${reviews}">
				<div class="review-item">
					<!--
					리뷰 제목까지 입력하게되면 받고싶다? 
					sql에 title추가해서 테이블 생성
					review.xml sql문에 title추가
					mapper,service,controller review추가부분확인 
					-->
					<h3>리뷰 제목 : ${review.title}</h3>
					<p>리뷰 내용 : ${review.reviewText}</p>
					<p>평점 : ${review.rating}</p>
					<p>작성일 : ${review.reviewDate}</p>
				</div>
			</c:forEach>
        </div>
        <div class="average-rating">
            <p>평균 평점 : ${averageRating}</p>
        </div>
    </div>
</body>
</html>