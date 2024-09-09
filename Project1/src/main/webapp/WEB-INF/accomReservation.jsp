<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.kh.project.model.vo.AccomReservation" %>    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>호텔 예약 현황</title>
<link href="${pageContext.request.contextPath}/css/reset.css" rel="stylesheet" />
<link href="${pageContext.request.contextPath}/css/accomReservation.css" rel="stylesheet" />
</head>
<body>
<%@ include file="./header.jsp" %>
<div class="container">
	<div class="header">
	<h1>호텔 예약 현황</h1>
	<div class="reservation-form-button">
		<a href="/hotelinfo"><button>호텔 리스트</button></a>
		<a href="/accomReservation"><button>호텔 예약 현황</button></a>
		<a href="/accomInsertReservation"><button>호텔 예약 추가</button></a>
	</div>
	</div>
<div class="reservation-info">
	<p>호텔 예약 정보</p>
	<br>
</div>
	<div class="reservation-list">
    <c:forEach var="AccomReservation" items="${accomReservationList}">
    <div>
        <h3>숙소 이름: ${AccomReservation.accomName}</h3>
        <br>
        <p>시작 날짜 :<fmt:formatDate value="${AccomReservation.startDate}" pattern="yyyy년 M월 d일" /></p>
        <br>
        <p>시작 날짜 :<fmt:formatDate value="${AccomReservation.endDate}" pattern="yyyy년 M월 d일" /></p>
        <br>
        <p>예약 인원: ${AccomReservation.seats}</p>
        <br>
        
        <form action="/deleteReservation" method="post">
            <input type="hidden" name="reservationId" value="${reservation.reservationId}">
            <button type="submit">예약 취소</button>
        </form>
        <br>
    </div>
	</c:forEach>


        </div>
	</div>
</body>
</html>