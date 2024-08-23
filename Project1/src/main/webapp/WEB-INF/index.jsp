<%@page import="com.kh.project.model.vo.Member"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>KHTRAVEL</title>
    <link href="${pageContext.request.contextPath}/css/reset.css" rel="stylesheet"/>
    <link href="${pageContext.request.contextPath}/css/Sunflower.css" rel="stylesheet"/>
    <link href="${pageContext.request.contextPath}/css/index.css" rel="stylesheet"/>
    <link href="${pageContext.request.contextPath}/css/Paris.css" rel="stylesheet"/>

    <!-- 폰트어썸폴더 -->
    <script
      src="https://kit.fontawesome.com/071562b1d0.js"
      crossorigin="anonymous"
    ></script>
    <!-- 구글 폰트-->
    <link rel="preconnect" href="https://fonts.googleapis.com" />
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
  </head>
<body style="overflow: hidden" id="body">
	<header id="header">
		<div class="paris-font">
			<a href="<%=request.getContextPath()%>/" id="KHTRAVEL">KHTRAVEL</a>
		</div>
		<%@ page session="true"%>
		<%
    	Member loginUser = (Member) session.getAttribute("vo");
    %>
		<div id="login">
			<% if (loginUser != null) { %>
			<!-- 로그인 후 버튼 -->
			<a href="<%=request.getContextPath()%>/mypage">MyPage</a>&nbsp;&nbsp;
			<a href="<%=request.getContextPath()%>/logout">LogOut</a>
			<% } else { %>
			<!-- 로그인 전 버튼 -->
			<a href="<%=request.getContextPath()%>/login">Login</a>&nbsp;&nbsp; <a
				href="<%=request.getContextPath()%>/signUp">SignUp</a>
			<% } %>
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

	<section id="mainpage">
		<div id="Binggrae_font">
			<h2 id="h2main">KHTRAVEL</h2>
			<br>
			<p>
				<span style="color: rgb(253, 236, 85);">2024 Paris Olympic</span>
			</p>
			<br>
			<p>
				<span style="color: rgb(253, 236, 85);">Make a reservation
					quickly and easily</span>
			</p>
			<br>
			<br>
			<br>

		</div>
	</section>
	<!-- SCRIPTS -->
	<script src="${pageContext.request.contextPath}/js/index.js"></script>
</body>
</html>
