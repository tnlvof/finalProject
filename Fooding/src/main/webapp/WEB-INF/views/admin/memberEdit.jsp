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
  	<button type="submit" id="blacklistOff" class="searchBtn" style="position:relative;left:195px;">블랙리스트 풀기</button>
  	<button type="submit" class="searchBtn" style="position:relative;left:210px;">수정완료</button>
  	<br><br>
  	
  	<form action="updateMembers.me" method="post">
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
 	
 <!-- 	private int mid;
	private String userId;
	private String userPwd;
	private String userName;
	private String birth;
	private String gender;
	private String phone;
	private String email;
	private String address;
	private String mCode;
	private String status;
	private Date enrollDate;
	private int repCount;
	private int bizNo;
	private String bizName;
	private int bookCount; -->
	
 	<c:forEach items="${editList }" var="e" >
 	<tr class="tableRow">
 		<td><input type="checkbox" class="checkboxes"></td>
 		 <td style="padding:10px; cursor:pointer;">${ e.userId} <input type="hidden" name="userId" value="${ e.mid}"> </td>
 		 <td >${ e.userName}</td>
 		 <td >${ e.birth}</td>
 		 <td >${ e.phone}</td>
 		 <td >${ e.email}</td>
 		 <td >${ e.address}</td>
 		 <td><input type="text" value="5" class="reportNum"></td>
 		 <td >${ e.bookCount}</td>
 		 <td><input type="text" value="${e.status }"></td>
 	</tr>
 	</c:forEach>
 
 	</table>
 	
 </div>
</form>



	<!--/ 회원 수정 -->


    <script type="text/javascript">
    
	
	    $('#checkAll').click(function() {
	        var c = this.checked;
	        $('.checkboxes').prop('checked',c);
	    });
	    
	    
	    $(".checkboxes").change(function(){
	    	if(this.checked){
	    		$(this).html("<input type='checkbox' class='checkboxes checkedOnes'>");
	    	}else{
	    		$(this).html("<input type='checkbox' class='checkboxes'>");
	    	}
	    });
	    

	    
	    
    	$("#blacklistOff").click(function(){
    		if(!$(".checkboxes").is(':checked') ){
    			alert("블랙리스트 풀기 대상인 회원을 선택해주세요.");    			
    		} else {  						    			    			
    			$(".checkedOnes").siblings('.reportNum').val("0");    			
    		}     		
    			
    	});
    </script>






</div>
<!-- container -->



<!-- footer -->
<jsp:include page="/WEB-INF/views/common/footer.jsp"/>