<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>포르테 데 베르사유 호텔</title>
	 <link href="${pageContext.request.contextPath}/css/reset.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/css/dehotel.css" rel="stylesheet">
    <script src="https://code.jquery.com/jquery-3.7.1.min.js"></script>
</head>
<body>
 <div>
      <input
        type="button"
        id="button"
        class="button"
        value="뒤로가기"
        onclick="history.go(-1)"
      />
    </div>
    <div class="slider">
      
      <div class="slides-container">
        <div class="slide">
          <img src="img/포르테 데 베르사유 호텔.webp" alt="이미지 1" />
        </div>
        <div class="slide">
          <img src="img/포르테 데 베르사유 호텔1.webp" alt="이미지 2" />
        </div>
        <div class="slide">
          <img src="img/포르테 데 베르사유 호텔2.webp" alt="이미지 3" />
        </div>
        <div class="slide">
          <img src="img/포르테 데 베르사유 호텔3.webp" alt="이미지 4" />
        </div>
        <div class="slide">
          <img src="img/포르테 데 베르사유 호텔4.webp" alt="이미지 5" />
        </div>
        <div class="slide">
          <img src="img/포르테 데 베르사유 호텔5.webp" alt="이미지 6" />
        </div>
        <div class="slide">
          <img src="img/포르테 데 베르사유 호텔6.webp" alt="이미지 7" />
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
            파리(15구)에 위치한 포르테 데 베르사유의 겅우 차로 5분 정도 이동하면
            파리 엑스포 및 롤랑 가로스 스타디움에 가실 수 있습니다. 이 업스케일
            호텔에서 에펠탑까지는 3.5km 떨어져 있으며, 7.1km 거리에는 뤽상부르
            공원도 있습니다.
          </li>
        </p>
      </div>
      <div class="tag">
        <p>
          <li>
            149 개의 객실은 Patrick Norguet에 의해 디자인 되었습니다. 1명 또는
            2명을 위해 계획된 약 18m의2 공간을 제공합니다.
          </li>
        </p>
        <div class="tag">
          <p>
            <li>
              파리(19 아롱디스망)에 위치한 르 르믹스 호텔의 경우 차로 15분 이내
              거리에 프랑스 스타디움 및 라 마쉰 뒤 물랑 후즈 등이 있습니다, 이
              업스케일 호텔에서 노트르담 대성당까지는 6.2km 떨어져 있으며, 7,4km
              거리에는 뤽상부르 공원도 있습니다.
            </li>
          </p>
        </div>
        <div class="tag">
          <p>
            <li>
              7호선을 타면 오페라, 풍네프, 센강을 따라 라틴 지구까지 바로갈 수
              있습니다.
            </li>
          </p>
        </div>
        <div class="tag">
          <p>
            <li>
              259개의 객실은 빈티지한 화려함과 트렌디한 펑크가 혼합된 80년대
              레트로풍을 자랑합니다.
            </li>
          </p>
        </div>
        <div class="tag">
          <p><li>2인실, 4인실, 6인실까지 다양한 객실 타입을 제공합니다.</li></p>
        </div>
        <div class="tag">
          <p>
            <li>
              크롬 캐스트도 이용 가능하니 OTT 서비스를 시청하기도 좋습니다.
            </li>
          </p>
        </div>
        <div class="tag">
          <p>
            <li>
              가족 혹은 친구들과 함께 즐길 수 있는 게임 스테이션, 피트니스 룸,
              근사한 바까지 부대시설도 다양한 매력적인 호텔입니다.
            </li>
          </p>
        </div>
        <div class="tag">
          <p>
            <li>체크인 15:00 부터</li>
          </p>
        </div>
        <p>
          <li>체크아웃 정오 까지</li>
        </p>
      </div>    
   <!-- SCRIPTS -->
	<script src="${pageContext.request.contextPath}/js/hotel.js"></script>
</body>
</html>