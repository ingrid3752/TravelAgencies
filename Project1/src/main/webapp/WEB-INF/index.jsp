<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Paris</title>
<link href="${pageContext.request.contextPath}/css/reset.css" rel="stylesheet"></link>
<link href="${pageContext.request.contextPath}/css/index.css"rel="stylesheet"></link>
</head>
<body>
	<div class="container">
        <h1>Welcome to Paris</h1>
        <div class="button-container">
            <form action="/login" method="post">
                <button type="submit">로그인</button>
            </form>
            <form action="/register" method="post">
                <button type="submit">회원가입</button>
            </form>
        </div>
    </div>
</body>
</html>