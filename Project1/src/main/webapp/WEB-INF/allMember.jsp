<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 목록</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css"/>
</head>
<body>
	<div>
		<a href="/allMember">회원 목록 </a>
	</div>
	<h1>회원 목록</h1>
	<table>
		<tr>
			<th>아이디</th>
			<th>이름</th>
			<th>전화번호</th>
			<th>이메일</th>
			<th>ROLE</th>
		</tr>
		<c:forEach items="${list}" var="member">
			<tr>
				<td>${member.id}</td>
				<td>${member.name}</td>
				<td>${member.phone}</td>
				<td>${member.email}</td>
				<td>${member.role}</td>
			</tr>
		</c:forEach>
	</table>
</body>
</html>