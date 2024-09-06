<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
@font-face {
  src: url("/fonts/Paris2024-Variable.ttf");
  font-family: "Binggrae";
}
#Binggrae_font {
  font-family: "Binggrae";
}
#header {
  background-color: black;
  display: flex;
  justify-content: space-between;
  align-items: center;
  height: 80px;
  width: 100%;
  padding-left: 30px;
  font-optical-sizing: auto;
  font-family: "Gowun Batang", serif;
  font-weight: 400;
  font-style: normal;
  font-size:1.5rem;
}
#KHTRAVEL {
  color: white;
  font-size: 2rem;
}
#login {
  color: white;
  font-size: 1.3rem;
  padding-right: 130px;
  font-family: "Gowun Batang", serif;
  font-weight: 500;
  font-style: normal;
  
}
#login a {
  color: white;
  font-size: 1.3rem;
}
#sign {
  color: white;
  font-size: 1.3rem;
  padding-right: 150px;
  font-family: "Gowun Batang", serif;
  font-weight: 400;
  font-style: normal;
}
a {
  text-decoration: none;
  font-size: 2rem;
  color: white;
}
#loginbutton {
  height: 30px;
  color: rgb(155, 108, 108);
}
#kh {
  color: white;
  padding-left: 30px;
  font-size: 3rem;
}
li {
  list-style: none;
}
a {
  text-decoration: none;
  font-size: 14px;
}
.menu {
  position: fixed;
  right: 20px;
  width: 30px;
  overflow: hidden;
  margin: 150px auto;
  bottom: 480px;
  height: 300px;
  width: 100px;
  overflow: hidden;
  margin: 150px auto;
}
.menu > li {
  width: 20%; /*20*5=100%*/
  float: left;
  text-align: center;
  line-height: 40px;
  background-color: #000000;
  font-family: "Sunflower", sans-serif;
  font-weight: 500;
  font-style: normal;
}
.menu a {
  color: #fff;
}
.submenu > li {
  line-height: 50px;
  background-color: #000000;
}
.submenu {
  height: 0; /*ul의 높이를 안보이게 처리*/
  overflow: hidden;
}
.menu > li:hover {
  background-color: #000000;
  transition-duration: 0.5s;
}
.menu > li:hover .submenu {
  height: 170px; /*서브메뉴 li한개의 높이 50*5*/
  transition-duration: 1s;
}
.menu > li {
  width: 100%;
  text-align: center;
  line-height: 40px;
  background-color: #000000;
}
</style>
</head>
<body>
	<header id="header">
      <div id="Binggrae_font">
        <a href="/" id="KHTRAVEL">KHTRAVEL</a>
      </div>
      <ul class="menu">
          <li>
            <a href="#">☰</a>
            <ul class="submenu">
              <li><a href="/reservation">예약</a></li>
					<li><a href="/review">리뷰</a></li>
					<li><a href="/goods">굿즈</a></li>
          </ul>
      </li>
     </ul>
    </header>
</body>
</html>