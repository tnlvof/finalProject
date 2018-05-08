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

.description {
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



#title {
	font-size: 25px;
	font-weight: bold;
}
</style>

<div class="container" style="    padding-bottom: 0px;"> 
	<div id="forgot_password">
		<i class="icon popup_close" data-close=""></i>
		<div class="body custom">
			<p id="title">아이디 찾기</p>
			<hr>
			<p class="description">
				가입하신 계정의 이메일을 입력해주세요.<br>
				
			</p>

			
				<input type="email" id="email" name="email"
					placeholder="이메일" required><br>
				<p class="notice">가입시 입력하신 이메일로 임시 비밀번호를 발송합니다.</p>

				<button id="resetPwd">아이디 찾기</button>
			
			
			<script type="text/javascript">
			$("#resetPwd").click(function(){
			
				var email = $("#email").val();
				
				if(email == ""){
					alert('항목들을 빠짐없이 채워주세요.')
				} else {
					
					
				var data = { email:email};
					
					$.ajax({
				 		
  		  				method:"post",
  		  				url:"findId.me",
  		  				data: JSON.stringify(data),  
  		  				contentType:"application/json",
  		  				success:function(data){
  		  					/* alert('넘어감.'); */
  		  					
  		  					alert(data.msg);
  		  					
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