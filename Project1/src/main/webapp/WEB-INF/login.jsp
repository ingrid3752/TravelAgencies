<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인</title>
<link href="${pageContext.request.contextPath}/css/reset.css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/css/login.css" rel="stylesheet">
</head>
<%@ include file="./header.jsp" %>
  <body style="overflow: hidden" id="body">
    <div id="mainlogin">
      <img src="../IMG/로고.png" alt="" id="mainlogo"><br><br>
      <p>&nbsp;&nbsp;&nbsp;&nbsp;<span style="color: rgb(255, 202, 104)">"로그인"</span> 하고 나만의</p>
      <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span style="color: rgb(81, 151, 255);">"여행"</span>을 시작하세요</p>
          <div class="idid">
              <label for ="id">아이디 </label>
              <input type="text" id="id" name="id" required>
          </div>
          <div class="idid">
              <label for="password">비밀번호</label>
              <input type="password" id="password" name="password" required>
          </div>
          <button type="submit">Login</button>
          <br><br><br><br>
          <a href="https://www.googleadservices.com/pagead/aclk?sa=L&ai=DChcSEwjPpdjEm5SIAxUS0hYFHUnxA9gYABAAGgJ0bA&co=1&ase=2&gclid=EAIaIQobChMIz6XYxJuUiAMVEtIWBR1J8QPYEAAYASAAEgJnxPD_BwE&ohost=www.google.com&cid=CAASJeRoPVjrsyBK-strR05nx49KtTeZXfZKC5w6LbhOSCiQ3-iOan0&sig=AOD64_0tQUlxU5tzkgDeXTOWIV-y5rQi8g&q&nis=4&adurl&ved=2ahUKEwjVpNPEm5SIAxWZqFYBHVKHA_IQ0Qx6BAgFEAE"><img src="../IMG/로고3.png" alt="" id="mainlogo2" style="width: 400px; height: 200x;"></a>
  </div>
  </body>
</html>