// 아이디 정규식
function regId() {
	var regId = /^[a-z][a-z0-9_-]{5,11}$/;

	if(regId.test($("#storeId").val())) $(".idCheck").html(" ");
	else $(".idCheck").html('<p class="overlap isDis">아이디는 영어 소문자로 시작하고 6~20자 영문자 또는 숫자이어야합니다.</p>');
}

//아이디 중복체크
$(function(){
	$("#storeId").focusout(function(){
		var checkId = $('#storeId').val();
		
		$.ajax({
			url: 'idCheck.me',
			method: 'post',
			data: {checkId:checkId},
			dataType:'text',
			success: function(data){
				console.log(data);
				if(jQuery.trim(data) == "false") $(".idCheck").html('<p class="overlap">아이디가 중복됩니다.</p>');
				else $(".idCheck").html('<p class="usable">사용할 수 있는 아이디입니다.</p>');
				
			},
			error:function(request,status,error){                                                      
        	    alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
	        }   
		});
	});
});
	


//비밀번호 정규식
function regPwd() {
	var regPwd = /^.*(?=^.{8,15}$)(?=.*\d)(?=.*[a-zA-Z])(?=.*[!@#$%^&+=]).*$/;

	if(regPwd.test($("#pwd").val())){
		$('.pwdCheck').html(" ");
	} else{
		$('.pwdCheck').html("<p class='overlap'>비밀번호는 8자 이상, 하나 이상의 숫자 및 특수문자를 포함해야합니다.</p>");
	}
	
}

//비밀번화 일치 여부
$(function() {
	$('#pwd2').keyup(function() {
		if($('#pwd').val() != $('#pwd2').val()){
			$('.pwdCheck').text('');
			$('.pwdCheck').html("<p class='overlap'>비밀번호가 일치하지 않습니다.</p>");
		} else{
			$('.pwdCheck').text('');
			$('.pwdCheck').html("<p class='usable'>비밀번호가 일치합니다.</p>");
		} 
	});
});
