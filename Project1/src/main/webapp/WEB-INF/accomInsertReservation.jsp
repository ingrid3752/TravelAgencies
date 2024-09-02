<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="com.kh.project.model.vo.Member"%>
<%@page import="com.kh.project.model.vo.AccomReservation"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>호텔 예약 추가</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/reset.css" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/accomReservation.css" />
</head>
<body>
	<div>
		<a href="/hotelinfo">호텔 목록</a> 
		<a href="/accomReservation">호텔 예약 현황</a> 
		<a href="/accomInsertReservation">호텔 예약 추가</a>
	</div>


	<div>
		<h1>호텔 예약 추가</h1>
	</div>
	<div>
		<form action="/accomInsertReservation" method="post" onsubmit="return validateForm();">
    		<input type="hidden" id="memCode" name="memCode" value="${memCode != null ? memCode : 0}">
    		<input type="hidden" id="accomCode" name="accomCode" value="${accomCode != null ? accomCode : 0}">
    		<input type="text" placeholder="호텔 이름 입력" name="accomName" required /> 
   		 	<input type="date" placeholder="시작 날짜 입력" name="startDate" required /> 
   		 	<input type="date" placeholder="마지막 날짜 입력" name="endDate" required /> 
   			<input type="number" placeholder="인원 수 입력" name="seats" required /> 
    		<button type="submit">예약하기</button>
		</form>

	</div>
	<script src="${pageContext.request.contextPath}/js/accomInsertReservation.js"></script>
</body>
</html>