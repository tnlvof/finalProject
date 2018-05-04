<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<meta charset="UTF-8">


 
<!-- header --> 
<jsp:include page="/WEB-INF/views/common/header.jsp"/>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>


<!-- main css -->
<link rel="stylesheet" href="http://idangero.us/swiper/dist/css/swiper.min.css" />
<link rel="stylesheet" href="/fooding/resources/css/main.css">
 
	<div class="container">
			
		<div class="join">
	
		
		<c:if test="${! empty loginUser }">
		<form id="joinForm" class="join_form" method="post">
			
			
			<div class="basic">

				<h3>업체 회원가입</h3>
				<p class="subtitle">가입 정보 입력</p>

				<div class="join_wrap storeJoin">
					
					<!-- 아이디 -->
					<label class="must">아이디</label>
					<input type="text" name="userId" id="storeId" class="storeId" value="${loginUser.userId }" readonly />					
					<input type="hidden" name="mid" id="mid" value="${ loginUser.mid }">
					
					<!-- private int rvid;
					private Date rDate;
					private String rTime;
					private String rContent;
					private String rPeople;
					private String status;
					private int mid;
					private int sid;
					private String sName; -->
					
					<label class="must">예약식당</label>
					<input type="text" name="sName" id="storeName" class="storeId" value="${sInfo.sName }" readonly />
					<input type="hidden" name="sid" id="storeId" class="storeId" value="${sInfo.sid }" />
					
					
					<label class="must">예약날짜</label>
					<input type="date" min="" name="bookDate" id="bookDate" style="text-align:right;height:30px; ">
										
					<label class="must">예약시간</label>
					<input type="date" min="" name="rvTime" id="rvTime" style="text-align:right;height:30px; ">
					1시간 내에 테이블 갯수만큼 예약이 차면 예약 시간 버튼을 없애기로.
										
					
					<label class="must">인원수</label>
					<input type="number" name="rvNum" id="rvNum" class="storeId"  />
					
					<label class="must">예약 메세지</label>
					<input type="text" name="rvMsg" id="rvContent" class="storeId" value="${loginUser.userId }" />
					
					
					<script type="text/javascript">
						window.onload = setDate;
							
						//과거 날짜 막기
						function setDate(){
							
							var today = new Date();
							
							  var month = today.getMonth() + 1;
							    var day = today.getDate();
							    var year = today.getFullYear();
					
							    if(month <  10)
							        month = '0' + month.toString();
							    if(day < 10)
							        day = '0' + day.toString();
					
							    var maxDate = year + '-' + month + '-' + day;    
							    
							
							document.getElementById("bookDate").setAttribute('min', maxDate);
							
						}
						
						
						//필수항목 입력 확인
						function checkForm(){
							
							var date = document.getElementById("bookDate").value; 
							var time= document.getElementById("rvTime").value; ;
							var person= document.getElementById("rvNum").value;
							
							console.log(date +", " +time+", " +person);
							
							if(date == null || time== "시간을 선택해주세요" || person==null ){								
								alert("필수 항목을 입력해주세요");
							} else{
								
								confirm("예약을 완료하시겠습니까?");
							}
							
						}
						
					</script>	
					
					
										
				</div>
			


					
				
			
				<br>
				<button class="join_done" onclick="return insertMember()">가입완료</button>
			</div>
			<!-- basic -->
		</form>
		</c:if>
	</div>
	<!-- join -->

</div>
		
		
	<!-- container -->

	</div>
<!-- 메인 슬라이더 -->


<!-- footer -->
<jsp:include page="/WEB-INF/views/common/footer.jsp"/>
