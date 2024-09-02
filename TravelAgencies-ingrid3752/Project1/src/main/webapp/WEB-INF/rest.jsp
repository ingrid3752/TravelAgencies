<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>식당</title>
    <link href="${pageContext.request.contextPath}/css/reset.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/css/rest.css" rel="stylesheet">
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
<body>

	<div class="food">
		<div class="box1">
			<div class="hover-box">
				<div class="food1">
					<a href="/korea"><div class="food-info-box1">
							<p>한식</p>
						</div></a>
				</div>
			</div>
		</div>
		<div class="box2">
			<div class="hover-box">
				<div class="food2">
					<a href="/china"><div class="food-info-box2">
							<p>중식</p>
						</div></a>
				</div>
			</div>
		</div>
		<div class="box3">
			<div class="hover-box">
				<div class="food3">
					<a href="/japan">
						<div class="food-info-box3">
							<p>일식</p>
						</div>
					</a>
				</div>
			</div>
		</div>
		<div class="box4">
			<div class="hover-box">
				<div class="food4">
					<a href="/france">
						<div class="food-info-box4">
							<p>양식</p>
						</div>
					</a>
				</div>
			</div>
		</div>
		<div class="box5">
			<div class="hover-box">
				<div class="food5">
					<a href="/goods"><div class="food-info-box5">
							<p>굿즈</p>
						</div> </a>
				</div>
			</div>
		</div>

	</div>
	<div id="box">
    <h1 id="food" data-shadow='Food!'>Food!</h1>
  </div>
    <script src="rest.js"></script></body>
</html>
