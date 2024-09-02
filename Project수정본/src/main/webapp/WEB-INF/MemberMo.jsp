<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>  
<script src="https://code.jquery.com/jquery-3.7.1.min.js"></script>	
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h2>회원정보 수정</h2>
<form action='/register'/ method="post"> 
<div>아이디<input type="text" name="memberId" id="memberId" value="${modifyId}" readonly="readonly"></div>
<div>비밀번호<input type="text" name="memberPassword" id="memberPassword" value="${modifyPassword}" readonly="readonly"></div>
</form>
<button type="button" id="submit" onclick="modifyMember()">수정완료</button>
<button type="button" onclick="loaction.href='/MemberMoList'">처음으로</button>
</body>
</html>