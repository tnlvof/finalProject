<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<meta charset="UTF-8">

<!-- header -->
<jsp:include page="/WEB-INF/views/common/header.jsp"/>

<style>
#sign {
	width: 440px;
	height: 555px;
	text-align: center;
	margin:0 auto;
	background-color:white;
}

.input {
	width: 390px;
	height: 47px;
	border: 1px solid #CCCCCC;
	padding-left: 10px;
}

#userId {
	margin-top: 50px;
}

.button {
	margin: 20px;
	width: 390px;
	height: 47px;
}

hr {
	margin-top: 20px;
	margin-bottom: 20px;
}

#title {
	font-size: 25px;
	font-weight: bold;
	margin-top: 100px;
}

.loginBtn {
	background: #ff5a5f; 
}

#joinBtn {
	background: white;
	border: 1px solid #ff5a5f;
	color: #ff5a5f;
}

#sign>.body>div>.forgot {
	font-size: 12px;
	color: #969696;
	text-align: center;
	margin-top: 5px;
	margin-bottom: 39px;
}

#sign>.body>div>.forgot>a {
	color: #c91b3c;
	cursor: pointer;
}

a {
	text-decoration: none;
}
</style>

<!-- css or js파일 연결 시키는 곳 -->

<div class="container">
   <div id="sign">
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

				<hr>
				<button id="joinBtn" type="button" class="change button">회원가입</button>
			</div>

		</div>
	</div>
	<!-- login_body -->
</div>
<!-- container -->



<!-- footer -->
<jsp:include page="/WEB-INF/views/common/footer.jsp"/>