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
        <a href="/lehotel"><div class="hotel-info-box">
        <p>
          <input type="checkbox" id="checkbox-a" name="accomName" value="르 르믹스 호텔" />
          <label for="">
            르 르믹스 호텔 <p class="price"><br>가격 : 80000￦</p>
             </label> 
        </p>
      </div></a>
      <a href="/shuhotel"><div class="hotel-info-box">
        <p><input type="checkbox" id="checkbox-b" />
           <label for="label-b">
            슈에트호텔 <p class="price"><br>가격 : 120000￦</p>
          </label>
        </p>  
      </div></a>
      <a href="/dehotel"
              ><div class="hotel-info-box">
        <p>
          <input type="checkbox" id="checkbox-c" />
          <label for=""
            >포르테 데 베르사유 호텔<p class="price"><br>가격 : 150000￦</p>
          </label>
        </p>        
      </div></a>
      <div class="date">
        <label for="date">시작 날짜:&nbsp;  </label>
        <input
          type="date"
          id="date"
          name="date"
          min="2024-07-26"
          max="2024-08-11"
          required
        />
      </div>
      <div class="date">
        <label for="date">종료 날짜:&nbsp;  </label>
        <input
          type="date"
          id="date"
          name="date"
          min="2024-07-26"
          max="2024-08-11"
          required
        />
      </div>
      <input type="text" value="" placeholder="인원수를 입력하세요" class="place">
      <a href="/rest"><input type="submit"  class="submit" value="호텔예약하기" /></a>
    </div>
</body>
</html>