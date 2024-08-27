<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>배드민턴</title>
<link href="${pageContext.request.contextPath}/css/sport.css" rel="stylesheet" />
<link href="${pageContext.request.contextPath}/css/reset.css" rel="stylesheet" />
<!-- 폰트어썸폴더 -->
    <script
      src="https://kit.fontawesome.com/071562b1d0.js"
      crossorigin="anonymous"
    ></script>
    <!-- 구글 폰트-->
    <link rel="preconnect" href="https://fonts.googleapis.com" />
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
</head>
<body style="overflow-x: hidden">
    <header id="header">
      <div id="Binggrae_font">
        <a href="/" id="KHTRAVEL">KHTRAVEL</a>
      </div>
      <ul class="menu">
          <li>
            <a href="#">☰</a>
            <ul class="submenu">
              <li><a href="/reservation">예약</a></li>
					<li><a href="/stadium">경기장</a></li>
					<li><a href="/review">리뷰</a></li>
					<li><a href="/goods">굿즈</a></li>
          </ul>
      </li>
     </ul>
    </header>  
      <div style="display: flex;">
      <div class="ticket-container">
        <div class="ticket">
          <h2>경기종목 설명</h2>
            <div class="ticket-icon">  
            </div>
            <div class="ticket-info">
                
                <div class="text-wrapper"> 
                <!-- 텍스트 내용 -->
						<span class="text">Lorem ipsum dolor sit amet consectetur,
							adipisicing elit. Et, ipsum hic, voluptatem, perferendis quia
							debitis blanditiis dolore voluptates esse atque voluptate.
							Dolorum libero mollitia et temporibus nulla rem, sit animi. Sed
							harum, impedit laudantium dolores laboriosam cumque sit nam
							mollitia eos, fugit voluptatibus nobis quod id repudiandae
							provident officia consequatur ad perspiciatis minus eveniet
							perferendis. Dignissimos fugit eveniet eius culpa. Repellendus
							nemo sunt officiis cum corrupti provident voluptate similique,
							fugit laborum, earum dolore ad dicta excepturi. Unde fugiat ipsam
							dolore provident maiores quos cumque odit iure inventore. Dolor,
							placeat? Non. Lorem ipsum dolor sit amet consectetur adipisicing
							elit. Illum tempore unde in voluptate quasi veniam beatae at
							doloremque nobis reiciendis earum odit eveniet architecto, omnis
							ad fugiat vitae alias quas?</span> <span class="more-text">더보기</span>
                <span class="less-text">줄이기</span>      
            </div>
            </div>
            <div>
             <p>이미지</p>
            </div>
        </div>
      </div>
      </div>
      <div style="display: flex;">
      <div class="ticket-container1">
        <div class="ticket1">
            <div class="ticket-icon">  
            </div>
            <div class="ticket-info">
                <h2>선택한티켓의 설명</h2>
            </div>
        </div>
      </div>
      <div class="ticket-container1">
        <div class="ticket2">
            <div class="ticket-info">
                <h2>좌석 배치도</h2>
              </div>
              <div class="ticket-icon"> 
                <img src="../IMG/사격.png" alt="">
              </div>
        </div>
      </div>
      </div>

      <div class="ticket-container">
        <div class="ticket3">
            <div class="ticket-icon"></div>
            <div class="ticket-info">
                <h1>티켓 A</h1>    
            </div>
            <div class="itembu">
                <div class="control">
                    <button id="minus" class="butt">-</button>
                    <input type="number" id="quantity" value="1" min="1" class="quantity" readonly />
                    <button id="plus" class="butt">+</button>
                </div>
                <div class="price">
                    <p>TotalPrice : <span id="totalPrice">500</span> Won ₩</p>
                    <br>
                    <button type="submit" class="ticket-pay">티켓구매</button>
                </div>
            </div>
        </div>
    </div>
    
    <div class="ticket-container">
        <div class="ticket3">
            <div class="ticket-icon"></div>
            <div class="ticket-info">
                <h1>티켓 B</h1>    
            </div>
            <div class="itembu">
                <div class="control">
                    <button id="minus1" class="butt">-</button>
                    <input type="number" id="quantity1" value="1" min="1" class="quantity" readonly />
                    <button id="plus1" class="butt">+</button>
                </div>
                <div class="price">
                    <p>TotalPrice : <span id="totalPrice1">400</span> Won ₩</p>
                    <br>
                    <button type="submit" class="ticket-pay">티켓구매</button>
                </div>
            </div>
        </div>
    </div>
    
    <div class="ticket-container">
        <div class="ticket3">
            <div class="ticket-icon"></div>
            <div class="ticket-info">
                <h1>티켓 C</h1>    
            </div>
            <div class="itembu">
                <div class="control">
                    <button id="minus2" class="butt">-</button>
                    <input type="number" id="quantity2" value="1" min="1" class="quantity" readonly />
                    <button id="plus2" class="butt">+</button>
                </div>
                <div class="price">
                    <p>TotalPrice : <span id="totalPrice2">300</span> Won ₩</p>
                    <br>
                    <button type="submit" class="ticket-pay">티켓구매</button>
                </div>
            </div>
        </div>
    </div>
    <br><br><br>
	<div class="function">
		<a href="<%=request.getContextPath()%>/accom">숙소</a>
		<a href="<%=request.getContextPath()%>/rest">식당</a>
		<a href="<%=request.getContextPath()%>/goods">굿즈</a>
	</div>
	<br><br>
	<div id="black">
		<p>안녕</p>
		<div id="top">
			<div class="bottom">
				<a href="https://www.instagram.com/kh_iei/"> <i
					class="fa-brands fa-instagram"></i></a>
			</div>
			<div class="bottom">
				<a href="https://www.facebook.com/khacademy1998/"> <i
					class="fa-brands fa-facebook"></i></a>
			</div>
			<div class="bottom">
				<a href="https://khedu.co.kr/main/main.kh">KH</a>
			</div>
			<div class="bottom">
				<a href="#"><i class="fa-brands fa-github"> </i></a>
			</div>
		</div>
	</div>
    <!-- SCRIPTS -->
	<script src="${pageContext.request.contextPath}/js/sport.js"></script>
</body>
</html>