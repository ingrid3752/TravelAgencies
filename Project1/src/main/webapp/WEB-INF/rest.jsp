<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Restaurant</title>
    <link href="${pageContext.request.contextPath}/css/rest.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/css/reset.css" rel="stylesheet">
    <script src="https://code.jquery.com/jquery-3.7.1.min.js"></script>
    <!-- 폰트어썸폴더 -->
    <script
      src="https://kit.fontawesome.com/071562b1d0.js"
      crossorigin="anonymous"
    ></script>
    <!-- 구글 폰트-->
    <link rel="preconnect" href="https://fonts.googleapis.com" />
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
</head>
<body>
    <header id="header">
    <div id="Binggrae_font">
      <a href="<%=request.getContextPath()%>/" id="KHTRAVEL">KHTRAVEL</a>
    </div>
    <ul class="menu">
			<li><a href="#">☰</a>
				<ul class="submenu">
					<li><a href="<%=request.getContextPath()%>/reservation">예약</a></li>
					<li><a href="<%=request.getContextPath()%>/stadium">오시는 길</a></li>
					<li><a href="<%=request.getContextPath()%>/review">리뷰</a></li>
					<li><a href="<%=request.getContextPath()%>/goods">굿즈</a></li>
				</ul></li>
		</ul>
  </header>  
<div>
		<div class="food">
			<a href="<%=request.getContextPath()%>/korea"><div class="food-info-box">
					<p>한식</p>
				</div></a> <a href="<%=request.getContextPath()%>/china">
				<div class="food-info-box">
					<p>중식</p>
				</div>
			</a> <a href="<%=request.getContextPath()%>/japan">
				<div class="food-info-box">
					<p>일식</p>
				</div>
			</a> <a href="<%=request.getContextPath()%>/france">
				<div class="food-info-box">
					<p>양식</p>
				</div>
			</a>
		</div></body>
</html>
