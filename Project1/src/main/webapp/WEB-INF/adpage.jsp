<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.kh.project.model.vo.AccomReservation" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=, initial-scale=1.0" />
    <title>Document</title>
<link href="${pageContext.request.contextPath}/css/adpage.css" rel="stylesheet" />
<link href="${pageContext.request.contextPath}/css/reset.css" rel="stylesheet" />
    <!-- 폰트어썸폴더 -->
<script src="https://kit.fontawesome.com/071562b1d0.js" crossorigin="anonymous"></script>
    <!-- 구글 폰트-->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Gowun+Batang&display=swap" rel="stylesheet">
<title>관리자</title>
</head>
<style>
	h1 {
	font-size: 2rem;
	}
	table, tr, th, td {
	 border: 1px solid black;
	  align-items:center;
	  text-align: center;
	 background: white;
	}
</style>
<body>
<%@ include file="./header.jsp" %>
    <section style=" margin-top: 150px;">
<h1>회원 목록</h1>
<br>
	<table >
		<tr >
			<th>아이디</th>
			<th>비밀번호</th>
			<th>이름</th>
			<th>전화번호</th>
			<th>이메일</th>
			<th>ROLE</th>
		</tr>
		<c:forEach items="${memberList}" var="member">
			<tr>
				<td>${member.id}</td>
				<td>${member.password}</td>
				<td>${member.name}</td>
				<td>${member.phone}</td>
				<td>${member.email}</td>
				<td>${member.role}</td>
			</tr>
		</c:forEach>
	</table>
<br><br>
  <h1>호텔리스트</h1>
  <br>
<!---------------------------------------------------------------------->
<div class="reservation-list">
    <div>
    <table>
       <tr>
       		<th>이름</th>
			<th>전화번호</th>
			<th>이메일</th>
	    	<th>숙소 이름</th>
	        <th>시작 날짜 </th>
	        <th>마지막 날짜 </th>
	        <th>예약 인원 </th>
       </tr>
       <c:forEach items="${memberList}" var="member">
       <c:forEach var="AccomReservation" items="${accomReservationList}" >
       <tr>
       <td>${member.name}</td>
		<td>${member.phone}</td>
				<td>${member.email}</td>
       <td>${AccomReservation.accomName}</td>
       <td><fmt:formatDate value="${AccomReservation.startDate}" pattern="yyyy년 M월 d일" /></td>
       <td><fmt:formatDate value="${AccomReservation.endDate}" pattern="yyyy년 M월 d일" /></td>
       <td>${AccomReservation.seats}</td>
       </tr>
       </c:forEach></c:forEach>
    </table>
    </div>
        </div>
<br><br>
<h1>경기리스트</h1>
    <div>
    <table>
    <tr>
    <th>이름</th>
  <th>경기종목</th>
  <th>날짜</th>
  <th>Tel</th>
  <th>Email</th>
       </tr>
       <c:forEach var="StadiumReservation" items="${stadiumReservationList}" begin="0" end="0">
       <c:forEach items="${memberList}" var="member" begin="0" end="2">
       <tr></tr>
				<td>${member.name}</td>
				<td>${StadiumReservation.stadiumEvent}</td>
				<td><fmt:formatDate value="${StadiumReservation.stadiumDate}" pattern="yyyy년 M월 d일" /></td>
				<td>${member.phone}</td>
				<td>${member.email}</td>
       </c:forEach></c:forEach>
    </table>
    <br><br>
    </div>
    <!--  -->
	
	</div>
<!---------------------------------------------------------------------->
</section>
    <script src="${pageContext.request.contextPath}/js/mypage.js"></script>
</body>
</html>