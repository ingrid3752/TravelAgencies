<%@page import="com.kh.project.model.vo.Member"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>KHTRAVEL</title>
<link href="${pageContext.request.contextPath}/css/reset.css"
	rel="stylesheet" />
<link href="${pageContext.request.contextPath}/css/Sunflower.css"
	rel="stylesheet" />
<link href="${pageContext.request.contextPath}/css/index.css"
	rel="stylesheet" />
<link href="${pageContext.request.contextPath}/css/Paris.css"
	rel="stylesheet" />
<script src="https://code.jquery.com/jquery-3.7.1.min.js"></script>
<!-- 폰트어썸폴더 -->
<script src="https://kit.fontawesome.com/071562b1d0.js"
	crossorigin="anonymous"></script>
<!-- 구글 폰트-->
<link rel="preconnect" href="https://fonts.googleapis.com" />
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
</head>
<body style="overflow: hidden" id="body">
	<header id="header">
		<div class="paris-font">
			<a href="#" id="KHTRAVEL">KHTRAVEL</a>
		</div>

		

		<div id="login">
		<!-- 멤버 정보 필요하면 이거 쓰시라고!!!!  -->
			<sec:authorize access="isAuthenticated()" var="principal">
			<sec:authentication property="principal" var="member" />
				<!-- ${member.id} -->
				<!-- 로그인 후 버튼 -->
				<a href="<%=request.getContextPath()%>/mypage">CompanyPage</a>&nbsp;&nbsp;
				<a href="<%=request.getContextPath()%>/logout">LogOut</a>				
			</sec:authorize>
			
			<sec:authorize access="!isAuthenticated()" var="principal">
				<!-- 로그인 전 버튼 -->
				<a href="<%=request.getContextPath()%>/login">Login</a>&nbsp;&nbsp; 
				<a href="<%=request.getContextPath()%>/signUp">SignUp</a>
			</sec:authorize>
		</div>
	</header>


	<section id="mainpage">
		<div id="Binggrae">
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
	
		</div>
	</section>

	<script src="${pageContext.request.contextPath}/js/index.js"></script>
</body>
</html>