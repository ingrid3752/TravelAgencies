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
<body>

    <div id="signup-form">
        <h2>회원가입</h2>
        <form action="/signUp" method="post">
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
            	<input type="email" id="email" class="purple" name="email" placeholder="이메일" required>&nbsp;@
            	<input class="box" id="emailtxt" type="text" value="naver.com" class="purple">
            	<select class="box" id="emaillist" style="height: 40px;">
            	<option value="naver.com">naver.com</option>
          		<option value="gmail.com">gmail.com</option>
          		<option value="hanmail.net">hanmail.net</option>
          		<option value="nate.com">nate.com</option>
          		<option value="kakao.com">kakao.com</option>
          		<option value="type">직접 입력</option>
            	</select>
            </div>
                  <div class="signdiv">
        <input type="text" id="phone" class="purple" value="010" style="width: 50px; text-align: center; height: 40px;"> -
        <input type="text" id="pHone" class="purple" name="pHone" style="width:230px; height: 40px; font-size: 1rem;" placeholder="휴대폰 번호입력">
        <br>
        <span id="pHoneSpan" class="spanspan"></span>
      </div>
            <button type="submit">회원가입</button>
            
            아이디 : <input type="text" id="id">
	<input type="button" value="중복체크" id="idCheck">
	<span id="idCheckView"></span>
	<script>
	// 중복체크 버튼을 눌렀을 때
	$("#idCheck").click(() => {
		$.ajax({
			// 요청 (post방식으로 /check로 id 값 넘겨서 결과값(boolean)을 받아서)
			type: 'post',
			url: '/check',
			data: 'id=' + $("#id").val(),
			
			// 응답
			success: function(result) {
				$("#result").text();
			}
		});
	});
	</script>
        </form>
    </div>
    <script src="${pageContext.request.contextPath}/js/signUp.js"></script>
</body>
</html>