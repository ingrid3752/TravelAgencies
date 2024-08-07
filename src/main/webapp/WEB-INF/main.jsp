<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>Paris</title>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=Gowun+Dodum&family=Nanum+Gothic&family=Sunflower:wght@300&display=swap"
	rel="stylesheet">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=Gowun+Dodum&family=Nanum+Gothic&family=Sunflower:wght@300&display=swap"
	rel="stylesheet">

<meta charset="UTF-8" />
<meta http-equiv="X-UA-Compatible" content="IE=Edge" />
<meta name="description" content="" />
<meta name="keywords" content="" />
<meta name="team" content="" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1" />

<link rel="stylesheet" href="css/bootstrap.min.css" />
<link rel="stylesheet" href="css/vegas.min.css" />

<!-- MAIN CSS -->
<link rel="stylesheet" href="css/templatemo-style.css" />
</head>
<body style="overflow: hidden;">
	<header id="header">
		<form id="login">
			<a href="./main.jsp" id="kh">KHTRAVEL</a>
			<div id="div">
				<a href="./login.jsp" id="loginbutton">로그인&nbsp;&nbsp;</a> <a
					href="./memberjoin.jsp" id="mainlogin">회원가입</a>
			</div>
		</form>
	</header>
	<!-- PRE LOADER -->
	<section class="preloader">
		<div class="spinner">
			<span class="spinner-rotate"></span>
		</div>
	</section>

	<!-- GRID LINE -->
	<section class="grid">
		<div class="container">
			<div class="row">
				<div class="col-md-2 col-sm-2">
					<div class="grid-line"></div>
				</div>
				<div class="col-md-2 col-sm-2">
					<div class="grid-line"></div>
				</div>
				<div class="col-md-2 col-sm-2">
					<div class="grid-line"></div>
				</div>
				<div class="col-md-2 col-sm-2">
					<div class="grid-line"></div>
				</div>
				<div class="col-md-2 col-sm-2">
					<div class="grid-line"></div>
				</div>
			</div>
		</div>
	</section>

	<div class="menu-bg"></div>
	<div class="menu-burger">☰</div>

	<div class="menu-items">
		<div class="container">
			<div class="row">
				<div class="col-md-offset-2 col-md-4 col-sm-6">
					<h1>Paris Olympic</h1>
					<ul class="menu">
						<li><a href="#">로그인</a></li>
						<li><a href="#">마이페이지</a></li>
						<li><a href="#">관광지</a></li>
						<li><a href="#">공지</a></li>
					</ul>
				</div>

				<div class="col-md-4 col-sm-6">
					<address>
						<h1>KH정보교육원</h1>
						<p>
							서울특별시 강남구 테헤란로 14길 6 <br /> Seoul, Korea
						</p>
						<div class="google-map">
							<iframe
								src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3165.3783804157806!2d127.03033944100699!3d37.49899297217253!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x357c9ec255555555%3A0x3565475c3365c5bb!2zS0jsoJXrs7TqtZDsnKHsm5A!5e0!3m2!1sko!2skr!4v1722411412422!5m2!1sko!2skr"
								allowfullscreen> </iframe>
						</div>
					</address>
				</div>

				<div class="col-md-12 col-sm-12">
					<ul class="social-icon">
						<li class="line"></li>
						<li><a href="https://www.facebook.com/khacademy1998/"
							class="fa fa-facebook"></a></li>
						<li><a href="https://twitter.com/khiei" class="fa fa-twitter"></a></li>
						<li><a href="#" class="fa fa-google"></a></li>
						<li><a href="https://www.instagram.com/kh_iei/"
							class="fa fa-instagram"></a></li>
					</ul>
				</div>
			</div>
		</div>
	</div>

	<!-- HOME -->
	<section id="home">
		<div class="overlay"></div>
		<div class="container">
			<div class="row">
				<div class="col-md-12 col-sm-12">
					<div class="home-info">
						<h1 id="parisol">
							Paris Olympic <br />Make a reservation quickly and easily
						</h1>
						<!-- You can change the date time in init.js file -->
						<div class="subscribe-form">
							<form action="" method="post" id="sibar">
								<input type="text" name="pay" class="form-control"
									placeholder="금액을 입력하세요." required="" /> <input
									type="submit" value="검색" id="bu">
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>

	<!-- SCRIPTS -->
	<script src="js/jquery.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/vegas.min.js"></script>
	<script src="js/countdown.js"></script>
	<script src="js/init.js"></script>
	<script src="js/custom.js"></script>
</body>
</html>
