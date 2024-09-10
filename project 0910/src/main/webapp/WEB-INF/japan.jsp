<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8" />
    <title>일식</title>
    <link
      href="${pageContext.request.contextPath}/css/reset.css"
      rel="stylesheet"
    />
    <link
      href="${pageContext.request.contextPath}/css/japan.css"
      rel="stylesheet"
    />
    <style>
      label.menu {
        border: 5px solid rgba(52, 214, 255, 0.5);
        padding: 20px;
        line-height: 50px;
      }
      input#menu {
        display: none;
      }
      nav#main_nav {
        display: none;
        padding-left: 230px;
        padding-right: 220px;
      }
      input#menu:checked + nav#main_nav {
        display: block;
      }
    </style>
  </head>
  <body>
    <div id="logo">
      <div>
        <input
          type="button"
          id="button"
          class="button"
          value="뒤로가기"
          onclick="history.go(-1)"
        />
      </div>
      <img src="img/타키로고.png" alt="" />
    </div>
    <br />
    <label class="menu" for="menu">일식 TAKI </label>
    <input id="menu" type="checkbox" />
    <nav id="main_nav">
      <ul>
        <div>
          <a href="#"></a
          ><img src="img/타키점심메뉴판.png" width="800" height="500" />
          <a href="#"></a
          ><img src="img/타키메뉴판스시.png" width="600" height="500" />
        </div>
        <div id="img">
          <a href="#"></a
          ><img src="img/타키외부.png" width="600" height="600" />
          <a href="#"></a
          ><img src="img/타키내부.png" width="800" height="600" />
        </div>
        <div>
          <a href="#"></a><img src="img/타키.png" width="650" height="400" />
          <a href="#"></a><img src="img/타키2.png" width="375" height="400" />
          <a href="#"></a><img src="img/타키3.png" width="375" height="400" />
        </div>

        <div id="img">
          <a href="#"></a><img src="img/타키1.png" width="700" height="600" />
          <a href="#"></a><img src="img/타키4.jpg" width="700" height="600" />
        </div>
      </ul>
    </nav>
    <br />
    <div id="review-box">
      <div id="review">
        <li>파리15구에 위치해있는 'TAKI'입니다.</li>
        <p>
          영업시간 <br />
          런치 : 12:00 ~ 14:15 <br />
          디너 : 19:00 ~ 22:15 (일요일 휴무,매년 5월 1일 휴무)
        </p>
        <li>여행객들이 가장 많이 숙소를 정하는 지역중 하나.</li>
        <p>
          에펠탑, 샹드마르스, 몽쥬약국 에펠점 등등 여러가지 음식점들과 볼거리가
          많은구역 입니다.
        </p>
        <li>한국인 셰프가 운영하는 전통 일식집.</li>
        <p>
          신선한 회와 초밥이 시그니처 메뉴 <br />
          돈카츠와 가츠동, 야끼우동등 다양한 메뉴가 있습니다. <br />
          평일 점심 시간대는 주위 직장인들이 몰려서 웨이팅이나 예약 필요, <br />
          주말 저녁 또한 예약이 필수인 15구 맛집입니다.
        </p>
        <li>나름의 가성비가 좋은 횟집</li>
        <p>
          신선하고 품질 좋은 회를 맛보려면 파리에서는 금액이 상당히 올라가는데
          <br />
          그에 비해 타끼는 금액도 적당하고 퀄리티 높은 음식들이 나옵니다.
        </p>
        <br />
      </div>
    </div>
    <br /><br /><br /><br />
  </body>
</html>