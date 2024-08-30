<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/reset.css"/>
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/accomReservation.css"/>
</head>
<body>
	<div>
		<a href="/hotelinfo">호텔 목록</a>
		<a href="/accomReservation">호텔 예약 현황</a>
		<a href="/accomInsertReservation">호텔 예약 추가</a>
	</div>
	<h1>호텔 예약 추가</h1>
	<form action="/accomInsertReservation" method="post">
		<input type="text" placeholder="호텔 이름 입력" name="accomName"/>
		<input type="text" placeholder="시작 날짜 입력" name="startDate"/>
		<input type="text" placeholder="마지막 날짜 입력" name="endDate"/>
		<input type="text" placeholder="인원 수 입력" name="seats">
		<input type="submit" value="호텔 예약 추가"/>
	</form>
</body>
</html>