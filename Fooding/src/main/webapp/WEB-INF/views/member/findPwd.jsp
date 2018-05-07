<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<meta charset="UTF-8">

<link rel="stylesheet" href="resources/css/reset.css">
<link rel="stylesheet" href="resources/css/common.css">

<!-- header -->
<jsp:include page="/WEB-INF/views/common/header.jsp"/>

<style>

#resetPwd {
	margin: 20px;
	width: 390px;
	height: 47px;
	background: #ff5a5f;
}

#forgot_password { 
	margin:30 auto;
	width: 440px;
	height: 555px;
	background-color:#f9f9f9;
	
	vertical-align: middle;
	text-align: center;
}

#forgot_password>.body>.description {
	font-size: 14px;
	color: #646464;
	margin-top: 22px;
	margin-bottom: 31px;
	text-align: center;
	line-height: 20px;
}



input {
	width: 390px;
	height: 47px;
	border: 1px solid #CCCCCC;
	padding-left: 10px;
}

#forgot_password>.body>form>.notice {
	font-size: 11px;
	color: #969696;
	margin-top: 5px;
	margin-bottom: 36px;
}

#title {
	font-size: 25px;
	font-weight: bold;
}

#resetPwd{
border:none;
border-radius:3px;
}

#resetPwd:hover{
	cursor:pointer;
	
}
</style>

<div class="container" style="    padding-bottom: 0px;"> 
	<div id="forgot_password">
		<i class="icon popup_close" data-close=""></i>
		<div class="body custom">
			<p id="title">비밀번호 재설정</p>
			<hr>
			<p class="description">
				가입하신 계정의 이메일을 입력해주세요.<br>
				임의로 설정된 새로운 비밀번호가 메일로 전송 됩니다.
			</p>

			
				<input type="text" id="userIdInput" name="userId" placeholder="아이디"
					required>
				<input type="email" id="email" name="email"
					placeholder="이메일" required><br>
				<p class="notice">가입시 입력하신 이메일로 임시 비밀번호를 발송합니다.</p>

				<button id="resetPwd" >비밀번호 재설정하기</button>
			
			
			<script type="text/javascript">
			$("#resetPwd").click(function(){
				var userId = $("#userIdInput").val();
				var email = $("#email").val();
				
				if(userId == "" || email == ""){
					alert('항목들을 빠짐없이 채워주세요.')
				} else {
					
					console.log(userId);
					console.log(email);
					var data = {userId:userId, email:email};
					$.ajax({
				 		
  		  				method:"post",
  		  				url:"resetPwd.me",
  		  				data: JSON.stringify(data),  
  		  				contentType:"application/json",
  		  				success:function(data){
  		  					/* alert('넘어감.'); */
  		  					
  		  				var a = alert(data.msg);
  		  					if(a == true){
  		  						location.href="main/main.jsp"
  		  					}
  		  				
  		  					
  		  					
  		  				},
  		  				error:function(){
  		  					alert('ㅡㅡ');
  		  				}
  		  				
  		  			}); 
					
				}
			});
			</script>
		</div>
	</div>
</div>




<!-- footer -->
<jsp:include page="/WEB-INF/views/common/footer.jsp"/>
</html>