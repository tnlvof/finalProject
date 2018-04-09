<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<meta charset="UTF-8">


<!-- header -->
<jsp:include page="/WEB-INF/views/common/header.jsp"/>

<!-- css or js파일 연결 시키는 곳 -->

<div class="container" >



<form action="" method="" >

	<table align="center" style="border:1px solid lightgray;  margin-left:auto; margin-right:auto; margin-top:100px; background:white; "  >
	
		<tr>
			<td colspan="2" style="text-align:center; font-size:25px; font-weight:bold; padding:30px;">
				예약하기
			</td>
		</tr>
		<tr style="padding-left:30px;">
			<td style="width:100px;height:30px;text-align:center;font-weight:bold;padding-top:10px;padding-bottom:10px; padding-left: 30px;">매장명</td>
			<td style="width:400px;text-align:center;padding-right: 30px;">이태원 바토스</td>
		</tr>	
		<tr>
			<td style="width:100px;height:30px;text-align:center;font-weight:bold;padding-top:10px;padding-bottom:10px; padding-left: 30px;">매장 편의시설</td>
			<td style="width:100px;text-align:center;padding-right: 30px;">주차장 있음, 휠체어, 노키즈존, 와이파이, 외국인직원, 흡연실 없음, 소파자리</td>
		</tr>	
		<tr>
			<td style="width:100px;height:30px;text-align:center;font-weight:bold;padding-top:10px;padding-bottom:10px; padding-left: 30px;">* 날짜</td>
			<td style="width:400px;text-align:center;"><input type="date" min="" name="bookDate" id="bookDate" style="text-align:right;height:30px; "></td>
		</tr>
		<tr>
			<td style="width:100px;height:30px;text-align:center;font-weight:bold;padding-top:10px;padding-bottom:10px; padding-left: 30px;">* 시간</td>
			<td style="text-align:center">
				<select style="text-align:right;height:30px;" id="bookTime">				
					<option>시간을 선택해주세요</option>
					<option>오전 10:00</option>
					<option>오전 10:30</option>
					<option>오전 11:00</option>
					<option>오전 11:30</option>
					<option>오후 12:00</option>
					<option>오후 12:30</option>
					<option>오후 13:00</option>
					<option>오후 13:30</option>
					<option>오후 14:00</option>
					<option>오후 14:30</option>
					<option>오후 15:00</option>
					<option>오후 15:30</option>
					<option>오후 16:00</option>
					<option>오후 16:30</option>
					<option>오후 17:00</option>
					<option>오후 17:30</option>
					<option>오후 18:00</option>
					<option>오후 18:30</option>
					<option>오후 19:00</option>
					<option>오후 19:30</option>
					<option>오후 20:00</option>
					<option>오후 20:30</option>
												
				</select>
			</td>
		</tr>		
		<tr>
			<td style="width:100px;height:30px;text-align:center;font-weight:bold;padding-top:10px;padding-bottom:10px;  padding-left: 30px;">* 인원수 </td>
			<td style="width:400px;text-align:center;"><input type="number" min="1" placeholder="1" style="text-align:right;width:70px;height:30px;padding-right: 30px;" id="peopleNum">&nbsp; 명</td>
		</tr>
		<tr>
			<td style="width:100px;height:30px;text-align:center;font-weight:bold;padding-top:10px;padding-bottom:10px;  padding-left: 30px;">요구사항 </td>
			<td style="width:400px;padding-right: 30px;">
				<textarea rows="3" cols="50" style="resize:none; border-radius:4px;" maxlength="50" placeholder="가게에 원하시는 사항이 있으면 적어주세요. (50자 이내)"></textarea>				
			</td>						
		</tr>
		
		<tr>
		
		<td colspan="2" style=" padding: 30px;">
		<br>
		<ul style="font-size:12px;">
			<li style="cursor:default"> - * 표시가 된 항목들은 필수사항입니다.</li>
			<li style="cursor:default"> - 주차는 가게의 사정에 따라 가능 여부가 달라지므로 직접 문의하시기 바랍니다.</li>
		</ul><br></td>
		
		</tr>
	
	
	</table>
	<div >
	<br>
		<br>
	<button type="button" style="margin-left:600px;width:400px;" onclick="return checkForm();">예약하기</button>
		
	</div>
	
	
</form>





</div>
<script type="text/javascript">
	window.onload = setDate;
		
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
	
	function checkForm(){
		
		var date = document.getElementById("bookDate").value; 
		var time= document.getElementById("bookTime").value; ;
		var person= document.getElementById("peopleNum").value;
		
		console.log(date +", " +time+", " +person);
		
		if(date == null || time== "시간을 선택해주세요" || person==null ){
			
			alert("필수 항목을 입력해주세요");
		} else{
			
			confirm("예약을 완료하시겠습니까?");
		}
		
	}
	
	
		
		
</script>	
	


<!-- container -->



<!-- footer -->
<jsp:include page="/WEB-INF/views/common/footer.jsp"/>