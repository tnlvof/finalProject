<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

	<!-- 이름변경 modal창 -->
	<div id="change-name" class="w3-modal w3-animate-opacity">
		<div class="w3-modal-content w3-card-4 change-name">
			<h5>이름 변경</h5>
			<p>이름을 입력해주세요</p>
			<input type="text">
			
			<button type="submit" class="modal-btn change-name-btn">변경완료</button>
			<button type="button" onclick="closeModal()" class="modal-close">&lt;</button>
		</div>
	</div>
	
	<!-- 이메일변경 modal창 -->
	<div id="change-email" class="w3-modal w3-animate-opacity">
		<div class="w3-modal-content w3-card-4 change-email">
			<h5>이메일 변경</h5>
			<p>이메일을 입력해주세요</p>
			<input type="text">
			<button class="modal-btn modal-btn2">인증 번호 받기</button>
			<br><br><br>
			<p>인증번호를 입력해주세요</p>
			<input type="text">
			
			<button type="submit" class="modal-btn modal-btn2">확인</button>
			<button type="button" onclick="closeModal()" class="modal-close">&lt;</button>
		</div>
	</div>
	
	<!-- 비밀번호 변경  modal창 -->
	<div id="change-pwd" class="w3-modal w3-animate-opacity">
		<div class="w3-modal-content w3-card-4 change-pwd">
			<h5>비밀번호 변경</h5>
			<p>이메일을 입력해주세요</p>
			<input type="text">
			<button class="modal-btn modal-btn2">인증 번호 받기</button>
			<br><br><br>
			<p>인증번호를 입력해주세요</p>
			<input type="text">
			
			<p>비밀번호 변경</p>
			<input type="password" class="mb0" placeholder="현재 비밀번호">
			<input type="password" class="mt0" placeholder="새 비밀번호">
			
			<button type="submit" class="modal-btn modal-btn2">확인</button>
			<button type="button" onclick="closeModal()" class="modal-close">&lt;</button>
		</div>
	</div>
	
	<!-- 1:1문의 modal창 -->
	<div id="ask" class="w3-modal w3-animate-opacity">
		<div class="w3-modal-content w3-card-4 ask">
			<h5>1:1 문의</h5>
			<textarea placeholder="무엇을 도와드릴까요?" rows="5"></textarea>
			
			<button type="submit" class="modal-btn change-name-btn">문의하기</button>
			<button type="button" onclick="closeModal()" class="modal-close">&lt;</button>
		</div>
	</div>
	
	<!-- 신고하기 modal창 -->
	<div id="leave" class="w3-modal w3-animate-opacity">
		<div class="w3-modal-content w3-card-4 leave">
			<p>정말로 탈퇴하시겠습니까? :(</p>
			
			<button type="submit" class="modal-btns">탈퇴하기</button>
			<button type="button" onclick="closeModal()" class="close">취소</button>
		</div>
	</div>
	