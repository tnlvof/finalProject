<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>맛있는 발견의 즐거움 - Fooding</title>
<link rel="stylesheet" href="resources/css/reset.css">
<link rel="stylesheet" href="resources/css/common.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
</head>
<body>
	<c:set var="contextPath" value="${ pageContext.servletContext.contextPath }" scope="application"/>
	
	<div id="header" class="header">
		<div class="wrap">
			<h1 class="logo"><a href="#">Fooding</a></h1>
			<form action="" method="post">
				<input type="search" name="search" placeholder="지역,음식 종류 등 검색하세요">
				<button type="submit" class="srch-btn">검색</button>
			</form>
			
			<div class="loginArea">
				<ul>
					<li>로그인</li>
					<li> &nbsp; | &nbsp; </li>
					<li>회원가입</li>
				</ul>
			</div>
			<!-- loginArea -->
		</div>
		<!-- wrap -->
		
		<div class="gnb">
			<ul>
				<li>이벤트</li>
				<li>추천테마</li>
				<li>리뷰</li>
				<li>매거진</li>
			</ul>
		</div>
		<!-- gnb -->
	</div>
	<!-- header -->