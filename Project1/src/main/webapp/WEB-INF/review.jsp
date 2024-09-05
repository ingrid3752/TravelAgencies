<%@ page contentType="text/html;charset=UTF-8" language="java" %> <%@ page
import="java.util.List" %> <%@ page import="com.kh.project.model.vo.Review" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html lang="ko">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>리뷰 목록</title>
    <link href="/css/review.css" rel="stylesheet" />
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
      <div class="average-rating">
        <p>평균 평점 : ${averageRating}</p>
      </div>
      <div class="review-list">
        <c:forEach var="review" items="${reviews}">
          <div class="review-item">
            <h3>리뷰 제목 : ${review.title}</h3>
            <p>리뷰 내용 : ${review.reviewText}</p>
            <p>평점 : ${review.rating}</p>
			<p>작성일 :<fmt:formatDate value="${review.reviewDate}" pattern="yyyy년 M월 d일 EEEE HH시 mm분 ss초" /></p>
				</div>
        </c:forEach>
      </div>
    </div>
  </body>
</html>
