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
		<form action="/accomInsertReservation" method="post">
			<input type="hidden" name="memCode" value="${memCode}"> 
			<input type="hidden" name="accomCode" value="${accomCode}"> 
			<label for="accomName">숙소 이름 : </label> 
			<input type="text" id="accomName" name="accomName" required> 
			<label for="startDate">시작 날짜 : </label> 
			<input type="date" id="startDate" name="startDate" required>
			<label for="endDate">종료 날짜: </label> 
			<input type="date" id="endDate" name="endDate" required> 
			<label for="seats">예약 인원: </label>
			<input type="number" id="seats" name="seats" required>
			<button type="submit">예약 추가</button>
		</form>


	</div>
	<script src="${pageContext.request.contextPath}/js/accomInsertReservation.js"></script>
</body>
</html>