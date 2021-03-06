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

<title>Insert title here</title>
</head>
<body>
	<div class="container">
	
	<!-- 회원 수정 -->

  	<h3>1 : 1 문의 </h3>
  	<div style="    width: 1000px;   margin: 0 auto;">
  	<button id="blacklistOff" class="searchBtn"  onclick="deleteQna();">글 삭제하기</button>
  	</div>
  	<br><br>
  <script type="text/javascript">
  	function deleteQna(){
  		var c = confirm('정말 글을 삭제하시겠습니까?');
  		
  		if (c == true){
  			var bid = document.getElementById('bid').value;
  			console.log(bid);
  			location.href="deleteQna.bo?bid="+bid;
  		}
  	}
  	
  	function updateReply(){
  		
  		var c = confirm('답변을 수정하시겠습니까?');
  		
  		if (c == true){
  			var bid = document.getElementById('answerBid').value;
  			var answer = document.getElementById('replyArea').value;
  			
  			
  			console.log(bid);
  			console.log(answer);
  			
  			location.href="updateAnswer.bo?bid="+bid+"&answer="+answer;
  		}
  		
  		
  	}
  	
  	function deleteReply(){
  		
  		var c = confirm('답변을 삭제하시겠습니까?');
  		
  		if (c == true){
  			var bid = document.getElementById('answerBid').value;
  			console.log(bid);
  			location.href="deleteAnswer.bo?bid="+bid;
  		}
  	}
  	
  </script>
    	
 	<div id="tableArea">
 	
 	<table id="qnaDetail" class="tableList" style="margin-left:auto;margin-right:auto;" >
 	<tr style="border-bottom:1px solid lightgray;">
 	
 	<th style="width:100px; padding:20px;text-align:center;height:20px;font-weight:bold;">글번호</th>
 	<th style="width:500px; text-align:center;height:20px;font-weight:bold;">제목</th>
 	<th style="width:120px; text-align:center;height:20px;font-weight:bold;">글쓴이</th>
 	<th style="width:150px; text-align:center;height:20px;font-weight:bold;">날짜</th>
	<th style="width:100px; text-align:center;height:20px;font-weight:bold;">처리여부</th>
 	
 	</tr>
  
   
	  <tr >
	  	 <td style=" padding-top: 20px; padding-bottom: 20px;"><c:out value="${b.bno }"/><input id="bid" name="bid" type="hidden" value="${b.bid }"></td>
	  	 <td><c:out value="${b.bTitle }"></c:out></td>
	  	 <td><c:out value="${b.mCode }"></c:out></td>
	  	 <td><c:out value="${b.enrollDateJson }"></c:out></td>
	  	 <td><c:out value="${b.refYN }"></c:out></td>
	  </tr>
	<tr>
 		<td colspan="5" style=" padding: 20px;  text-align:left; width:100px;">
			<c:out value="${b.bContent }"/>
		</td>
 	</tr>
 	
 	</table>
 	<hr>
 	
 	<div id="replyDiv" style="width:1000px; margin:0 auto;">
 	
 		<c:if test="${empty b.answer }">
 		<textarea id="replyArea" rows="11" cols="100" style="font-size: 16px; width: 1000px;   margin:0 auto;  padding: 12px 8px;   resize:none;" autofocus></textarea>
 		
 		<div style="style="margin: 0 auto;   width: 1000px;">
 		 		<button class="searchBtn" id="replyBtn" style="height: 90px;   width: 1000px;   margin-top: 30px;" onclick="submitReply();"> 답변 달기 </button>
 		</div>
 		</c:if>
 		
 		<c:if test="${! empty b.answer }">
 		
 		<p style="text-align:right; font-size: 15px;"><c:out value="${b.answerDate }"> </c:out> <input type="hidden" value="${b.answerBid }" id="answerBid"></p>
 		<textarea id="replyArea" rows="11" cols="100" style="font-size: 16px; width: 1000px;   margin:0 auto;  padding: 12px 8px;   resize:none;" autofocus>${b.answer } </textarea>
 		</div>
 		<div style="margin: 0 auto;   width: 1000px;">
 		<ul>
 			<li style="float: left;  margin-right: 15px;"><button class="searchBtn" id="replyBtn" style="height: 70px; margin: 5 auto; width: 480px;" onclick="updateReply();"> 답변 수정 </button></li>
 		 	<li><button class="searchBtn" id="replyBtn" style="    width: 500px;       height: 70px; margin: 5px auto;" onclick="deleteReply();"> 답변 삭제 </button></li>
 		 </ul>	
 		</div>
 		
 		</c:if>
 		
 		
 	</div>
 	
 	<script type="text/javascript">
 	function submitReply(){
 		
 		if($("#replyArea").val() == ""){
 			
 			alert('답변을 입력해주세요.');
 			var reply = $("#replyArea").val(); 
 			console.log(reply);
 		} else {
 			var bid = $("#bid").val(); 		
 			var reply = $("#replyArea").val(); 
 				
 			var replyMap = {bid:bid, reply:reply };
 			console.log('replyMap : ');
 			console.log(replyMap);
 			 			
 			
 			 $.ajax({
	     		  method: "POST",
	     		  url: "insertReply.bo",
	     		  data:	JSON.stringify(replyMap),
	     		 contentType: "application/json; charset=UTF-8",
	     		  success:function(data){
	     			alert('답변을 완료했습니다.');
	     		  },
	     		  error:function(){
	     			  alert('안됨');
	     		  }
	     		  
	     		  
	     		});
	    	
 		}
 		
 	}
 	
 	</script>
 	
 </div>


	<!--/ 회원 수정 -->







</div>
	
	
	
	
	
</body>
</html>