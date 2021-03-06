<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<meta charset="UTF-8">

<meta name="viewport" content="width=device-width, initial-scale=1">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

<!-- header -->
<jsp:include page="/WEB-INF/views/common/header.jsp"/>

<!-- css or js파일 연결 시키는 곳 -->
<link rel="stylesheet" href="/fooding/resources/css/admin.css">


<div class="container">


	<!-- 회원 수정 -->

  	<h3>회원 수정 </h3>
  	
  	<button id="blacklistOff" class="searchBtn" style="position:relative;left:195px;"  onclick="updateMember()" >블랙리스트 풀기</button>
  	
 	
  	<br><br>
  	
  	<script type="text/javascript">
  		function updateMember(){
  			
  			
  			var midArr = [];
  			var repCountArr = [];
  			var statusArr = [];
  			
  			 $(".eMid").each(function(){
  				midArr.push( $(this).val() );  	
  			 }) ;
  		
  			$(".eRepCount").each(function(){
  				repCountArr.push( $(this).val() );
  			 }) ;
  		
  			$(".eStatus").each(function(){
  				statusArr.push( $(this).val() );
  			 }) ;
  		  		 				  		
  			
  			console.log(midArr);
  			console.log(repCountArr);
  			console.log(statusArr);
  		 	
  			var data ={
  					'midArr' : midArr,
  					'repCountArr': repCountArr,
  					'statusArr': statusArr
  				};
  			
  			
  			$.ajax({
  				method:"post",
  				url:"updateMembers.me",
  				data: JSON.stringify(data),  
  				contentType:"application/json",
  				success:function(){
  					alert('수정 되었습니다.');
  				},
  				error:function(){
  					alert('안대');
  				}
  				
  			});
  			
  		}
  	</script>
  	
    	
 	<div id="tableArea">
 	<table id="memberList" class="tableList" style="margin-left:auto;margin-right:auto;" >
 	<tr style="border-bottom:1px solid lightgray;">
 	<th style="width:100px; text-align:center;height:20px;font-weight:bold;">
 
 	<th style="width:100px; text-align:center;height:20px;font-weight:bold;">아이디</th>
 	<th style="width:100px; text-align:center;height:20px;font-weight:bold;">이름</th>
 	<th style="width:150px; text-align:center;height:20px;font-weight:bold;">생년월일</th>
 	<th style="width:150px; text-align:center;height:20px;font-weight:bold;">연락처</th>
 	<th style="width:150px; text-align:center;height:20px;font-weight:bold;">이메일</th>
 	<th style="width:150px; text-align:center;height:20px;font-weight:bold;">주소</th>
 	<th style="width:100px; text-align:center;height:20px;font-weight:bold;">신고횟수</th>
 	<th style="width:100px; text-align:center;height:20px;font-weight:bold;">예약 누적 횟수</th>
 	<th style="width:100px; text-align:center;height:20px;font-weight:bold;">회원여부</th> 	
 	
 	</tr>
  
	
 	<c:forEach items="${editList }" var="e" >
 	<tr class="tableRow">
 		<td class="checkTd"><input type="hidden" class="eMid" name="mid" value="${ e.mid}"></td>
 		 <td  style="padding:10px; cursor:pointer;">${ e.userId}  </td>
 		 <td >${ e.userName}</td>
 		 <td >${ e.birth} </td>
 		 <td >${ e.phone}</td>
 		 <td >${ e.email}</td>
 		 <td >${ e.address}</td>
 		 <td  class="reportNum"> <input type="text" value="${ e.repCount}" class="eRepCount" name="repCount" > </td>
 		 <td >${ e.bookCount}</td>
 		 <td> <input type="text" name="status" class="eStatus" value="${e.status }"> </td>
 	</tr>
 	</c:forEach>
 
 	</table>
 	
 </div>


	<!--/ 회원 수정 -->






</div>
<!-- container -->



<!-- footer -->
<jsp:include page="/WEB-INF/views/common/footer.jsp"/>
