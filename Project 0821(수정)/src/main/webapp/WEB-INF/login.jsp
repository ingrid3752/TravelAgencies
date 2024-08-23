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
        <form id="frm" action="<%= request.getContextPath() %>/login" method="post">
            <div class="form-group">
                <label for="id">아이디 : </label>
                <input type="text" id="id" name="id" required>
            </div>
            <div class="form-group">
                <label for="password">비밀번호 : </label>
                <input type="password" id="password" name="password" required>
            </div>
            <button type="button" id="login-btn">로그인</button> <!-- ID 추가 -->
        </form>
    </div>
    
    <script>
        $('#login-btn').click((e) => {
            e.preventDefault(); // 기존 폼 제출 방지
            
            $.ajax({
                url: '${pageContext.request.contextPath}/login',
                type: 'post',
                data: $('#frm').serialize(),
                success: function(data) {
                    console.log(data); // 서버 응답 데이터 확인
                    localStorage.setItem("token", data.token); // 데이터에서 토큰 추출 및 저장
                    location.href = "/"; // 로그인 후 리다이렉트
                },
                error: function(xhr) {
                    alert("로그인 실패!"); // 에러 처리
                }
            });
        });
    </script>
</body>
</html>