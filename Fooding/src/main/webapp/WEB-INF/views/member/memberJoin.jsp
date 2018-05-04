<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<meta charset="UTF-8">


<!-- header -->
<jsp:include page="/WEB-INF/views/common/header.jsp" />
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

<link rel="stylesheet" href="/fooding/resources/css/join.css">

<div class="container">
	<div class="join">
		<form id="joinForm" class="join_form" action="memberJoin.me" method="post">
			<div class="basic">

				<h3>일반 회원가입</h3>
				<p class="subtitle">가입 정보 입력</p>

				<div class="join_wrap">
					
					<!-- 아이디 -->
					<label class="must">아이디</label>
					<input type="text" name="userId" id="id" class="userId" placeholder="아이디를 입력하세요" required />
					<div class="idCheck">
						<!-- 
							정규식 조건에 맞춰 아래의 내용 변경할 것 
						 -->
						<p class="alarm overlap" id="idDis">아이디는 영어 소문자로 시작하고 6~20자 영문자 또는 숫자이어야합니다.</p>
						<p class="alarm overlap" id="idDupl">아이디가 중복됩니다.</p>
						<p class="alarm usable" id="idUse">사용할 수 있는 아이디입니다.</p>
					</div>
					
					<!-- 비밀번호/비밀번호 확인 -->
					<label class="must">비밀번호</label>
					<input type="password" id="pwd" name="userPwd" placeholder="비밀번호를 입력하세요" required />
					<label class="must">비밀번호 확인</label>
					<input type="password" id="pwd2" name="userPwd2" placeholder="비밀번호를 다시 입력하세요" required />
					<div class="pwdCheck">
						<!-- 
							정규식 조건에 맞춰 아래의 내용 변경할 것 
						 -->
						<p class="alarm overlap" id="pwdDis">비밀번호는 8자 이상, 하나 이상의 숫자 및 특수문자를 포함해야합니다.</p>
						<p class="alarm overlap" id="pwdDupl">비밀번호가 일치하지 않습니다.</p>
						<p class="alarm usable" id="pwdUse">비밀번호가 일치합니다.</p>
					</div>
					
					<!-- 이름 -->
					<label class="must">이름</label>
					<input type="text" name="userName" id="userName" placeholder="이름을 입력하세요" required />
					
					<!-- 생년월일 -->
					<label class="must">생년월일</label>
					<br>
					<input type="number" name="birth" id="birth1" min="1900" max="2018" placeholder="생년 (4자)" maxlength="4" required /> 
					<input type="number" name="birth" id="birth2" min="01" max="12" placeholder="월" value="" maxlength="2"  required/> 
					<input type="number" name="birth" id="birth3" min="01" max="31" placeholder="일" value="" maxlength="2" required />
					
					<!-- 성별 -->
					<label>성별</label>
					<br>
					<button type="button" id="gender_female" class="gender">여자</button>
					<button type="button" id="gender_male" class="gender">남자</button>
					<input type="hidden" value="" name="gender" id="gender">
					
					<!-- 이메일 -->
					<label>이메일</label>
					<input type="text" name="email" placeholder="이메일을 입력하세요"/>
					
				</div>
				<!-- join_wrap -->


				<div class="agre-wrap">
					<p class="subtitle">약관동의</p>
					<div class="agree-content">
						가. 수집하는 개인정보의 항목첫째, Fooding은 회원가 입, 원활한 고객상담, 각종 서비스의 제공을 위해 최초 회원가입 당시
						아래와 같은 최소한의 개인정보를 필수항목으로 수집하고 있습니다.<br> <br> 회원가입<br>
						- 이름, 생년월일, 성별, 아이디, 비밀번호, 별명, 연락처(메일주소, 휴대폰 번호 중 선택), 가입인증정보<br>
						만14세 미만 아동 회원가입<br> - 이름, 생년월일, 성별, 법정대리인 정보, 아이디, 비밀번호, 연락처
						(메일주소, 휴대폰 번호 중 선택), 가입인증정보<br> <br> 단체아이디 회원가입<br>
						- 단체아이디, 회사명, 대표자명, 대표 전화번호, 대표 이메일 주소, 단체주소, 관리자 아이디, 관리자 연락처,
						관리자 부서/직위<br> - 선택항목 : 대표 홈페이지, 대표 팩스번호<br> <br>
						둘째, 서비스 이용과정이나 사업처리 과정에서 아래와 같은 정보들이 자동으로 생성되어 수집될 수 있습니다.<br>
						- IP Address, 쿠키, 방문 일시, 서비스 이용 기록, 불량 이용 기록<br> <br>
						셋째, fooding 아이디를 이용한 부가 서비스 및 맞춤식 서비스 이용 또는 이벤트 응모 과정에서 해당 서비스의
						이용자에 한해서만 개인정보 추가 수집이 발생할 수 있으며, 이러한 경우 별도의 동의를 받습니다.<br> <br>
						넷째, 성인컨텐츠, 유료/게임 등 일부 서비스 이용시 관련 법률 준수를 위해 본인인증이 필요한 경우, 아래와 같은
						정보들이 수집될 수 있습니다.<br> - 이름, 생년월일, 성별, 중복가입확인정보(DI), 암호화된 동일인
						식별정보(CI), 휴대폰 번호(선택), 아이핀 번호(아이핀 이용시), 내/외국인 정보<br> <br>
						다섯째, 유료 서비스 이용 과정에서 아래와 같은 결제 정보들이 수집될 수 있습니다.<br> - 신용카드 결제시
						: 카드사명, 카드번호 등<br> - 휴대전화 결제시 : 이동전화번호, 통신사, 결제승인번호 등<br>
						- 계좌이체시 : 은행명, 계좌번호 등<br> - 상품권 이용시 : 상품권 번호<br> <br>
						나. 개인정보 수집방법회사는 다음과 같은 방법으로 개인정보를 수집합니다.<br> - 홈페이지, 서면양식,
						팩스, 전화, 상담 게시판, 이메일, 이벤트 응모, 배송요청<br> - 협력회사로부터의 제공<br>
						- 생성정보 수집 툴을 통한 수집
					</div>
					<!-- agree-content -->

					<div class="agreetext">
						<input type="checkbox" name="req" class="checkBox" id="ok">
						<label for="ok">개인정보 수집 및 이용에 동의합니다. <span style="color:red">(필수)</span></label>
						<!-- 
						<input type="checkbox" name="req" class="checkBox" style="width:15px;height:15px;">
						<a class="agreetext1">개인정보 수집 및 이용에 동의합니다.</a><a class="agreetext2">(필수)</a>
						 -->
					</div>
					
				</div>
				<!-- agree-wrap --> 
				<br>
				<button class="join_done" onclick="return insertMember()">가입완료</button>
			</div>
			<!-- basic -->
		</form>
	</div>
	<!-- join -->

</div>
<!-- container -->


<script>

	/* 성별 스크립트 */
	$("#gender_male").click(function() {
		$("#gender_male").css({"background":"#666","color":"#fff","border-color":"#666"});
		$("#gender").val("남자");
		$("#gender_female").css({"background":"#fff","color":"#e5e5e5","border-color":"#e5e5e5"});
	});
	$("#gender_female").click(function() {
		$("#gender_female").css({"background":"#666","color":"#fff","border-color":"#666"});
		$("#gender").val("여자");
		$("#gender_male").css({"background":"#fff","color":"#e5e5e5","border-color":"#e5e5e5"});
	});
	
	/* 가입버튼 */
	
	$(function(){
		var id = $("#id");
		var pa = $("#pwd");
		var paco = $("#pwd2");
		
		var idRegExp = /^[a-z][a-z0-9_-]{5,19}$/
		var paRegExp = /^.*(?=^.{8,15}$)(?=.*\d)(?=.*[a-zA-Z])(?=.*[!@#$%^&+=]).*$/;
		var paRegExp2 = /\d/g;
		
			$("#id").focusout(function(){
				var checkId = $("#id").val();
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
		var na=$("#userName");
		
			if(na.val()==""){
				na.select();
			}else if($("#birth1").val()=="" ||$("#birth2").val()=="" ||$("#birth3").val()==""){
				$("#birth1").select();
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

</script>

<!-- footer -->
<jsp:include page="/WEB-INF/views/common/footer.jsp" />