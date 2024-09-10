<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=, initial-scale=1.0" />
    <title>마이페이지</title>
    <link rel="stylesheet" href="../css/mypage.css" />
    <link rel="stylesheet" href="../reset.css" />
    <!-- 폰트어썸폴더 -->
<script src="https://kit.fontawesome.com/071562b1d0.js" crossorigin="anonymous"></script> 
    <!-- 구글 폰트-->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Gowun+Batang&display=swap" rel="stylesheet">
  </head>
  
  <header id="header">
    <div id="Binggrae_font">
      <a href="/" id="KHTRAVEL">KHTRAVEL</a>
    </div>
  </header>  
  <!-- //style="overflow: hidden" -->
  <body  style="overflow-x: hidden; overflow-y:auto;" id="body">
   
  </div><br>
    <div id="imgpage2">
    <label for="input-file" class="input-file"><i class="fa-solid fa-camera-retro"></i>&nbsp;이미지 추가</label>
    <br><br><br><br>
    <input type="file" accept="image/*" onchange="imgShow(event)" id="input-file" style="display: none;">
  </div>
  <details>
    <summary style="padding-left:55px; padding-right: 55px;"><span id="more"><h1><i class="fa-regular fa-calendar-check" id="red"></i>&nbsp;예약정보</h1></span></summary>
<!---------------------------------------------------------------------->
  <div class="mainpage3">
  <section class="section1"><h2>경기1</h2>
    <div>
    <img src="../IMG/농구.png" alt="" class="img1">
  </div>
  <br>
  <div class="maininfo" >
    <div class="mainheader" style="width: 100%; height: 15px;"><span id="spancaca">티켓<i class="fa-regular fa-calendar" id="cacaca"> 1998-09-13</i>
      <i class="fa-solid fa-location-dot" id="cdcdcd">asdasd</i></span><br></div>
  <p>Lorem ipsum, dolor sit amet consectetur adipisicing elit. Expedita dolorum dicta corrupti veritatis nemo fuga eum est saepe corporis quod eaque atque beatae maiores eius autem illum, obcaecati aliquid distinctio?</p>
</div>
  </section>

  <section class="section2"><h2>경기2</h2>
    <div>
    <img src="#" alt="" class="img1">
  </div>
  <br>
  <div class="maininfo" >
    <div class="mainheader" style="width: 100%; height: 15px;"><span id="spancaca">티켓<i class="fa-regular fa-calendar" id="cacaca"> 1998-09-13</i>
      <i class="fa-solid fa-location-dot" id="cdcdcd">asdasd</i></span><br></div>
  <p>Lorem ipsum, dolor sit amet consectetur adipisicing elit. Expedita dolorum dicta corrupti veritatis nemo fuga eum est saepe corporis quod eaque atque beatae maiores eius autem illum, obcaecati aliquid distinctio?</p>
</div>
  </section>

  <section class="section3"><h2>경기3</h2>
    <div>
    <img src="#" alt="" class="img1">
  </div>
  <br>
  <div class="maininfo" >
    <div class="mainheader" style="width: 100%; height: 15px;"><span id="spancaca">티켓<i class="fa-regular fa-calendar" id="cacaca"> 1998-09-13</i>
      <i class="fa-solid fa-location-dot" id="cdcdcd">asdasd</i></span><br></div>
  <p>Lorem ipsum, dolor sit amet consectetur adipisicing elit. Expedita dolorum dicta corrupti veritatis nemo fuga eum est saepe corporis quod eaque atque beatae maiores eius autem illum, obcaecati aliquid distinctio?</p>
</div>
  </section>
  </div>
<!-------------------------------------------------->
<br>
<details>
  <summary style="width: 500px; margin-left: 35%; background-color: rgba(255, 255, 255, 0); box-shadow: none; color: #0000008c;"><span id="more">더보기...</span></summary>
  <div class="mainpage3">
    <section class="section1"><h2>경기4</h2>
      <div>
      <img src="../IMG/농구.png" alt="" class="img1">
    </div>
    <br>
    <div class="maininfo" >
      <div class="mainheader" style="width: 100%; height: 15px;"><span id="spancaca">티켓<i class="fa-regular fa-calendar" id="cacaca"> 1998-09-13</i>
        <i class="fa-solid fa-location-dot" id="cdcdcd">asdasd</i></span><br></div>
    <p>Lorem ipsum, dolor sit amet consectetur adipisicing elit. Expedita dolorum dicta corrupti veritatis nemo fuga eum est saepe corporis quod eaque atque beatae maiores eius autem illum, obcaecati aliquid distinctio?</p>
  </div>
    </section>

    <section class="section2"><h2>경기5</h2>
      <div>
      <img src="#" alt="" class="img1">
    </div>
    <br>
    <div class="maininfo" >
      <div class="mainheader" style="width: 100%; height: 15px;"><span id="spancaca">티켓<i class="fa-regular fa-calendar" id="cacaca"> 1998-09-13</i>
        <i class="fa-solid fa-location-dot" id="cdcdcd">asdasd</i></span><br></div>
    <p>Lorem ipsum, dolor sit amet consectetur adipisicing elit. Expedita dolorum dicta corrupti veritatis nemo fuga eum est saepe corporis quod eaque atque beatae maiores eius autem illum, obcaecati aliquid distinctio?</p>
  </div>
    </section>

    <section class="section3"><h2>경기6</h2>
      <div>
      <img src="#" alt="" class="img1">
    </div>
    <br>
    <div class="maininfo" >
      <div class="mainheader" style="width: 100%; height: 15px;"><span id="spancaca">티켓<i class="fa-regular fa-calendar" id="cacaca"> 1998-09-13</i>
        <i class="fa-solid fa-location-dot" id="cdcdcd">asdasd</i></span><br></div>
    <p>Lorem ipsum, dolor sit amet consectetur adipisicing elit. Expedita dolorum dicta corrupti veritatis nemo fuga eum est saepe corporis quod eaque atque beatae maiores eius autem illum, obcaecati aliquid distinctio?</p>
  </div>
    </section>
</div>

<div class="mainpage3">
      <section class="section1"><h2>경기7</h2>
        <div>
        <img src="../IMG/농구.png" alt="" class="img1">
      </div>
      <br>
      <div class="maininfo" >
    <div class="mainheader" style="width: 100%; height: 15px;"><span id="spancaca">티켓<i class="fa-regular fa-calendar" id="cacaca"> 1998-09-13</i>
      <i class="fa-solid fa-location-dot" id="cdcdcd">asdasd</i></span><br></div>
  <p>Lorem ipsum, dolor sit amet consectetur adipisicing elit. Expedita dolorum dicta corrupti veritatis nemo fuga eum est saepe corporis quod eaque atque beatae maiores eius autem illum, obcaecati aliquid distinctio?</p>
</div>
  </section>

      <section class="section2"><h2>경기8</h2>
        <div>
        <img src="#" alt="" class="img1">
      </div>
      <br>
     <div class="maininfo" >
    <div class="mainheader" style="width: 100%; height: 15px;"><span id="spancaca">티켓<i class="fa-regular fa-calendar" id="cacaca"> 1998-09-13</i>
      <i class="fa-solid fa-location-dot" id="cdcdcd">asdasd</i></span><br></div>
  <p>Lorem ipsum, dolor sit amet consectetur adipisicing elit. Expedita dolorum dicta corrupti veritatis nemo fuga eum est saepe corporis quod eaque atque beatae maiores eius autem illum, obcaecati aliquid distinctio?</p>
</div>
  </section>
      <section class="section3"><h2>경기9</h2>
        <div>
        <img src="#" alt="" class="img1">
      </div>
      <br>
      <div class="maininfo" >
        <div class="mainheader" style="width: 100%; height: 15px;"><span id="spancaca">티켓<i class="fa-regular fa-calendar" id="cacaca"> 1998-09-13</i>
          <i class="fa-solid fa-location-dot" id="cdcdcd">asdasd</i></span><br></div>
      <p>Lorem ipsum, dolor sit amet consectetur adipisicing elit. Expedita dolorum dicta corrupti veritatis nemo fuga eum est saepe corporis quod eaque atque beatae maiores eius autem illum, obcaecati aliquid distinctio?</p>
    </div>
      </section>
      </div>
</details>
<br>
<!-------------------------------------------------------------->
<div class="mainpage3">
  <section class="section1"><h2>숙소1</h2>
    <div>
    <img src="../IMG/농구.png" alt="" class="img1">
  </div>
  <br>
  <div class="maininfo" >
<div class="mainheader" style="width: 100%; height: 15px;"><span id="spancaca">티켓<i class="fa-regular fa-calendar" id="cacaca"> 1998-09-13</i>
  <i class="fa-solid fa-location-dot" id="cdcdcd">asdasd</i></span><br></div>
<p>Lorem ipsum, dolor sit amet consectetur adipisicing elit. Expedita dolorum dicta corrupti veritatis nemo fuga eum est saepe corporis quod eaque atque beatae maiores eius autem illum, obcaecati aliquid distinctio?</p>
</div>
</section>

  <section class="section2"><h2>숙소2</h2>
    <div>
    <img src="#" alt="" class="img1">
  </div>
  <br>
 <div class="maininfo" >
<div class="mainheader" style="width: 100%; height: 15px;"><span id="spancaca">티켓<i class="fa-regular fa-calendar" id="cacaca"> 1998-09-13</i>
  <i class="fa-solid fa-location-dot" id="cdcdcd">asdasd</i></span><br></div>
<p>Lorem ipsum, dolor sit amet consectetur adipisicing elit. Expedita dolorum dicta corrupti veritatis nemo fuga eum est saepe corporis quod eaque atque beatae maiores eius autem illum, obcaecati aliquid distinctio?</p>
</div>
</section>
  <section class="section3"><h2>숙소3</h2>
    <div>
    <img src="#" alt="" class="img1">
  </div>
  <br>
  <div class="maininfo" >
    <div class="mainheader" style="width: 100%; height: 15px;"><span id="spancaca">티켓<i class="fa-regular fa-calendar" id="cacaca"> 1998-09-13</i>
      <i class="fa-solid fa-location-dot" id="cdcdcd">asdasd</i></span><br></div>
  <p>Lorem ipsum, dolor sit amet consectetur adipisicing elit. Expedita dolorum dicta corrupti veritatis nemo fuga eum est saepe corporis quod eaque atque beatae maiores eius autem illum, obcaecati aliquid distinctio?</p>
</div>
  </section>
  </div>
  <div style="text-align: center;">
    <h1>총 요금</h1>
      <button id="total">Total :  ₩</button>
    </div>
</div>
</details>
<br>
  <!------------------------------------------------------------------->
  <details >
    <summary><span id="more"> <h1><i class="fa-solid fa-user-gear" id="green"></i>&nbsp;회원정보 수정</h1></span></summary>
    <br>
    <details>
    <summary><span id="more"> <h1><i class="fa-regular fa-address-card" style="color: rgb(202, 169, 96);"></i>&nbsp;기본정보 변경</h1></span></summary>
    <div id="mainpage4">
      <section id="section4" class="sect">
        <div id="line">
        <h2>기본 정보 수정</h2>
      </div>
      <br><br>
       <form action="mypage/submit" onsubmit="Validation(event)" method="post">
        <div class="idid">
              <label for ="text">변경할 이름</label>
              <input type="text" id="name" name="name" required>
              <span id="nameSpan"></span>
          </div>
          <div class="idid">
              <label for="phone"> 변경할 전화번호</label>
              <input type="text" id="phone" name="phone"  required>          
              <span id ="phoneSpan"></span>
           </div>
           <div class="idid">
            <label for ="Email">변경할 이메일</label>
            <input type="text" id="email" name="email"  required>
            <span id="emailSpan"></span>
        </div><br><br> 
          <button type="submit" class="infobu">회원 정보 수정</button>
        </form>  
  </details>
  <details>
    <summary><span id="more"> <h1><i class="fa-solid fa-lock" style="color: #62865f;"></i>&nbsp;비밀번호 변경</h1></span></summary>
    <div id="mainpage4">
      <section id="section4" class="sect">
        <div id="line">
        <h2>비밀번호 변경</h2>
      </div>
      <br><br>
      <form action="mypage" onsubmit="Validation2(event)" method="post">
       	  <div class="idid">
              <label for ="password">기존 비밀번호</label>
              <input type="password" id="pwd"  name="pwd" required>             
          </div>
          <div class="idid">
              <label for ="password">변경할 비밀번호</label>
              <input type="password" id="password"  name="password" required>
              <span id="passwordSpan"></span>
          </div>
          <div class="idid">
              <label for="password">변경할 비밀번호 확인</label>
              <input type="password" id="passwordCheck"  name="passwordCheck" required>
              <span id="passwordCheckSpan"></span>
          </div>
          <button type="submit" class="infobu">회원 정보 수정</button>          
          </form>
       </section>
  </div>
  
  </details>
  <div style="width: 100%; height: 100px;"></div>
  </details>
  
    <script src="${pageContext.request.contextPath}/js/mypage.js"></script>
    <script type="text/javascript">
        		var message = "${errorMessage}";
        		if(message) {
           			alert(message);
        		}
 	</script>
  </body>
</html>