<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.kh.project.model.vo.AccomReservation" %>    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>    
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=, initial-scale=1.0" />
    <title>업체</title>
<link href="${pageContext.request.contextPath}/css/compage.css" rel="stylesheet" />
<link href="${pageContext.request.contextPath}/css/reset.css" rel="stylesheet" />
    <!-- 폰트어썸폴더 -->
<script src="https://kit.fontawesome.com/071562b1d0.js" crossorigin="anonymous"></script> 
    <!-- 구글 폰트-->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Gowun+Batang&display=swap" rel="stylesheet">
  </head>
  <!-- //style="overflow: hidden" -->
  <style>
	h1 {
	font-size: 2rem;
	}
	table2, tr, th, td{
	 border: 1px solid black;
	  align-items:center;
	  text-align: center;
	  
	 background: white;
	}
</style>
  <body  style="overflow-x: hidden; overflow-y:auto;" id="body">
<%@ include file="./header.jsp" %>  
   
    <section style="width: 100%; margin-top: 80px;">

  <h1>호텔리스트</h1>
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
								<td><fmt:formatDate value="${AccomReservation.startDate}"
										pattern="yyyy년 M월 d일" /></td>
								<td><fmt:formatDate value="${AccomReservation.endDate}"
										pattern="yyyy년 M월 d일" /></td>
								<td>${AccomReservation.seats}</td>
							</tr>
       </c:forEach></c:forEach>
    </table>
        
        
    </div>
	
</section>
    <script src="${pageContext.request.contextPath}/js/mypage.js"></script>
  </body>
</html>