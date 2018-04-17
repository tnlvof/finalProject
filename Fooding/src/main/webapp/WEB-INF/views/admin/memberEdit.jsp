<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<meta charset="UTF-8">

<meta name="viewport" content="width=device-width, initial-scale=1">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

<!-- header -->
<jsp:include page="/WEB-INF/views/common/header.jsp"/>

<!-- css or js파일 연결 시키는 곳 -->
<link rel="stylesheet" href="/fooding/resources/css/admin.css">


<div class="container">






	<!-- 회원 수정 -->


  	<h3>회원 수정</h3>
  	<button type="submit" id="blacklistOff" class="searchBtn" style="position:relative;left:195px;">블랙리스트 풀기</button>
  	<button type="submit" class="searchBtn" style="position:relative;left:210px;">수정완료</button>
  	<br><br>
 	<div id="tableArea">
 	<table id="memberList" class="tableList" style="margin-left:auto;margin-right:auto;" >
 	<tr style="border-bottom:1px solid lightgray;">
 	<th style="width:100px; text-align:center;height:20px;font-weight:bold;"><input type="checkbox" id="checkAll">&nbsp;전체선택</th>
 	
 	<th style="width:100px; text-align:center;height:20px;font-weight:bold;">아이디</th>
 	<th style="width:100px; text-align:center;height:20px;font-weight:bold;">이름</th>
 	<th style="width:150px; text-align:center;height:20px;font-weight:bold;">생년월일</th>
 	<th style="width:150px; text-align:center;height:20px;font-weight:bold;">연락처</th>
 	<th style="width:150px; text-align:center;height:20px;font-weight:bold;">이메일</th>
 	<th style="width:150px; text-align:center;height:20px;font-weight:bold;">주소</th>
 	<th style="width:100px; text-align:center;height:20px;font-weight:bold;">신고횟수</th>
 	<th style="width:100px; text-align:center;height:20px;font-weight:bold;">예약 누적 횟수</th>
 	<th style="width:100px; text-align:center;height:20px;font-weight:bold;">탈퇴여부</th> 	
 	
 	</tr>
 	
 	<tr class="tableRow">
 		<td><input type="checkbox" class="checkboxes"></td>
 		 <td style="padding:10px; cursor:pointer;">tnlvof</td>
 		 <td >이종수</td>
 		 <td >550101</td>
 		 <td >010-1234-5675</td>
 		 <td >2glei@kh.or.kr</td>
 		 <td >노량진</td>
 		 <td><input type="text" value="8" class="reportNum"></td>
 		 <td >15</td>
 		 <td><input type="text" value="N"></td>
 	</tr>
 	
 	<tr class="tableRow">
 		<td><input type="checkbox" class="checkboxes"></td>
 		 <td style="padding:10px; cursor:pointer;">tnlvof</td>
 		 <td >이종수</td>
 		 <td >550101</td>
 		 <td >010-1234-5675</td>
 		 <td >2glei@kh.or.kr</td>
 		 <td >노량진</td>
 		 <td><input type="text" value="0" class="reportNum"></td>
 		 <td >15</td>
 		 <td><input type="text" value="N"></td>
 	</tr>
 	
 	
 	</table>
 </div>




	<!--/ 회원 수정 -->


    <script type="text/javascript">
    
	
	    $('#checkAll').click(function() {
	        var c = this.checked;
	        $('.checkboxes').prop('checked',c);
	    });

    	
    	$("#blacklistOff").click(function(){
    		if(!$(".checkboxes").is(':checked') ){
    			alert("블랙리스트 풀기 대상인 회원을 선택해주세요.");    			
    		} else {
    			 var tableRow = $(".tableRow").find("input:checked");
    			 
    			 console.log(tableRow.find('.reportNum').val());
    		}     		
    		
    	
    	
    		
    	
    		
    		
    		
    	});
    </script>






</div>
<!-- container -->



<!-- footer -->
<jsp:include page="/WEB-INF/views/common/footer.jsp"/>