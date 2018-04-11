<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width,initial-scale=1.0,minimum-scale=1.0,maximum-scale=1.0">
<title>맛있는 발견의 즐거움 - Fooding</title>

<link rel="stylesheet" href="http://code.jquery.com/mobile/1.4.5/jquery.mobile-1.4.5.min.css" />
<link rel="stylesheet" href="/fooding/resources/css/main.css" />
<script src="http://code.jquery.com/jquery-1.11.1.min.js"></script>
<script src="http://code.jquery.com/mobile/1.4.5/jquery.mobile-1.4.5.min.js"></script>
</head>

<body>
<section id="main" data-role="page">
	<header data-role="header" class="header">
		<h1 class="logo">Fooding</h1>
		<a href="#gnb" class="ui-btn-right" data-icon="gear" data-iconpos="notext">Menu</a>

		<nav data-role="navbar">
			<ul>
				<li><a class="ui-btn-active" data-icon="search" href="#">레스토랑 검색</a></li>
				<li><a href="#" data-icon="comment">실시간 리뷰</a></li>
				<li><a href="#" data-icon="edit">리뷰작성</a></li>
				<li><a href="#" data-icon="star">이벤트</a></li>
				<li><a href="#" data-icon="user">마이페이지</a></li>
			</ul>
		</nav>
	</header>
	
    <div data-role="panel" id="gnb" data-position="right" data-display="overlay" data-theme="a">
       <h3>메뉴</h3>
       <ul data-role="listview">
           <li></li>
           <li data-icon="power"><a href="#">로그아웃</a></li>
        </ul>
	</div>
	<!-- gnb -->


	<div class="content" data-role="content">
		
	</div>
	<!-- content -->
	
	<footer data-role="footer">
		<p>
			최고의 레스토랑을 즐기는 특별한 방법<br>
			검색부터 예약까지 한번에, Fooding
		</p>
		<ul>
			<li>대표이사 : 이종수</li>
			<li>사업자등록번호 : 000-00-0000</li>
			<li>통신판매업 신고 번호 : 2018-서울강남-0000</li>
			<li>서울특별시 강남구 테헤란로 14길 6 남도빌딩 2-5F</li>
			<li>대표번호 : 1544-9970</li>
			<li>이메일 : fooding@kh.co.kr</li>
			<li>Copyrightⓒ 2018 Fooding Final Project.,Ltd. All rights reserved</li>
		</ul>
	</footer>
</section>
	
</body>
</html>