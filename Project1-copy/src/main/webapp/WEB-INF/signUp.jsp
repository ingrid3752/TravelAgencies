<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입</title>
<link href="${pageContext.request.contextPath}/css/reset.css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/css/signUp.css" rel="stylesheet">
<script src="https://code.jquery.com/jquery-3.7.1.min.js"></script>
</head>
<%@ include file="./header.jsp" %>
<body style="overflow: hidden" id="body">
    <form action="/signUp">    
      <div id="main">
      <h1>회원 가입</h1>
      <br>
      <div>
        <input type="text" id="userName" class="purple" name="userName" placeholder="이름"><br>
        <span id="userNameSpan" class="spanspan" style="margin:1px;"></span>
      </div>
        <div id="bubb">
        <input type="text" id="userId" name="userId" placeholder="아이디 입력(6~20글자)" class="purple" required ><br>
        <span id="userIdSpan" class="spanspan" style="margin:10px;"></span>
      <button id="bubu">중복확인</button>
    </div>

    <div>
        <input type="password" id="userPwd" class="pwd" name="userPwd" placeholder="비밀번호"><br>
        <span id="userPwdSpan" class="spanspan"style="margin:10px;" ></span>
      </div>
      <div>
        <input type="password" id="userPwdCheck" class="pwd" name="userPwdCheck" placeholder="비밀번호확인"><br>
        <span id="userPwdCheckSpan" class="spanspan" style="margin:10px;"></span>
      </div>
        <div>
        <input type="text" id="email" class="purple" placeholder="이메일">&nbsp;@
        <input class="box" id="emailtxt" type="text" value="naver.com" class="purple">
        <select class="box" id="emaillist" style="height: 45px;">
          <option value="이메일을 선택해주세요">이메일을 선택해주세요</option>
          <option value="naver.com">naver.com</option>
          <option value="google.com">google.com</option>
          <option value="hanmail.net">hanmail.net</option>
          <option value="nate.com">nate.com</option>
          <option value="kakao.com">kakao.com</option>
          <option value="type">직접 입력</option>
        </select>
      </div>
      <div style="margin-top: 3px;">
        <input type="text" id="phone" class="purple" value="010" style="width: 50px; text-align: center; height: 40px;"> -
        <input type="text" id="pHone" class="purple" name="pHone" style="width:230px; height: 40px; font-size: 1rem;" placeholder="휴대폰 번호입력">
        <br>
        <span id="pHoneSpan" class="spanspan" style="margin:10px;"></span>
      </div>
      <br><br>
      <button type="submit" id="signbutton">회원가입 완료!</button>
     </div>
    </form>

    
      <!-- 중략 -->
    
    <script src="${pageContext.request.contextPath}/js/signUp.js"></script>
</body>
</html>