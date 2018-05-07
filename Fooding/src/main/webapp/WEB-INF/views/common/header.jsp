<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>맛있는 발견의 즐거움 - Fooding</title>
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="/fooding/resources/css/reset.css">
<link rel="stylesheet" href="/fooding/resources/css/common.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script> 
</head>

<body>
	<c:set var="contextPath" value="${ pageContext.servletContext.contextPath }" scope="application"/>
	
	<div id="header" class="header">
		<div class="wrap">
			<h1 class="logo" onclick="location.href='goMain.me'">Fooding</h1>
			
			<form action="searchResult.st" method="get">
				<input type="search" name="searchKey" placeholder="지역을 검색하세요">
				<button type="submit" class="srch-btn">검색</button>
			</form>
         
         <div class="loginArea">
         	<c:if test="${ empty loginUser }">
	            <ul>
	               <li onclick="document.getElementById('id01').style.display='block'">로그인</li>
	               <li> &nbsp; | &nbsp; </li>
	               <li onclick="document.getElementById('id01').style.display='block'">회원가입</li>
	            </ul>
			</c:if>
			
			<c:if test="${ !empty loginUser }">
				<c:if test="${ loginUser.mCode == '일반' }">
	            <div class="dropdown" style="display: block;">
	               <div class="user-profile" onclick="location.href='goMyPage.me'">
								<c:choose>
									<c:when test="${ empty loginUser.profile }">
										<img src="/fooding/resources/images/common/no-image.png">
									</c:when>
									<c:otherwise>
										<img src="/fooding/resources/images/member/${ loginUser.profile }">
									</c:otherwise>
								</c:choose>
							</div>
	               <ul class="dropdown-content">
	                  <li onclick="location.href='goMyPage.me'">예약</li> 
	                  <li onclick="location.href='goMyPageReview.me'">리뷰</li>
	                  <li onclick="location.href='goMyPageQuestions.me'">1:1문의</li>
	                  <li onclick="location.href='goMyPage.me'">설정</li>
	                  <li onclick="location.href='logout.me'">로그아웃</li>
	               </ul>
	            </div>
	            <!-- dropdown -->
	            </c:if>
	            
	            <c:if test="${ loginUser.mCode == '업체' }">
	            <div class="dropdown" style="display: block;">
	               <div class="user-profile" onclick="location.href='goMyPage.me'">
								<c:choose>
									<c:when test="${ empty loginUser.profile }">
										<img src="/fooding/resources/images/common/no-image.png">
									</c:when>
									<c:otherwise>
										<img
											src="/fooding/resources/images/member/${ loginUser.profile }">
									</c:otherwise>
								</c:choose>
							</div>
	               <ul class="dropdown-content">
	                  <li>가게정보</li>
	                  <li>예약</li>
	                  <li>리뷰</li>
	                  <li>쿠폰</li>
	                  <li>1:1문의</li>
	                  <li>설정</li>
	                  <li onclick="location.href='logout.me'">로그아웃</li>
	               </ul>
	            </div>
	            <!-- dropdown -->
	            </c:if>
	             
	            <c:if test="${ loginUser.mCode == '관리자' }">
	            <div class="dropdown" style="display: block;">
	               <div class="user-profile" onclick="location.href='goAdminMain.me'"><img src="/fooding/resources/images/common/no-image.png"></div>
	               <ul class="dropdown-content">
	                  <li onclick="location.href='logout.me'">로그아웃</li>
	               </ul>
	            </div>
	            <!-- dropdown -->
	            </c:if>
			</c:if>
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
	
	<div id="id01" class="w3-modal">

      <div id="sign">
      	<img src="${contextPath }/resources/images/common/closeButton.png" width="15" height="15" align="right" class="xBtn"
      	onclick="document.getElementById('id01').style.display='none'">
		<div class="body">
			<div class="login active">
				<p id="title">로그인</p>

				<form id="loginForm" action="login.me" method="post">
					<input type="text" id="userId" name="userId" placeholder="아이디" required class="input"> 
					<input type="password" id="userPwd" name="userPwd" placeholder="비밀번호" required class="input">

					<button type="submit" id="loginCheck" class="button loginBtn">로그인</button>
					
				</form>
				<p class="forgot">
					비밀번호가 기억나지 않으세요? <a>재설정하기</a>
				</p>

				<hr class="hr">
				<button id="joinBtn" type="button" class="change" onclick="location.href='goMemberJoin.me'">일반 회원가입</button>
				<button id="joinBtn" type="button" class="change" onclick="location.href='goStoreJoin.me'">업체 회원가입</button>
			</div><!-- login -->
		</div>
	</div>
	<!-- login_body -->

	</div>

	<c:if test="${ !empty loginFail }">
	
	<div id="id02" class="w3-modal" style="display:block;">

      <div id="sign">
      	<img src="${contextPath }/resources/images/common/closeButton.png" width="15" height="15" align="right" class="xBtn"
      	onclick="document.getElementById('id02').style.display='none'">
		<div class="body">
			<div class="login active">
				<p id="title">로그인</p>

				<form id="loginForm" action="login.me" method="post">
					<input type="text" id="userId" name="userId" placeholder="아이디" required class="input"> 
					<input type="password" id="userPwd" name="userPwd" placeholder="비밀번호" required class="input">
					<p style="color:red;padding-top:15px;">${ loginFail }</p>
					<button type="submit" id="loginCheck" class="button loginBtn">로그인</button>
				</form>
				<p class="forgot">
					비밀번호가 기억나지 않으세요? <a>재설정하기</a>
				</p>

				<hr class="hr">
				<button id="joinBtn" type="button" class="change" onclick="location.href='goMemberJoin.me'">일반 회원가입</button>
				<button id="joinBtn" type="button" class="change" onclick="location.href='goStoreJoin.me'">업체 회원가입</button>
			</div><!-- login -->
		</div>
	</div>
	<!-- login_body -->

	</div>	
			
	</c:if>	

	<!-- 로그아웃 확인창 -->
	<!-- <div id="reservCancel" class="w3-modal">
		<div class="w3-modal-content">
			<div class="w3-container">
				<div class="confirmBackground" style="display: block;"></div>
				<div id="default" class="confirmPopup"
					style="padding: 20px 40px; margin-left: -110.5px; margin-top: -26.5px; display: block;">
					<div class="confirmMessage">예약을 취소하시겠습니까?</div>
				</div>
				<div class="confirmNo"
					style="margin-left: -110.5px; margin-top: 28.5px; width: 108.5px; display: block;"
					onclick="document.getElementById('reservCancel').style.display='none'">아니오</div>
				<div class="confirmOk"
					style="margin-left: 1px; margin-top: 28.5px; width: 108.5px; display: block;">예</div>
			</div>
		</div>
	</div> -->