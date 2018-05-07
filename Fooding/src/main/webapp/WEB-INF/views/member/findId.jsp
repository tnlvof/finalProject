<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<meta charset="UTF-8">
<title>맛있는 발견의 즐거움 - Fooding</title>

<link rel="stylesheet" href="resources/css/reset.css">
<link rel="stylesheet" href="resources/css/common.css">

<!-- header -->
<jsp:include page="/WEB-INF/views/common/header.jsp"/>

<style>
#findIdBtn {
	margin: 20px;
	width: 390px;
	height: 47px;
	background: #ff5a5f;
}

#forgot_id {
margin:30 auto;
	width: 440px;
	height: 555px;
	background-color: #f9f9f9;
	
	vertical-align: middle;
	text-align: center;
}

#forgot_id>.body>.description {
	font-size: 14px;
	color: #646464;
	margin-top: 22px;
	margin-bottom: 31px;
	text-align: center;
	line-height: 20px;
}

#email {
	
}

input {
	width: 390px;
	height: 47px;
	border: 1px solid #CCCCCC;
	padding-left: 10px;
}

#forgot_forgot_id>.body>form>.notice {
	font-size: 11px;
	color: #969696;
	margin-top: 5px;
	margin-bottom: 36px;
}

#title {
	font-size: 25px;
	font-weight: bold;
}

#findIdBtn{
border:none;
	border-radius:3px;
}

#findIdBtn:hover{
	cursor:pointer;
	
}
</style>
<div id="container"  style="    padding-bottom: 0px;">
	<div id="forgot_id">
		<div class="body custom">
			<p id="title">아이디 찾기</p>
			<hr>
			<p class="description">
				가입하신 계정의 이메일을 입력해주세요.<br>
			</p>

			
				<input type="email" id="email" name="email" placeholder="이메일"
					required>
				<p class="notice">공지사항 넣을거면 넣기</p>

				<button id="findIdBtn">아이디 찾기</button>
			
		</div>
	</div>
	</div>

<!-- footer -->
<jsp:include page="/WEB-INF/views/common/footer.jsp"/>
</html>