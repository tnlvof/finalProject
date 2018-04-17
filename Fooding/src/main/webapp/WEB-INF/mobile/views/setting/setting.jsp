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
			<div class="photo filebox bs3-primary preview-image">
				<div class="upload-display">
					<div class="upload-thumb-wrap">
						<img src="/fooding/resources/images/common/no-image.png">
					</div>
				</div>
				
				<!-- 현재 프로필인 사진 경로 -->
				<input class="upload-name" value="파일선택" disabled="disabled">
				<label for="input_file">사진<br>변경</label>
				<input type="file" id="input_file" class="upload-hidden">

			</div><!-- photo -->
			
			<div class="info">
				<p>이우인</p>
				<p>wooin@kh.or.kr</p>
			</div><!-- info -->
		</div>
		<!-- userInfo -->
		
		<div class="user-setting setting-content">
			<h3>계정설정</h3>
			<ul>
				<li onclick="changeName()">이름 변경  <span class="set-btn">이우인</span></li>
				<li onclick="changeEmail()">이메일 변경  <span class="set-btn">wooin@kh.or.kr</span></li>
				<li onclick="changePwd()">비밀번호 변경 <span class="set-btn"></span> </li>
			</ul>
		</div>
		<!-- user-setting -->
		
		<div class="guide setting-content">
			<h3>이용안내</h3>
			<ul>
				<li>공지사항</li>
				<li>자주 묻는 질문</li>
				<li onclick="ask()">1:1 문의</li>
				<li onclick="leave()">회원탈퇴</li>
			</ul>
		</div>
		<!-- guide -->
		
		<button type="button" class="logout">
			로그아웃
		</button>
	</div>
	<!-- wrap -->
	
	<!-- modal창 -->
	<jsp:include page="/WEB-INF/mobile/views/setting/setModal.jsp"/>

	<script src="/fooding/resources/js/setting.js"></script>