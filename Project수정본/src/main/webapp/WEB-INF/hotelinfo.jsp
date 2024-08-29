<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>호텔</title>
<link href="${pageContext.request.contextPath}/css/reset.css" rel="stylesheet" />
<link href="${pageContext.request.contextPath}/css/hotelinfo.css" rel="stylesheet" />
</head>
 <header id="header">
		<div id="Binggrae_font">
			<a href="/" id="KHTRAVEL">KHTRAVEL</a>
		</div>
		<ul class="menu">
			<li><a href="#">☰</a>
				<ul class="submenu">
					<li><a href="/reservation">예약</a></li>
					<li><a href="/stadium">오시는 길</a></li>
					<li><a href="/review">리뷰</a></li>
					<li><a href="/goods">굿즈</a></li>
				</ul></li>
		</ul>
	</header>
<body>
      <div class="hotel">
        <a href="/lehotel"><div class="hotel-info-box">
        <p>
          <input type="checkbox" id="checkbox-a" value="asdfsd" />
          <label for="label-a">
            르 르믹스 호텔 <p class="price"><br>가격 : 80000￦</p>
             </label
          > 
        </p>
      </div></a>
      <a href="/shuhotel"><div class="hotel-info-box">
        <p><input type="checkbox" id="checkbox-b" />
           <label for="label-b">
            슈에트호텔 <p class="price"><br>가격 : 120000￦</p>
          </label>
        </p>  
      </div></a>
      <a href="/dehotel"
              ><div class="hotel-info-box">
        <p>
          <input type="checkbox" id="checkbox-c" />
          <label for="label-c"
            >포르테 데 베르사유 호텔<p class="price"><br>가격 : 150000￦</p>
          </label>
        </p>        
      </div></a>
      <a href="/rest"><input type="submit"  class="submit" value="호텔예약하기" /></a>
    </div>
      
      
        <!-- 다음 링크 추가 -->
      
    
    
</body>
</html>