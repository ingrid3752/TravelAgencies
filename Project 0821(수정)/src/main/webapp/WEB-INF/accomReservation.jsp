<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>호텔 예약 현황</title>
<link href="${pageContext.request.contextPath}/css/reset.css" rel="stylesheet" />
<link href="${pageContext.request.contextPath}/css/accomReservation.css" rel="stylesheet" />
</head>
<body>
<div>
	<a href="/hotelinfo">호텔 예약</a>
	<a href="/accomReservation">호텔 예약 현황</a>
	<a href="/accomInsertReservation">호텔 예약 추가</a>
</div>
<h1>호텔 예약 정보</h1>
<br>
<table border="1">
        <thead>
            <tr>
                <th>숙소 이름</th>
                <th>시작 날짜</th>
                <th>종료 날짜</th>
                <th>인원 수</th>
            </tr>
        </thead>
        <tbody>
            <c:forEach var="reservation" items="${accomList}">
                <tr>
                    <td>${accomReservation.accomName}</td>
                    <td>${accomReservation.startDate}</td>
                    <td>${accomReservation.endDate}</td>
                    <td>${accomReservation.seats}</td>
                </tr>
            </c:forEach>
        </tbody>
    </table>
</body>
</html>