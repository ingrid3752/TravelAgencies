<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>테니스</title>
<link href="${pageContext.request.contextPath}/css/reset.css" rel="stylesheet" />
<link href="${pageContext.request.contextPath}/css/sport.css" rel="stylesheet" />
<!-- 구글 폰트-->
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Do+Hyeon&display=swap" rel="stylesheet">
  <style>
   	body {
  font-family: "Do Hyeon", sans-serif;
  font-weight: 400;
  font-style: normal;
}   	
   </style>
    <script
      src="https://kit.fontawesome.com/071562b1d0.js"
      crossorigin="anonymous"
    ></script>
    
</head>
<body style="overflow-x: hidden">
<%@ include file="./header.jsp" %>
 <div class="ticket-container">
      <div class="ticket">
        <div id="modaldiv">
          <h2>경기종목 설명</h2>
          <button type="button" id="modal_button">
            <!-- 모달창 버튼 -->
            <i class="fa-solid fa-map"></i>
            <span>&nbsp;찾아오는길</span>
          </button>
        </div>
        <div class="ticket-info">
          <div class="text-wrapper">
            <!-- 텍스트 내용 -->
            <span class="text"
              >테니스는 코트 중앙에 네트를 두고 네트를 넘어온 테니스공이 자신의 진영에 두 번 튀기전에 라켓을 이용하여 공을 상대 진영으로 넘기는 라켓 구기 스포츠이다. 승부는 득점의 다과로 가른다. 게임의 방식은 1:1로 승부를 벌이는 단식, 2:2로 팀을 이뤄 승부를 벌이는 복식이 있다.</span
            >
            <span class="more-text">더보기</span>
            <span class="less-text">줄이기</span>
          </div>
        </div>
        <div class="ticket-icon"></div>
        <img src="../IMG/테니스.png" alt="이미지" id="imgbask" />
      </div>
    </div>
    <!--------------------------------------------------------------------------->
    <div class="ticket-container6">
      <div class="ticket6">
        <div id="modaldiv">
          <img src="../IMG/테니스마스코트.png" alt="이미지" id="imgbask" />
        </div>
        <div class="ticket-info">
          <a href="https://www.itftennis.com/en/"><img src="../IMG/테니스주관단체.png" alt="이미지" id="imgbask" /></a>
        </div>
        <div class="ticket-icon"></div>
      </div>

      <div class="ticket8">
        <div class="ticket-info">
          <h2>좌석 배치도</h2>
        </div>
        <div class="ticket-icon2">
          <img src="../IMG/(진)좌석배치도.png" alt="" id="sss" />
          <button type="button" id="modal_button2">
            <!-- 모달창 버튼 -->
            <i class="fa-solid fa-magnifying-glass"></i>
          </button>
        </div>
      </div>
    </div>
    <!--------------------------------------------------------------------------->
    <div id="modal">
      <div id="modalmo">
        <div id="modal_">
          <h3>지도</h3>
          <iframe
            src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2531.817933091008!2d3.1278990769436756!3d50.611920575724!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x47c2d6467a158d69%3A0x111d6a3b1cf4201a!2z7Iqk7YOA65OcIO2UvOyXkOultCDrqqjro6jslYQ!5e0!3m2!1sko!2skr!4v1724660936220!5m2!1sko!2skr"
            width="700"
            height="700"
            style="border: 0"
            allowfullscreen=""
            loading="lazy"
            referrerpolicy="no-referrer-when-downgrade"
          ></iframe>
          <br />
          <h4>스타드 피에르 모루아</h4>
          <p>에펠탑근처에있을까용</p>
          <button type="button" id="close_btn">
            <!-- 모달닫기 -->
            X
          </button>
        </div>
      </div>
    </div>
    <!-- 모달2 ------------------------------------------------------>
    <div id="modal2">
      <div id="modalmo2">
        <div id="modal_2">
          <h3>좌석 배치도</h3>
          <img src="../IMG/(진)좌석배치도.png" alt="" />
          <br />
          <h4>좌석 배치도</h4>
          <button type="button" id="close_btn2">
            <!-- 모달닫기 -->
            X
          </button>
        </div>
      </div>
    </div>

    <div class="ticket-container">
      <div class="ticket3">
        <div class="ticket-icon"></div>
        <div class="ticket-info">
          <h1>티켓 A</h1>
          <p><i class="fa-regular fa-calendar"></i>&nbsp;08-24 10:24</p>
          <p>
            <i class="fa-solid fa-location-dot"></i>&nbsp;스타드 피에르 모루아
          </p>
        </div>

        <div class="itembu">
          <div class="control">
            <button id="minus" class="butt">-</button>
            <input
              type="number"
              id="quantity"
              value="0"
              min="0"
              class="quantity"
              readonly
            />
            <button id="plus" class="butt">+</button>
          </div>
          <div class="price">
            <p>TotalPrice : <span id="totalPrice">500</span> ₩</p>
            <button type="submit" class="ticket-pay"></button>
          </div>
        </div>
      </div>
    </div>

    <div class="ticket-container">
      <div class="ticket3">
        <div class="ticket-icon"></div>
        <div class="ticket-info">
          <h1>티켓 B</h1>
          <p><i class="fa-regular fa-calendar"></i>&nbsp;08-24 11:35</p>
          <p>
            <i class="fa-solid fa-location-dot"></i>&nbsp;스타드 피에르 모루아
          </p>
        </div>
        <div class="itembu">
          <div class="control">
            <button id="minus1" class="butt">-</button>
            <input
              type="number"
              id="quantity1"
              value="0"
              min="0"
              class="quantity"
              readonly
            />
            <button id="plus1" class="butt">+</button>
          </div>
          <div class="price">
            <p>TotalPrice : <span id="totalPrice1">400</span> ₩</p>
            <button type="submit" class="ticket-pay"></button>
          </div>
        </div>
      </div>
    </div>

    <div class="ticket-container">
      <div class="ticket3">
        <div class="ticket-icon"></div>
        <div class="ticket-info">
          <h1>티켓 C</h1>
          <p><i class="fa-regular fa-calendar"></i>&nbsp;08-24 12:25</p>
          <p>
            <i class="fa-solid fa-location-dot"></i>&nbsp;스타드 피에르 모루아
          </p>
        </div>
        <div class="itembu">
          <div class="control">
            <button id="minus2" class="butt">-</button>
            <input
              type="number"
              id="quantity2"
              value="0"
              min="0"
              class="quantity"
              readonly
            />
            <button id="plus2" class="butt">+</button>
          </div>
          <div class="price">
            <p>TotalPrice : <span id="totalPrice2">300</span> ₩</p>
            <button type="submit" class="ticket-pay"></button>
          </div>
        </div>
      </div>
    </div>
    <div class="ticket-container">
      <div class="ticket3">
        <div class="ticket-icon"></div>
        <div class="ticket-info">
          <h1>티켓 D</h1>
          <p><i class="fa-regular fa-calendar"></i>&nbsp;08-24 12:50</p>
          <p>
            <i class="fa-solid fa-location-dot"></i>&nbsp;스타드 피에르 모루아
          </p>
        </div>
        <div class="itembu">
          <div class="control">
            <button id="minus3" class="butt">-</button>
            <input
              type="number"
              id="quantity3"
              value="0"
              min="0"
              class="quantity"
              readonly
            />
            <button id="plus3" class="butt">+</button>
          </div>
          <div class="price">
            <p>TotalPrice : <span id="totalPrice3">600</span> ₩</p>
            <button type="submit" class="ticket-pay"></button>
          </div>
        </div>
      </div>
    </div>

    <div class="ticket-container">
      <div class="ticket3">
        <div class="ticket-icon"></div>
        <div class="ticket-info">
          <h1>티켓 E</h1>
          <p><i class="fa-regular fa-calendar"></i>&nbsp;08-24 13:14</p>
          <p>
            <i class="fa-solid fa-location-dot"></i>&nbsp;스타드 피에르 모루아
          </p>
        </div>
        <div class="itembu">
          <div class="control">
            <button id="minus4" class="butt">-</button>
            <input
              type="number"
              id="quantity4"
              value="0"
              min="0"
              class="quantity"
              readonly
            />
            <button id="plus4" class="butt">+</button>
          </div>
          <div class="price">
            <p>TotalPrice : <span id="totalPrice4">700</span> ₩</p>
            <button type="submit" class="ticket-pay"></button>
          </div>
        </div>
      </div>
    </div>

    <div class="ticket-container">
      <div class="ticket3">
        <div class="ticket-icon"></div>
        <div class="ticket-info">
          <h1>티켓 F</h1>
          <p><i class="fa-regular fa-calendar"></i>&nbsp;08-24 14:00</p>
          <p>
            <i class="fa-solid fa-location-dot"></i>&nbsp;스타드 피에르 모루아
          </p>
        </div>
        <div class="itembu">
          <div class="control">
            <button id="minus5" class="butt">-</button>
            <input
              type="number"
              id="quantity5"
              value="0"
              min="0"
              class="quantity"
              readonly
            />
            <button id="plus5" class="butt">+</button>
          </div>
          <div class="price">
            <p>TotalPrice : <span id="totalPrice5">800</span> ₩</p>
            <button type="submit" class="ticket-pay"></button>
          </div>
        </div>
      </div>
    </div>

    <div class="ticket-container">
      <div class="ticket3">
        <div class="ticket-icon"></div>
        <div class="ticket-info">
          <h1>티켓 G</h1>
          <p><i class="fa-regular fa-calendar"></i>&nbsp;08-24 14:50</p>
          <p>
            <i class="fa-solid fa-location-dot"></i>&nbsp;스타드 피에르 모루아
          </p>
        </div>
        <div class="itembu">
          <div class="control">
            <button id="minus6" class="butt">-</button>
            <input
              type="number"
              id="quantity6"
              value="0"
              min="0"
              class="quantity"
              readonly
            />
            <button id="plus6" class="butt">+</button>
          </div>
          <div class="price">
            <p>TotalPrice : <span id="totalPrice6">900</span> ₩</p>
            <button type="submit" class="ticket-pay"></button>
          </div>
        </div>
      </div>
    </div>

    <div class="ticket-container">
      <div class="ticket3">
        <div class="ticket-icon"></div>
        <div class="ticket-info">
          <h1>티켓 H</h1>
          <p><i class="fa-regular fa-calendar"></i>&nbsp;08-24 15:50</p>
          <p>
            <i class="fa-solid fa-location-dot"></i>&nbsp;스타드 피에르 모루아
          </p>
        </div>
        <div class="itembu">
          <div class="control">
            <button id="minus7" class="butt">-</button>
            <input
              type="number"
              id="quantity7"
              value="0"
              min="0"
              class="quantity"
              readonly
            />
            <button id="plus7" class="butt">+</button>
          </div>
          <div class="price">
            <p>TotalPrice : <span id="totalPrice7">1000</span> ₩</p>
            <button type="submit" class="ticket-pay"></button>
          </div>
        </div>
      </div>
    </div>
    <div id="grandTotalContainer">
      <a href="/hotelinfo"><button type="submit" id="totalbutton">
        <i class="fa-solid fa-cart-shopping"></i> &nbsp;total :
        <span id="grandTotal">0</span>&nbsp;₩ &nbsp;&nbsp;&nbsp;
        <i
          class="fa-solid fa-arrow-right"
        ></i> &nbsp;&nbsp;호텔예약으로
      </button></a>
    </div>
    <br /><br /><br />
     <div style="display: flex">
        <div id="main6">
          <p class="qqq">https://github.com/jochanghyeon</p>
          <p class="qqq">010-1234-5678</p>
          <p class="qqq">(Fax)02-1234-5678</p>
          <p class="qqq">서울특별시 도봉구 도봉로152가길 176 (도봉동)</p>
          <p class="qqq">176 Dobong-ro 152ga-gil, Dobong-gu, Seoul</p>
        </div>
        <div id="main5">
          <a href="https://www.instagram.com/kh_iei/" class="bottom">
            <i class="fa-brands fa-instagram"></i
          ></a>
          <a href="https://www.facebook.com/khacademy1998/" class="bottom">
            <i class="fa-brands fa-facebook"></i
          ></a>
          <a href="https://khedu.co.kr/main/main.kh" class="bottom">KH</a>
          <a href="https://github.com/jochanghyeon" class="bottom"><i class="fa-brands fa-github"></i></a>
        </div>
      </div>
      <br><br><br>
   
    <!-- SCRIPTS -->
	<script src="${pageContext.request.contextPath}/js/sport.js"></script>
</body>
</html>