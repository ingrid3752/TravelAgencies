<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>숙소</title>
    <link href="${pageContext.request.contextPath}/css/reset.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/css/accom.css" rel="stylesheet">
</head>
<body>
    <header id="header">
		<div id="Binggrae_font">
			<a href="/" id="KHTRAVEL">KHTRAVEL</a>
		</div>
		<ul class="menu">
			<li><a href="#">☰</a>
				<ul class="submenu">
					<li><a href="/reservation">예약</a></li>
					<li><a href="/stadium">오시는 길</a></li>
					<li><a href="/review">리뷰</a></li>
					<li><a href="/goods">굿즈</a></li>
				</ul></li>
		</ul>
	</header>
  <body>


	<div class="hotel">
		<a href="/lehotel">
		<div class="hotel-info-box">
				<p><input type="checkbox" id="checkbox-a" value="asdfsd" /> <label for="label-a"> 르 르믹스 호텔</label></p>
			</div>
			</a> 
			<a href="/shuhotel"><div class="hotel-info-box">
			<p><input type="checkbox" id="checkbox-b" /> <label for="label-b">슈에트호텔 </label></p>
			</div>
			</a> 
			<a href="/dehotel"><div class="hotel-info-box"><p><input type="checkbox" id="checkbox-c" /> <label for="label-c">포르테 데 베르사유 호텔</label></p>
			</div>
			</a> 
		 	<!-- <input type="submit" class="submit" value="호텔예약하기" /> -->
			<button type="submit" class="submit"><a href="/rest">호텔예약하기</a></button>
	</div>
</body>
</html>
