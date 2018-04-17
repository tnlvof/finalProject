<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!-- header -->
<jsp:include page="/WEB-INF/mobile/views/common/header.jsp"/>

<link rel="stylesheet" href="/fooding/resources/css/m/setting/setting.css" />

<header data-role="header" class="header">
	<!-- 뒤로가기 -->
	<button type="button" id="go-back">&lt;</button>
	
	<h2>설정 및 관리</h2>
</header>

	<div class="wrap">
		<div class="userInfo">
			<div class="photo">
				<img src="/fooding/resources/images/common/no-image.png">
				여긴 다시 작성할 것
			</div>
		</div>
		<!-- userInfo -->
		
		<div class="user-setting setting-content">
			<h3>계정설정</h3>
			<ul>
				<li>이름 변경 <span class="name">이우인</span></li>
				<li>이메일 변경 <span class="name">wooin@kh.or.kr</span></li>
				<li>비밀번호 변경 </li>
			</ul>
		</div>
		<!-- user-setting -->
		
		<div class="guide setting-content">
			<h3>이용안내</h3>
			<ul>
				<li>공지사항</li>
				<li>자주 묻는 질문</li>
				<li>1:1 문의</li>
				<li>회원탈퇴</li>
			</ul>
		</div>
		<!-- guide -->
		
		<button type="button" class="logout">
			로그아웃
		</button>
	</div>
	<!-- wrap -->

<script>
//뒤로가기
$(document).ready(function() {
	$('#go-back').click(function() {
		parent.history.back();
		return false;
	});
});
</script>