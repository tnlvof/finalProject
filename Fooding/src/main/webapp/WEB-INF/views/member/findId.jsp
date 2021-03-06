<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<meta charset="UTF-8">

<title>맛있는 발견의 즐거움 - Fooding</title>


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


#forgot_id>.body>.description {

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
	border-radius:3px;
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
			<p id="title">아이디 찾기</p>
			<hr>
			<p class="description">
				가입하신 계정의 이메일을 입력해주세요.<br><br>
				
			</p>


				<input type="email" id="email" name="email"
					placeholder="이메일" required><br><br><br>
		

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
  		  					alert('실패');
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