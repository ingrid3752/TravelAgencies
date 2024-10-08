<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>슈에트 호텔</title>
 	<link href="${pageContext.request.contextPath}/css/reset.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/css/shuhotel.css" rel="stylesheet">
    <script src="https://code.jquery.com/jquery-3.7.1.min.js"></script>
</head>
<body>
<div>
    <input type="button" id="button" class="button" value="뒤로가기" onclick="history.go(-1)" /></div>
    <div class="slider">
      
      <div class="slides-container">
        <div class="slide">
          <img src="img/슈에트호텔1.webp" alt="이미지 1" />
        </div>
        <div class="slide">
          <img src="img/슈에트호텔2.webp" alt="이미지 2" />
        </div>
        <div class="slide">
          <img src="img/슈에트호텔3.webp" alt="이미지 3" />
        </div>
        <div class="slide">
          <img src="img/슈에트호텔4.webp" alt="이미지 4" />
        </div>
        <div class="slide">
          <img src="img/슈에트호텔5.webp" alt="이미지 5" />
        </div>
        <div class="slide">
          <img src="img/슈에트호텔6.webp" alt="이미지 6" />
        </div>
      </div>
    </div>

    <div class="rating-container">
      <div class="rating-item">
        <span>숙소 청결 상태</span>
        <div class="rating-bar">
          <div class="rating-fill" style="width: 100%"></div>
          <span class="rating-score">10.0</span>
        </div>
      </div>
      <div class="rating-item">
        <span>부대시설</span>
        <div class="rating-bar">
          <div class="rating-fill" style="width: 80%"></div>
          <span class="rating-score">8.0</span>
        </div>
      </div>
      <div class="rating-item">
        <span>위치</span>
        <div class="rating-bar">
          <div class="rating-fill" style="width: 100%"></div>
          <span class="rating-score">10.0</span>
        </div>
      </div>
      <div class="rating-item">
        <span>서비스</span>
        <div class="rating-bar">
          <div class="rating-fill" style="width: 100%"></div>
          <span class="rating-score">10.0</span>
        </div>
      </div>
      <div class="rating-item">
        <span>가격 대비 만족도</span>
        <div class="rating-bar">
          <div class="rating-fill" style="width: 100%"></div>
          <span class="rating-score">10.0</span>
        </div>
      </div>
    </div>


    <div class="review">
      <h3>호텔 소개</h3>

      <div class="tag">
        <p>
          <li>
           파리 중심에 자리한 슈에트 호텔의 경우 차로 3분 거리에는 파리엑스포,
            9분 거리에는 에펠탑 등이 있습니다. 이 호텔에서 뤽상부르 공원까지는 
            4.1km 떨어져 있으며, 4.8km 거리에는 루브르 박물관이 있습니다.
          </li>
        </p>
      </div>
      <div class="tag">
        <p>
          <li>
            방음이 잘 되어 있는 밝은 분위기의 객실은 파리에서 찾아보기 힘든 넓은 공간을 제공하는 것이 장점입니다.
          </li>
        </p>
      </div>
      <div class="tag">
        <p>
          <li>
            더블, 트윈, 트리플, 스위트 등 다양한 객실 타입을 운영하며 개인용 욕실을 갖추고 있습니다.
          </li>
        </p>
      </div>
      <div class="tag">
        <p><li>매일 아침 신선한 조식을 이용하실수 있습니다.</li></p>
      </div>
      <div class="tag">
        <p>
          <li>휴식할 수 있는 라운지 공간에는 하루 종일 음료와 스낵이 준비되어 있습니다.</li>
        </p>
      </div>    
      <div class="tag">
        <p>
          <li>
           체크인 14:00 부터
          </li>
        </p>        
      </div>
      <p>
        <li>
         체크아웃 정오 까지
        </li>
      </p>
    </div>
    </div>
    <!-- SCRIPTS -->
	<script src="${pageContext.request.contextPath}/js/hotel.js"></script>
</body>
</html>