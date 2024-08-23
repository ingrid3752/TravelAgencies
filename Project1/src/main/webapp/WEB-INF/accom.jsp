<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Accommodation</title>
    <link href="${pageContext.request.contextPath}/css/reset.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/css/accom.css" rel="stylesheet">
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
  <body>


	<div class="hotel">
		<a href="<%=request.getContextPath()%>/lehotel"><div class="hotel-info-box">
				<p>
					<input type="checkbox" id="checkbox-a" value="asdfsd" /> <label
						for="label-a"> 르 르믹스 호텔</label>
				</p>
			</div></a> <a href="<%=request.getContextPath()%>/shuhotel"><div class="hotel-info-box">
				<p>
					<input type="checkbox" id="checkbox-b" /> <label for="label-b">
						슈에트호텔 </label>
				</p>
			</div></a> <a href="<%=request.getContextPath()%>/dehotel"><div
				class="hotel-info-box">
				<p>
					<input type="checkbox" id="checkbox-c" /> <label for="label-c">포르테
						데 베르사유 호텔</label>
				</p>
			</div></a> <input type="submit" class="submit" value="호텔예약하기" />
	</div>


	<!-- 다음 링크 추가 -->
      
    
    
  </body>
</html>
