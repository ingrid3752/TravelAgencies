<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>호텔</title>
<!-- 구글 폰트-->
<link href="${pageContext.request.contextPath}/css/hotelinfo.css" rel="stylesheet" />
<link href="${pageContext.request.contextPath}/css/reset.css" rel="stylesheet" />
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Do+Hyeon&display=swap" rel="stylesheet">
  <style>
   	.submit,
   	body {
  font-family: "Do Hyeon", sans-serif;
  font-style: normal;
}   	
   </style>
</head>
<body>
  <header id="header">
    <div id="Binggrae_font">
      <a href="/" id="KHTRAVEL">KHTRAVEL</a>
    </div>
    <div class="menu">
        <li>
          <a href="#">☰</a>
          <ul  class="submenu">
            <li><a href="/reservation">예약</a></li>
            <li><a href="/review">리뷰</a></li>
            <li><a href="/goods">굿즈</a></li>
        </ul>
    </li>
</div> <!-- sql acccom 테이블 price INSERT INTO price 80000 120000 150000 추가 ${accom.price}  -->
  </header> 
       <div class="hotel">
    <form action="/accom/insertReservation" method="post">
      <div class="hotel-info-box">
        <p>
          <input type="checkbox" id="checkbox-a" name="accomName" value="르 르믹스 호텔" />
          <label for="checkbox-a">르 르믹스 호텔</label>
        </p>
      </div>

      <div class="hotel-info-box">
        <p>
          <input type="checkbox" id="checkbox-b" name="accomName" value="슈에트호텔" />
          <label for="checkbox-b">슈에트호텔</label>
        </p>  
      </div>

      <div class="hotel-info-box">
        <p>
          <input type="checkbox" id="checkbox-c" name="accomName" value="포르테 데 베르사유 호텔" />
          <label for="checkbox-c">포르테 데 베르사유 호텔</label>
        </p>        
      </div>

      <input type="hidden" id="memCode" name="memCode" value="${accomReservation.memCode != null ? accomReservation.memCode : 1}">
      <input type="hidden" id="accomCode" name="accomCode" value="${accomReservation.accomCode != null ? accomReservation.accomCode : 1}"> 

      <div class="date">
        <label for="startDate">시작 날짜:&nbsp;  </label>
        <input type="date" id="startDate" name="startDate" min="2024-07-26" max="2024-08-11" required>
      </div>

      <div class="date">
        <label for="endDate">종료 날짜:&nbsp;  </label>
        <input type="date" id="endDate" name="endDate" min="2024-07-26" max="2024-08-11" required>
      </div>

      <label for="seats">예약 인원 : <input type="number" id="seats" name="seats" required></label>

      <button type="submit">호텔 예약하기</button>
    </form>
</body>
</html>