/* 가입버튼 */

$(function(){
	var id = $("#storeId");
	var pa = $("#pwd");
	var paco = $("#pwd2");
	
	var idRegExp = /^[a-z][a-z0-9_-]{5,19}$/
	var paRegExp = /^.*(?=^.{8,15}$)(?=.*\d)(?=.*[a-zA-Z])(?=.*[!@#$%^&+=]).*$/;
	var paRegExp2 = /\d/g;
	
		$("#storeId").focusout(function(){
			var checkId = $("#storeId").val();
			if (idRegExp.test(id.val())) {
				$("#idDis").css({"display":"none"});
			    $.ajax({                                                                                       
			    	url:'idCheck.me',                                                                          
			    	method:'post',                                                                             
			    	data:{checkId:checkId},                                                                    
			    	dataType:"text",                                                                           
			    	success:function(data){                                                                    
			    		console.log(data);                                                                     
			    		if(jQuery.trim(data) =="false"){                                                                      
			    			$("#idUse").css({"display":"block"});                                              
			    			$("#idDupl").css({"display":"none"});                                              
			    		}else{                                                                                 
			    			$("#idDupl").css({"display":"block"});                                             
			    			$("#idUse").css({"display":"none"});                                               
			    		}                                                                                      
			    	},                                                                                         
			    	error:function(request,status,error){                                                      
		        	    alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
			        }                                                                                          
			    });                                                                                            
		    }else{                                                                                         
			    $("#idDis").css({"display":"block"});   
			    $("#idUse").css({"display":"none"});
		    }                                                                                              
		});
		
		$("#pwd2").focusout(function(){
			if (!paRegExp.test(pa.val()) || !(paRegExp2.test(pa.val()))) {
				$("#pwdDis").css({"display":"block"});
			    $("#pwdUse").css({"display":"none"});
			    $("#pwdDupl").css({"display":"none"});
			}else{
				$("#pwdDis").css({"display":"none"});
				if (pa.val() != paco.val()) {
					$("#pwdDupl").css({"display":"block"});
					$("#pwdUse").css({"display":"none"});
				}else{
					$("#pwdDupl").css({"display":"none"});
					$("#pwdUse").css({"display":"block"});
				}
			}
		});
		


});

function insertMember() {
	if($('#licenseNo').val()== ''){
		$('#licenseNo').select();
	}else if($('#storeName').val()== ''){
		$('#storeName').select();
	}else{
		
		if($("#ok").prop("checked")){
			$("#joinForm").submit();
			return true;
		}else{
			alert('약관에 동의해주세요');
			return false;
		}
		
	}
}

function checkBizNo(){

	var bizNo = $("#bizNo").val();

	
	 
	$.ajax({                                                                                       
    	url:'bizNo.sp',                                                                          
    	type:'post',                                                                             
    	data:{bizNo:bizNo},                                                                    
    	success:function(data){       
    		var s = data.sample;

    		$("#sbRname").val(s.sbName);
    		$("#bizName").val(s.sbRname);
    		
    		
    	},                                                                                         
    	error:function(request,status,error){                                                      
    	    alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
        }                                                                                          
    });


}



