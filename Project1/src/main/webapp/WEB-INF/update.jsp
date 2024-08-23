<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Update</title>
<link href="${pageContext.request.contextPath}/css/reset.css" rel="stylesheet"/>
    <link href="${pageContext.request.contextPath}/css/update.css" rel="stylesheet"/>
    <!-- 폰트어썸폴더 -->
    <script
      src="https://kit.fontawesome.com/071562b1d0.js"
      crossorigin="anonymous"
    ></script>
    <!-- 구글 폰트-->
    <link rel="preconnect" href="https://fonts.googleapis.com" />
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
</head>
<body>
  <div id="update-form">
        <form action="<%= request.getContextPath() %>/update" method="post">
        <div>
        	<h1 class="update-title">회원정보 변경</h1>
        </div>
            <div class="form-group">
                <label for="id">아이디 : </label>
                <input type="text" id="id" name="id" required>
            </div>
            <div class="form-group">
                <label for="password">비밀번호 : </label>
                <input type="text" id="password" name="password" required>
            </div>
            <button type="submit">회원정보 변경</button>
        </form>
    </div>
</body>
</html>