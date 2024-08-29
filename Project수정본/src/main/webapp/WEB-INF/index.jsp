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
				<a href="<%=request.getContextPath()%>/mypage">MyPage</a>&nbsp;&nbsp;
				<a href="<%=request.getContextPath()%>/logout">LogOut</a>
			</sec:authorize>
			<sec:authorize access="!isAuthenticated()" var="principal">
				<!-- 로그인 전 버튼 -->
				<a href="<%=request.getContextPath()%>/login">Login</a>&nbsp;&nbsp; 
				<a href="<%=request.getContextPath()%>/signUp">SignUp</a>
			</sec:authorize>
		</div>
		<ul class="menu">
			<li><a href="#">☰</a>
				<ul class="submenu">
					<li><a href="<%=request.getContextPath()%>/reservation">예약</a></li>
					<li><a href="<%=request.getContextPath()%>/stadium">경기장</a></li>
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
			<br> <br> <br>

		</div>
	</section>
	<script>
    // 로컬 스토리지에 담긴 토큰 가져오기
    const token = localStorage.getItem("token");

    $("#ComIndex").click(() => {
        $.ajax({
            url: '${pageContext.request.contextPath}/ComIndex',
            type: 'get',
            beforeSend: function(xhr) {
                xhr.setRequestHeader('Authorization', 'Bearer ' + token);
            },
            success: function(data) {
                $('body').html(data);
            },
            error: function() {
                alert('업체만 접근 가능합니다!');
                location.href = "${pageContext.request.contextPath}/login";
            }
        });
    });

    $("#logout").click(() => {
        localStorage.removeItem("token");
    });

    $("#member").click((e) => {
        e.preventDefault();
        $.ajax({
            url: '${pageContext.request.contextPath}/member',
            type: 'get',
            beforeSend: function(xhr) {
                xhr.setRequestHeader('Authorization', 'Bearer ' + token);
            },
            success: function(data) {
                console.log(data);
                $('body').html(data);
            },
            error: function() {
                alert("로그인 후 접근 가능합니다!");
                location.href = "${pageContext.request.contextPath}/login";
            }
        });
    });
</script>
	<!-- SCRIPTS -->
	<script src="${pageContext.request.contextPath}/js/index.js"></script>
</body>
</html>
