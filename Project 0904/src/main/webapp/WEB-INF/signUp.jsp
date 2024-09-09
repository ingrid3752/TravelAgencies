<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <title>회원가입</title>
    <link href="${pageContext.request.contextPath}/css/reset.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/css/signUp.css" rel="stylesheet">
    <script src="https://code.jquery.com/jquery-3.7.1.min.js"></script>
</head>
 <header id="header">
    <div id="Binggrae_font">
      <a href="/" id="KHTRAVLE">KHTRAVEL</a>
    </div>
    <div>
      <a href="./로그인.html" id="login">Login</a>
      <a href="./회원가입.html" id="sign">Signup</a>
    <ul class="menu">
        <li>
          <a href="#">☰</a>
          <ul class="submenu">
            <li><a href="./로그인.html">로그인</a></li>
            <li><a href="./마이페이지.html">마이페이지</a></li>
            <li><a href="#">관광지</a></li>
            <li><a href="#">굿즈</a></li>
            <li><a href="#">submenu05</a></li>
        </ul>
    </li>
</div>
  </header>
<body style="overflow: hidden" id="body">
    <form action="<%= request.getContextPath() %>/signUp" onsubmit="Validation(event)" method="post">
      <div id="main">
      <h1 id="signh1">회원 가입</h1>
      <br><br>
      <div class="signdiv">
        <input type="text" id="userName" class="purple" name="userName" placeholder="이름"><br>
        <span id="userNameSpan" class="spanspan" style="margin:1px;"></span>
      </div>
        <div id="bubb" class="signdiv">
        <input type="text" id="idCheckInput" class="purple" placeholder="아이디 입력(6~20글자)">
        <input type="button" value="중복확인" id="idCheckButton"><br>
          </div>
        <span id="idCheckView" class="spanspan" style="margin-bottom: 6px"></span>
    <div class="signdiv">
        <input type="password" id="userPwd" class="pwd" name="userPwd" placeholder="비밀번호"><br>
        <span id="userPwdSpan" class="spanspan"style="margin:15px;" ></span>
      </div>
      <div class="signdiv">
        <input type="password" id="userPwdCheck" class="pwd" name="userPwdCheck" placeholder="비밀번호확인"><br>
        <span id="userPwdCheckSpan" class="spanspan" style="margin:15px;"></span>
      </div>
        <div class="signdiv" style="top: 10px;"></div>
   <div>
      <input type="text" id="emailUser" class="purple" placeholder="이메일 아이디">&nbsp;@
      <input type="text" id="emailDomain" class="box" value="이메일 선택" disabled>
      <select id="domainList" class="box" style="height: 40px;">
      	<option value="이메일" disabled>이메일 선택</option>
        <option value="naver.com">naver.com</option>
        <option value="google.com">google.com</option>
        <option value="hanmail.net">hanmail.net</option>
        <option value="nate.com">nate.com</option>
        <option value="kakao.com">kakao.com</option>
        <option value="type">직접 입력</option>
      </select>
       <input type="hidden" id="fullEmail" name="fullEmail">
      </div>
      <div class="signdiv">
        <input type="text" id="phone" class="purple" value="010" style="width: 50px; text-align: center; height: 40px;"> -
        <input type="text" id="pHone" class="purple" name="pHone" style="width:230px; height: 40px; font-size: 1rem;" placeholder="휴대폰 번호입력">
        <br>
        <span id="pHoneSpan" class="spanspan"></span>
         <input type="hidden" id="Pphone" name="Pphone">
      </div>
      <div class="form-group">
    			<label for="role">사용자 유형 : </label>
    			<select id="role" name="role" required>
        			<option value="member">일반회원</option>
        			<option value="company">회사회원</option>
    			</select>
			</div>
      <br><br>
      <button type="submit" id="signbutton">회원가입 완료!</button>
    </form>
     <script src="${pageContext.request.contextPath}/js/signUp.js"></script>
</body>
</html>