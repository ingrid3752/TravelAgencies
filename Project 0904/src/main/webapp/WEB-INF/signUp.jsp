<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입</title>
<link href="${pageContext.request.contextPath}/css/reset.css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/css/signUp.css" rel="stylesheet">
</head>
<body>
    <div id="signup-form">
        <h2>회원가입</h2>
        <form action="<%= request.getContextPath() %>/signUp" method="post">
            <div class="form-group">
                <label for="id">아이디 : </label>
                <input type="text" id="id" name="id" required>
            </div>
            <div class="form-group">
                <label for="password">비밀번호 : </label>
                <input type="password" id="password" name="password" required>
            </div>
            <div class="form-group">
                <label for="name">이름 : </label>
                <input type="text" id="name" name="name" required>
            </div>
            <div class="form-group">
                <label for="phone">전화번호 : </label>
                <input type="tel" id="phone" name="phone" required>
            </div>
            <div class="form-group">
            <label for="email">이메일 : </label>
            <input type="email" id="email" name="email" required>
            </div>
            <div class="form-group">
    			<label for="role">사용자 유형 : </label>
    			<select id="role" name="role" required>
        			<option value="member">일반회원</option>
        			<option value="company">회사회원</option>
    			</select>
			</div>
            <button type="submit">회원가입</button>
        </form>
    </div>
</body>
</html>