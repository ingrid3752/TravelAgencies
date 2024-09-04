<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>예약</title>
<link href="${pageContext.request.contextPath}/css/reservation.css" rel="stylesheet" />
<link href="${pageContext.request.contextPath}/css/Paris.css" rel="stylesheet"/>
<link href="${pageContext.request.contextPath}/css/reset.css" rel="stylesheet" />
<!-- 폰트어썸폴더 -->
<script src="https://kit.fontawesome.com/071562b1d0.js"
	crossorigin="anonymous"></script>
<!-- 구글 폰트-->
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=Gowun+Batang&display=swap"
	rel="stylesheet">
	<!-- 폰트어썸폴더 -->
    <script
      src="https://kit.fontawesome.com/071562b1d0.js"
      crossorigin="anonymous"
    ></script>
    <!-- 구글 폰트-->
    <link rel="preconnect" href="https://fonts.googleapis.com" />
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
</head>
<body style="overflow-x: hidden">
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
	<div id="olym">
      <img src="../IMG/image-removebg-preview.png" alt="" />
    </div>
    <div class="ticket-container">
      <div class="ticket">
        <div class="ticket-icon">
          <img src="../IMG/농구.png" alt="Boccia Icon" />
        </div>
        <div class="ticket-info">
          <h2>농구</h2>
          <p>
            PBOC01 M/W - Individual: group play stage Join the Fan Corners,
            sponsored by EDF, and take your place in a festive zone
          </p>
        </div>
        <div class="ticket-action">
          <p>300 ￦</p>
          <a href="/basketball" class="ticket-button">Tickets</a>
        </div>
      </div>
    </div>
    <div class="ticket-container">
      <div class="ticket">
        <div class="ticket-icon">
          <img src="../IMG/리듬체조.png" alt="Boccia Icon" />
        </div>
        <div class="ticket-info">
          <h2>리듬체조</h2>
          <p>
            PBOC01 M/W - Individual: group play stage Join the Fan Corners,
            sponsored by EDF, and take your place in a festive zone
          </p>
        </div>
        <div class="ticket-action">
          <p>300 ￦</p>
          <a href="/gymnastics" class="ticket-button">Tickets</a>
        </div>
      </div>
    </div>
    <div class="ticket-container">
      <div class="ticket">
        <div class="ticket-icon">
          <img src="../IMG/배드민턴.png" alt="Boccia Icon" />
        </div>
        <div class="ticket-info">
          <h2>배드민턴</h2>
          <p>
            PBOC01 M/W - Individual: group play stage Join the Fan Corners,
            sponsored by EDF, and take your place in a festive zone
          </p>
        </div>
        <div class="ticket-action">
          <p>300 ￦</p>
          <a href="/badminton" class="ticket-button">Tickets</a>
        </div>
      </div>
    </div>
    <div class="ticket-container">
      <div class="ticket">
        <div class="ticket-icon">
          <img src="../IMG/사격.png" alt="Boccia Icon" />
        </div>
        <div class="ticket-info">
          <h2>사격</h2>
          <p>
            PBOC01 M/W - Individual: group play stage Join the Fan Corners,
            sponsored by EDF, and take your place in a festive zone
          </p>
        </div>
        <div class="ticket-action">
          <p>300 ￦</p>
          <a href="/shooting" class="ticket-button">Tickets</a>
        </div>
      </div>
    </div>
    <div class="ticket-container">
      <div class="ticket">
        <div class="ticket-icon">
          <img src="../IMG/서핑.png" alt="Boccia Icon" />
        </div>
        <div class="ticket-info">
          <h2>서핑</h2>
          <p>
            PBOC01 M/W - Individual: group play stage Join the Fan Corners,
            sponsored by EDF, and take your place in a festive zone
          </p>
        </div>
        <div class="ticket-action">
          <p>300 ￦</p>
          <a href="/surfing" class="ticket-button">Tickets</a>
        </div>
      </div>
    </div>
    <div class="ticket-container">
      <div class="ticket">
        <div class="ticket-icon">
          <img src="../IMG/태권도.png" alt="Boccia Icon" />
        </div>
        <div class="ticket-info">
          <h2>태권도</h2>
          <p>
            PBOC01 M/W - Individual: group play stage Join the Fan Corners,
            sponsored by EDF, and take your place in a festive zone
          </p>
        </div>
        <div class="ticket-action">
          <p>300 ￦</p>
          <a href="/taekwondo" class="ticket-button">Tickets</a>
        </div>
      </div>
      <div class="ticket-container">
        <div class="ticket">
          <div class="ticket-icon">
            <img src="../IMG/테니스.png" alt="Boccia Icon" />
          </div>
          <div class="ticket-info">
            <h2>테니스</h2>
            <p>
              PBOC01 M/W - Individual: group play stage Join the Fan Corners,
              sponsored by EDF, and take your place in a festive zone
            </p>
          </div>
          <div class="ticket-action">
            <p>300 ￦</p>
            <a href="tennis" class="ticket-button">Tickets</a>
          </div>
        </div>
      </div>
      <div class="ticket-container">
        <div class="ticket">
          <div class="ticket-icon">
            <img src="../IMG/펜싱.png" alt="Boccia Icon" />
          </div>
          <div class="ticket-info">
            <h2>펜싱</h2>
            <p>
              PBOC01 M/W - Individual: group play stage Join the Fan Corners,
              sponsored by EDF, and take your place in a festive zone
            </p>
          </div>
          <div class="ticket-action">
            <p>300 ￦</p>
            <a href="/fencing" class="ticket-button">Tickets</a>
          </div>
        </div>
      </div>
      <div id="black">
        <p>안녕</p>
        <div id="top">
          <div class="bottom">
            <a href="https://www.instagram.com/kh_iei/">
              <i class="fa-brands fa-instagram"></i
            ></a>
          </div>
          <div class="bottom">
            <a href="https://www.facebook.com/khacademy1998/">
              <i class="fa-brands fa-facebook"></i
            ></a>
          </div>
          <div class="bottom">
            <a href="https://khedu.co.kr/main/main.kh">KH</a>
          </div>
          <div class="bottom">
            <a href="#"><i class="fa-brands fa-github"> </i></a>
          </div>
        </div>
      </div>
    </div>
	<!-- SCRIPTS -->
	<script src="${pageContext.request.contextPath}/js/stadium.js"></script>
</body>
</html>