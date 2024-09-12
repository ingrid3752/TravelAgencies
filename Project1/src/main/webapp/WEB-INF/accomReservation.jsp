<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.kh.project.model.vo.AccomReservation" %>
<%@ page import="com.kh.project.model.vo.StadiumReservation" %>     
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=, initial-scale=1.0" />
    <title>마이페이지</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/mypage.css" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/reset.css" />
    <!-- 폰트어썸폴더 -->
<script src="https://kit.fontawesome.com/071562b1d0.js" crossorigin="anonymous"></script> 
    <!-- 구글 폰트-->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Gowun+Batang&display=swap" rel="stylesheet">
  </head>
  
  <header id="header">
    <div id="Binggrae_font">
      <a href="/" id="KHTRAVEL">KHTRAVEL</a>
    </div>
  </header>  
  <!-- //style="overflow: hidden" -->
  <style>
  .blank{
  	border: 1px solid black;
  	padding: 15px;
  	margin: 20px;
  }
 
  </style>
  <body  style="overflow-x: hidden; overflow-y:auto;" id="body">
   
  </div><br>
    <div id="imgpage2">
    <label for="input-file" class="input-file"><i class="fa-solid fa-camera-retro"></i>&nbsp;이미지 추가</label>
    <br><br><br><br>
    <input type="file" accept="image/*" onchange="imgShow(event)" id="input-file" style="display: none;">
  </div>
  <details>
    <summary style="padding-left:55px; padding-right: 55px;"><span id="more"><h1><i class="fa-regular fa-calendar-check" id="red"></i>&nbsp;예약정보</h1></span></summary>
<!---------------------------------------------------------------------->
  <div class="mainpage3"><!-- 1. mainpage3 accomReservation.css container,header,reservation-form-button,reservation-info -->
  <div class="container">
	<div class="header">
	<h1>호텔 예약 현황</h1>
	</div>
<div class="reservation-info">
<div style= "text-align: center;">
	<p>호텔 예약 정보</p>
	</div>
	<br>
</div>
	<div class="reservation-list">
    <c:forEach var="AccomReservation" items="${accomReservationList}">
    <div class="blank">
        <h3>숙소 이름: ${AccomReservation.accomName}</h3>
        <br>
        <p>시작 날짜 :<fmt:formatDate value="${AccomReservation.startDate}" pattern="yyyy년 M월 d일" /></p>
        <br>
        <p>마지막 날짜 :<fmt:formatDate value="${AccomReservation.endDate}" pattern="yyyy년 M월 d일" /></p>
        <br>
        <p>예약 인원: ${AccomReservation.seats}</p>
        <br>
        <br>
    </div>
	</c:forEach>
	

        </div>
        <br><br>
        <div class="header">
	<h1>경기 예약 현황</h1>
	</div>
<div class="reservation-info">
<div style= "text-align: center;">
	<p>경기 예약 정보</p>
	</div>
	<br>
        <div class="reservation-list">
	<c:forEach var="StadiumReservation" items="${stadiumReservationList}" begin="0" end="0">
    <div class="blank">
        <h3>경기장 이름: ${StadiumReservation.stadiumName}</h3>
        <br>
        <p>날짜 :<fmt:formatDate value="${StadiumReservation.stadiumDate}" pattern="yyyy년 M월 d일" /></p>
        <br>
        <p>종목 : ${StadiumReservation.stadiumEvent}</p>
        <br>
        <p>예약 인원: ${StadiumReservation.seats}</p>
        <br>
        <br>
    </div>
	</c:forEach>
	</div>
        
	</div>
 
</div>
</details>
<br>
  <!------------------------------------------------------------------->
  <details >
    <summary><span id="more"> <h1><i class="fa-solid fa-user-gear" id="green"></i>&nbsp;회원정보 수정</h1></span></summary>
    <br>
    <details>
    <summary><span id="more"> <h1><i class="fa-regular fa-address-card" style="color: rgb(202, 169, 96);"></i>&nbsp;기본정보 변경</h1></span></summary>
    <div id="mainpage4">
      <section id="section4" class="sect">
        <div id="line">
        <h2>기본 정보 수정</h2>
      </div>
      <br><br>
       <form action="mypage/submit" onsubmit="Validation(event)" method="post">
        <div class="idid">
              <label for ="text">변경할 이름</label>
              <input type="text" id="name" name="name" required>
              <span id="nameSpan"></span>
          </div>
          <div class="idid">
              <label for="phone"> 변경할 전화번호</label>
              <input type="text" id="phone" name="phone"  required>          
              <span id ="phoneSpan"></span>
           </div>
           <div class="idid">
            <label for ="Email">변경할 이메일</label>
            <input type="text" id="email" name="email"  required>
            <span id="emailSpan"></span>
        </div><br><br> 
          <button type="submit" class="infobu">회원 정보 수정</button>
        </form>  
  </details>
  <details>
    <summary><span id="more"> <h1><i class="fa-solid fa-lock" style="color: #62865f;"></i>&nbsp;비밀번호 변경</h1></span></summary>
    <div id="mainpage4">
      <section id="section4" class="sect">
        <div id="line">
        <h2>비밀번호 변경</h2>
      </div>
      <br><br>
      <form action="mypage" onsubmit="Validation2(event)" method="post">
       	  <div class="idid">
              <label for ="password">기존 비밀번호</label>
              <input type="password" id="pwd"  name="pwd" required>             
          </div>
          <div class="idid">
              <label for ="password">변경할 비밀번호</label>
              <input type="password" id="password"  name="password" required>
              <span id="passwordSpan"></span>
          </div>
          <div class="idid">
              <label for="password">변경할 비밀번호 확인</label>
              <input type="password" id="passwordCheck"  name="passwordCheck" required>
              <span id="passwordCheckSpan"></span>
          </div><br><br>
          <button type="submit" class="infobu">회원 정보 수정</button>          
          </form>
       </section>
  </div>
  
  </details>
  <div style="width: 100%; height: 100px;"></div>
  </details>
  
    <script src="${pageContext.request.contextPath}/js/mypage.js"></script>
    <script type="text/javascript">
        		var message = "${errorMessage}";
        		if(message) {
           			alert(message);
        		}
 	</script>
  </body>
</html>