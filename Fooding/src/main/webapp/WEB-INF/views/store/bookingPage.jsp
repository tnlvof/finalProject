<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<meta charset="UTF-8">


 
<!-- header --> 
<jsp:include page="/WEB-INF/views/common/header.jsp"/>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>


<!-- main css -->
<link rel="stylesheet" href="http://idangero.us/swiper/dist/css/swiper.min.css" />
<link rel="stylesheet" href="/fooding/resources/css/main.css">
<link rel="stylesheet" href="/fooding/resources/css/join.css">
 
	<div class="container">
			
		<div class="join">
	
		
		<c:if test="${! empty loginUser }">
		<form id="rsvForm" class="join_form" action="insertRsv.rv" method="post" onsubmit="return checkForm();">
			
			
			<div class="basic">

				<h3>예약 페이지</h3>
				<p class="subtitle">예약정보를 입력해주세요</p>

				<div class="join_wrap storeJoin">
					
					<!-- 아이디 -->
					<label class="must">아이디</label>
					<input type="text" name="userId" class="storeId" value="${loginUser.userId }" readonly />					
					<input type="hidden" name="mid" id="mid" value="${ loginUser.mid }">
					
					<label class="must">연락처</label>
					<input type="text" name="phone" id="phone" class="storeId"   />					
					
					
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
					<input type="hidden" name="workHours" id="workHours" value="${sInfo.sHours }">
					
					<label class="must">예약날짜</label>
					<input type="date" min="" name="rDate" id="bookDate" style="height:50px; ">
										
					<label class="must">예약시간</label>	
					<script type="text/javascript">
					$(function(){
						var workHours = $("#workHours").val();
						
						var splitString = workHours.split("/");
						//console.log(splitString);
						splitString[0] = '<option>'+splitString[0]+'</option>';
						splitString[1] = '<option>'+splitString[1]+'</option>';
						
						//console.log(splitString);
						
						var timeOption = [ 									 
						"<option>오전 00:00</option>",
						"<option>오전 00:30</option>",
						"<option>오전 01:00</option>",
						"<option>오전 01:30</option>",
						"<option>오전 02:00</option>",
						"<option>오전 02:30</option>",
						"<option>오전 03:00</option>",
						"<option>오전 03:30</option>",						
						"<option>오전 04:00</option>",
						"<option>오전 04:30</option>",
						"<option>오전 05:00</option>",
						"<option>오전 05:30</option>",
						"<option>오전 06:00</option>",
						"<option>오전 06:30</option>",
						"<option>오전 07:00</option>",
						"<option>오전 07:30</option>",
						"<option>오전 08:00</option>",
						"<option>오전 08:30</option>",
						"<option>오전 09:00</option>",						
						"<option>오전 09:30</option>",
						"<option>오전 10:00</option>",
						"<option>오전 10:30</option>",
						"<option>오전 11:00</option>",
						"<option>오전 11:30</option>",
						"<option>오후 12:00</option>",
						"<option>오후 12:30</option>",
						"<option>오후 13:00</option>",						
						"<option>오후 13:30</option>",
						"<option>오후 14:00</option>",
						"<option>오후 14:30</option>",
						"<option>오후 15:00</option>",									
						"<option>오후 15:30</option>",
						"<option>오후 16:00</option>",
						"<option>오후 16:30</option>",
						"<option>오후 17:00</option>",
						"<option>오후 17:30</option>",
						"<option>오후 18:00</option>",
						"<option>오후 18:30</option>",
						"<option>오후 19:00</option>",
						"<option>오후 19:30</option>",
						"<option>오후 20:00</option>",
						"<option>오후 20:30</option>",
						"<option>오후 21:00</option>",
						"<option>오후 21:30</option>",
						"<option>오후 22:00</option>",
						"<option>오후 22:30</option>",
						"<option>오후 23:00</option>",
						"<option>오후 23:30</option>"	
						];
						
						//console.log(timeOption);
						var begin;
						var end;
						var array = [];
						
						for(var i=0; i<timeOption.length;i++){
							if(splitString[0]==timeOption[i]){
								//console.log('찾음 : '+timeOption[i]);
								begin = i;								
							} else if(splitString[1]==timeOption[i]){
								//console.log('찾음 : '+timeOption[i]);
								end = i;	
							}
						}
						//console.log(begin);
						//console.log(end);
						
						for(var j=begin ; j<=end;j++){
							array.push( timeOption[j]);
						} 
						
						//console.log(array);
						
						$("#bookTime").append(array);
						
							
					});
					</script>
									
					<select style="text-align:right;border: 1px solid #e5e5e5;padding: 15px;font-size: 13px;width: 100%;box-sizing: border-box;margin-bottom: 10px;" id="bookTime" name="rTime">				
						<option>예약 시간을 선택해주세요</option>
																													
					  </select>
					
					<label class="must">휴일안내</label>
					<p style="padding-top: 15px; padding-bottom: 15px; color:#ec3e43; font-weight:bold;">${sInfo.dayoff }</p>
										
					
					<label class="must">인원수</label>
					<input type="number" name="rPeople" id="rvNum" class="storeId" min="1" />
					
					<label class="must">예약 메세지</label>
					<input type="text" name="rContent" id="rvContent" class="storeId" />
					
					
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
							var time= document.getElementById("bookTime");
							var timeUser = time.options[time.selectedIndex].value; 
							var person= document.getElementById("rvNum").value;
							var phone = document.getElementById("phone").value;
							
							
							 
							if(date == null || timeUser== "예약 시간을 선택해주세요" || person== null || phone==null ){								
								alert("필수 항목을 입력해주세요");
								return false;
							} else{
								
									$("#rsvForm").submit();
							
							}
							 
						}
						
					</script>	
					
					
										
				</div>
				<br>
				<button class="join_done" >예약완료</button>
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
