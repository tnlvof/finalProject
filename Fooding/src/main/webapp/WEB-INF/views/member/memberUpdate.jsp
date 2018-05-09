<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<meta charset="UTF-8">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">

<!-- header -->
<jsp:include page="/WEB-INF/views/common/header.jsp"/>

<link rel="stylesheet" href="/fooding/resources/css/myPage.css">
<link rel="stylesheet" href="/fooding/resources/css/storePage.css">

<div class="container" id="container">
	<jsp:include page="/WEB-INF/views/myPage/myPageBanner.jsp" />
	<div id="content_wrap">
		<div id="content" class="mypage">
			<ul class="tab">
				<li class="item" onclick="location.href='goMyPage.me'">정보 입력</li>
				<li class="item" onclick="location.href='goMyPageReview.me'">리뷰</li>
				<li class="item" onclick="location.href='goMyPageQuestions.bo'">1:1 문의</li>
			</ul>
			<div id="reservation" class="body empty">
				<div class="filter">
<!-- 					<a href="#" class="">방문 예정 예약</a> <a
						href="#" class="">지나간 예약</a> -->
				</div>
				
				<!-- 예약화면 -->
				<div class="list">
<!-- /*********************************************/ -->

<div class="memberUpdate" align="center">
	<form class="memberUpdate" action="memberUpdate.me" method="post">
		<ul class="storeInfotable">
			<li>
				<label>아이디</label>
				<input type="text" name="userId" readonly="readonly" value="${loginUser.userId}">
			</li>
				
			<li>
				<label>이름</label>
				<input type="text" name="userName" readonly="readonly" value="${loginUser.userName}">
			</li>
			<li>	
				<label>이메일</label>
				<input type="text" name="email" value="${loginUser.email}">
			</li>
			<li>	
				<label class="must">패스워드</label>
				<input type="password" id="pwd" name="userPwd" placeholder="비밀번호를 입력하세요">
			</li>
			<li>	
				<label>패스워드 확인</label>
				<input type="password" id="pwd2" name="userPwd2" placeholder="비밀번호를 다시 입력하세요">
			</li>			
			<!-- <div class="pwdCheck">
				
					정규식 조건에 맞춰 아래의 내용 변경할 것 
				
				<p class="alarm overlap" id="pwdDis">비밀번호는 8자 이상, 하나 이상의 숫자 및 특수문자를 포함해야합니다.</p>
				<p class="alarm overlap" id="pwdDupl">비밀번호가 일치하지 않습니다.</p>
				<p class="alarm usable" id="pwdUse">비밀번호가 일치합니다.</p>
			</div>		 -->	
			<li>	
				<label>생년월일</label>
				<input type="text" name="birth" readonly="readonly" value="${loginUser.birth}">
			</li>
			
			<li>	
				<label>성별</label>
				<input type="text" name="gender" readonly="readonly" value="${loginUser.gender}">
			</li>
		</ul>
		<!--  -->
		
		<div class="btn-box">
			<button type="submit">수정하기</button>
			<button type="reset">목록으로</button>   
		</div>
	</form>
</div>


					<!-- /*********************************************/ -->
				</div>
			</div>
		</div>
		<jsp:include page="/WEB-INF/views/myPage/myPageSidebar.jsp" />
	</div>
</div>
<!-- container -->

<!-- footer -->
<jsp:include page="/WEB-INF/views/common/footer.jsp"/>