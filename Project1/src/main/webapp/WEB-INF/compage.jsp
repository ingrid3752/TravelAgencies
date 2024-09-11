<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=, initial-scale=1.0" />
    <title>Document</title>
<link href="${pageContext.request.contextPath}/css/mypageCompany.css" rel="stylesheet" />
<link href="${pageContext.request.contextPath}/css/reset.css" rel="stylesheet" />
    <!-- 폰트어썸폴더 -->
<script src="https://kit.fontawesome.com/071562b1d0.js" crossorigin="anonymous"></script> 
    <!-- 구글 폰트-->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Gowun+Batang&display=swap" rel="stylesheet">
  </head>
  <!-- //style="overflow: hidden" -->
  <body  style="overflow-x: hidden; overflow-y:auto;" id="body">
<%@ include file="./header.jsp" %>  
   
    <section style="width: 100%; margin-top: 80px;">
  <h1>티켓리스트</h1>
<!---------------------------------------------------------------------->
<table>
<tr>
  <td style="width: 100px;">이름</td>
  <td style="width: 100px;">경기종목</td>
  <td style="width: 200px;">경기장위치</td>
  <td style="width: 150px;">날짜</td>
  <td style="width: 100px;">좌석번호</td>
  <td style="width: 200px;">Tel</td>
  <td style="width: 300px;">Email</td>
</tr>
</table>
<br><br>

  <h1>호텔리스트</h1>
<!---------------------------------------------------------------------->
<table>
<tr>
  <td style="width: 100px;">이름</td>
  <td style="width: 250px;">호텔이름</td>
  <td style="width: 300px;">호텔위치</td>
  <td style="width: 150px;">입실날짜</td>
  <td style="width: 150px;">퇴실날짜</td>
  <td style="width: 200px;">Tel</td>
  <td style="width: 300px;">Email</td>
</tr>
</table>
</section>
    <script src="${pageContext.request.contextPath}/js/mypage.js"></script>
  </body>
</html>