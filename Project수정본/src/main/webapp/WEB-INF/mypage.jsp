<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>마이페이지</title>
<script src="https://code.jquery.com/jquery-3.7.1.min.js"></script>
<link href="${pageContext.request.contextPath}/css/reset.css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/css/mypage.css" rel="stylesheet">
</head>
<body>
    <div>
      <h3>마이페이지</h3>
       
      <div class="user-info-box">
        <p><a href="/info">예약현황</a></p>
      </div>
      <div class="user-info-box">
        <p><a href="/hotelinfo">호텔예약정보</a></p>
      </div>
      <div class="user-info-box">
        <p><a href="/ticketinfo">경기예약정보</a></p>
      </div>
      <div class="user-info-box">
        <p><a href="/update">회원정보변경</a></p>
      </div>
     </div>
   
      <!-- SCRIPTS -->
    <script src="${pageContext.request.contextPath}/js/mypage.js"></script>
</body>
</html>