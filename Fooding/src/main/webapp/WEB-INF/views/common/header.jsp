<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>맛있는 발견의 즐거움 - Fooding</title>
<link rel="stylesheet" href="/fooding/resources/css/reset.css">
<link rel="stylesheet" href="/fooding/resources/css/common.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
</head>
<style>
.profile_image{
	width: 37px;
    height: 37px;
    background-size: cover;
    background-position: center center;
}
.border_radius.circle{
	border-radius: 50%;
}
.nav_user{
	float: right;
	margin-top: 13px;
}
</style>
<body>
	<c:set var="contextPath" value="${ pageContext.servletContext.contextPath }" scope="application"/>
	
	<div id="header" class="header">
		<div class="wrap">
			<h1 class="logo"><a href="#">Fooding</a></h1>
			<form action="" method="post">
				<input type="search" name="search" placeholder="지역,음식 종류 등 검색하세요">
				<button type="submit" class="srch-btn">검색</button>
			</form>
			
			<c:if test="${ empty loginUser }">
			<div class="loginArea">
				<ul>
					<li onclick="document.getElementById('id01').style.display='block'">로그인</li>
					<li> &nbsp; | &nbsp; </li>
					<li>회원가입</li>
				</ul>
			</div>
			</c:if>
			<c:if test="${ !empty loginUser }">
			<div class="nav_user">
				<div class="nav_profile">
					<div class="i_wrap">
						<i class="profile_image border_radius circle"
						style="background-image:url(${contextPath}/resources/images/common/no-data.png)"></i>
					</div>
				</div>
			</div>
			</c:if>
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
	
  <div id="id01" class="w3-modal">

      <div id="sign">
      	<img src="${contextPath }/resources/images/common/closeButton.png" width="15" height="15" align="right" class="xBtn"
      	onclick="document.getElementById('id01').style.display='none'">
		<div class="body">
			<div class="login active">
				<p id="title">로그인</p>

				<form action="login.me" method="post">
					<input type="text" id="userId" name="userId" placeholder="아이디"
						required="" class="input"> 
					<input type="password" name="userPwd"
						placeholder="비밀번호" required="" class="input">

					<button type="submit" id="loginBtn" class="button loginBtn">로그인</button>
				</form>
				<p class="forgot">
					비밀번호가 기억나지 않으세요? <a>재설정하기</a>
				</p>

				<hr class="hr">
				<button id="joinBtn" type="button" class="change button">회원가입</button>
			</div>
		</div>
	</div>
	<!-- login_body -->

</div>
