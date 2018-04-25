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
  	
  	<button id="blacklistOff" class="searchBtn" style="     position: relative;   left: 300px;" onclick="deleteQna();">글 삭제하기</button>
  	
  	<br><br>
  <script type="text/javascript">
  	function deleteQna(){
  		var c = confirm('정말 글을 삭제하시겠습니까?');
  		
  		if (c == true){
  			location.href="deleteQna.bo";
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
 	
 	<div id="replyArea">
 		<div style="display:inline-block;">
 		<textarea id="replyArea" rows="11" cols="100" style="font-size: 16px;     position: relative;   left: 200px;  padding: 12px 8px; margin-bottom: -100; margin-left: 140px;resize:none;" autofocus></textarea>
 		</div>
 		<div style="display:inline-block;">
 		 		<button class="searchBtn" id="replyBtn" style="height:200px;  position: relative;   left: 200px;" onclick="submitReply();"> 답변 달기 </button>
 		</div>
 	</div>
 	
 	<script type="text/javascript">
 	function submitReply(){
 		
 		if($("#replyArea").is(":empty")){ 			
 			alert('답변을 입력해주세요.');
 		} else {
 			var bid = $("#bid").val(); 		
 			var reply = $("textarea").val(); 
 				
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