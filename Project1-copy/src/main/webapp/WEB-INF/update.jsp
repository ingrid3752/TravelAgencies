<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=, initial-scale=1.0" />
    <title>Document</title>
<link href="${pageContext.request.contextPath}/css/update.css" rel="stylesheet" />
<link href="${pageContext.request.contextPath}/css/reset.css" rel="stylesheet" />
    <!-- 폰트어썸폴더 -->
<script src="https://kit.fontawesome.com/071562b1d0.js" crossorigin="anonymous"></script> 
    <!-- 구글 폰트-->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Gowun+Batang&display=swap" rel="stylesheet">
  </head>
 <%@ include file="./header.jsp" %>
  <!-- //style="overflow: hidden" -->
  <body style="overflow: hidden" id="body">
    <div id="login-form">
      <h2>회원 정보 수정</h2>
      <form method="post">
          <div class="form-group">
              <label for="id">ID</label>
              <input type="text" id="id" name="id" required>
          </div>
          <div class="form-group">
              <label for="password">Password</label>
              <input type="password" id="password" name="password" required>
          </div>
          <div class="form-group">
            <label for="password">E-mail</label>
            <input type="password" id="password" name="password" required>
        </div>
        <div class="form-group">
          <label for="password">Phone</label>
          <input type="password" id="password" name="password" required>
        </div>

          <button type="submit">정보수정</button>

        </form>
  </div>
  <script src="${pageContext.request.contextPath}/js/signUp.js"></script>
  </body>
</html>
