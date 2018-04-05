<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>맛있는 발견의 즐거움 - Fooding</title>
<link rel="stylesheet" href="resources/css/reset.css">
<link rel="stylesheet" href="resources/css/common.css">
<style>
#sign {
	width: 440px;
	height: 555px;
	background-color: white;
	display: table-cell;
	vertical-align: middle;
	text-align: center;
}

input {
	width: 390px;
	height: 47px;
	border: 1px solid #CCCCCC;
	padding-left: 10px;
}

#userId {
	margin-top: 50px;
}

button {
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
}

#loginBtn {
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
</head>
<body>
	<div id="sign">
		<div class="body">
			<div class="login active">
				<p id="title">로그인</p>

				<form novalidate="">
					<input type="text" id="userId" name="userId" placeholder="아이디"
						required=""> <input type="password" name="password"
						placeholder="비밀번호" required="">

					<button class="login" id="loginBtn">로그인</button>
				</form>
				<p class="forgot">
					비밀번호가 기억나지 않으세요? <a>재설정하기</a>
				</p>

				<hr>
				<button id="joinBtn" type="button" class="change">회원가입</button>
			</div>

		</div>
	</div>
	<!-- login_body -->
</body>
</html>