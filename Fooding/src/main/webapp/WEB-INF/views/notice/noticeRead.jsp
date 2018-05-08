<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<meta charset="UTF-8">

<!-- header -->
<jsp:include page="/WEB-INF/views/common/header.jsp" />
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>


<!-- css or js파일 연결 시키는 곳 -->

<style>
.form-control {
	width: 300px;
	height: 400px;
}

.table {
	margin: 0 auto;
}


table th {
	width: 110px;
	padding: 10px 0 10px 20px;
	border: 1px solid #e8e8e8;
	background-color: white;
	text-align: left;
	font-weight: normal;
	vertical-align: middle;
	font-size: 13px;
}

.gomain, .godelete, .goupdate, .goback{
	
	   background: lightgray;
   color: #3a3a3a;
   margin: 10px;
   width: 80px;
   height: 35px;
   border: 0px;
   cursor: pointer;	
}

</style>
<script>

$(document).ready(function(){
    $("#deleteBtn").click(function(){
        if(confirm("삭제하시겠습니까?")){
            document.form1.action = "${ deleteOne }";
            document.form1.submit();
        }
    });
    /* 
     $("#btnUpdate").click(function(){
       var title = document.form1.bTitle.value; ==> name속성으로 처리할 경우
       var content = document.form1.bContent.value;
       
        document.form1.action="${path}update.bo"
        // 폼에 입력한 데이터를 서버로 전송
        document.form1.submit();
    }); */
 </script>



<div class="container">
	<div class="title-content" align="center">
		<br> <span class="notice-write-title">* 공지사항 쓰기</span>
		<div class="title">

				<form name="writeform" method="post" action="update.bo" id="form1">
				<input type="hidden" name="bid" value="${board.bid }">
			<table width="750px">
					<tr>
						<th>작성자</th>
						<th><input type="text" name="bWriter" id="bWriter"
							value="${board.userName}" readonly="readonly"></th>
					</tr>
					<tr>
						<th>제목</th>
						<br>
						<th><input type="text" name="bTitle" id="bTitle"
							value="${board.bTitle}" placeholder="제목을 입력하세요" ></th>
					</tr>
					<tr>
						<th>조회수</th>
						<th><input type="label" name="bCount" id="bCount" value="${board.bCount }" readonly></th>
					</tr>
					<tr>
						<th>내용</th>
						<td><input type="text" name="bContent" id="bContent"
								style="margin: 0px; width: 640px; height: 367px;" value="${board.bContent}" >
						</td>
					</tr>
					<tr style="display: table-row;">
						<th scope="row" class="thead txtLess">FILE&nbsp;</th>
						<th class="formFile"><input name="attach_file[]" type="file"
							width="900px" height="30px"> <span class="attachabtnArea"
							style="display: none;"> <a href="#none"
								class="attachfile-add"> <i class="fa fa-plus"></i>
							</a>
						</span></th>
					</tr>

			</table>
				
			<br>

 
 <button type="submit" onclick="Javascript:button_event()"class="goupdate" id="btnUpdate">수정</button>
 
 
	<!-- 삭제 -->
		<c:url var="deleteOne" value="delete.bo">
					<c:param name="boardId" value="${ board.bid }">
					</c:param>										
		</c:url>
	<button onclick="location.href='${ deleteOne }'" id="deleteBtn" name="btn" class="godelete">삭제</button>
	<button onclick="location.href='list.bo'" class="goback">뒤로가기</button>

<%--     <!-- 본인이 쓴 게시물만 수정, 삭제가 가능하도록 처리 -->
    <c:if test="${sessionScope.userName == board.userName}">
        <button type="button" id="btnUpdete">수정</button>
        <button type="button" id="btnDelete">삭제</button>
    </c:if> --%>

 </form>

		<script type="text/javascript">
<!--
function button_event(){
if (confirm("정말 수정하시겠습니까??") == true){    //확인
    document.form1.submit();
}else{   //취소
    return;
}
}
//-->
		</script>
 



		

		</div>

	</div>




</div>




<!-- container -->

<!-- requestMapping == noticeRead -->

<!-- footer -->
<jsp:include page="/WEB-INF/views/common/footer.jsp" />