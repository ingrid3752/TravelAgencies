<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login</title>
<link href="${pageContext.request.contextPath}/css/reset.css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/css/login.css" rel="stylesheet">
<script src="https://code.jquery.com/jquery-3.7.1.min.js"></script>
</head>
<body>
    <div id="login-form">
        <h2>로그인</h2>
        <form action="/login" method="post">
            <div class="form-group">
                <label for="id">아이디 : </label>
                <input type="text" id="id" name="username" required>
            </div>
            <div class="form-group">
                <label for="password">비밀번호 : </label>
                <input type="password" id="password" name="password" required>
            </div>
            <button type="submit" id="login-btn">로그인</button> <!-- ID 추가 -->
        </form>
    </div>
</body>
</html>