<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<meta charset="UTF-8">

<!-- header -->
<jsp:include page="/WEB-INF/views/common/header.jsp"/>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">


<style>
	#write-button{
		
   background: #ff5a5f;
   color : #3a3a3a;
   margin: 10px;
   width: 80px;
   height: 35px;
   border:0px;
   cursor: pointer;
	}

</style>
<!-- css or js파일 연결 시키는 곳 -->
<script>
   
        
        $("#write-button").click(function(){
            //var title = document.form1.title.value; ==> name속성으로 처리할 경우
            //var content = document.form1.content.value;
            //var writer = document.form1.writer.value;
            var bTitle = $("#bTitle").val();
            var bContent = $("#bContent").val();
            if(bTitle == ""){
                alert("제목을 입력하세요");
                document.form1.title.focus();
                return;
            }
            if(bContent == ""){
                alert("내용을 입력하세요");
                document.form1.content.focus();
                return;
            }
            document.form1.action="${path}/board/insert.bo"
            document.form1.submit();
        });
</script>

<div class="container">
<div class="page-header">
     <h1>게시글 작성</h1>
</div> 

<div style="padding : 30px;">
<form action="insert.bo" method="get" name="form1">


     <!-- 파일 업로드 기능을 구현할 시에는 <form> 태그안에 반드시  enctype="multipart/form-data"를 작성해주어야 하고, 용량이 크기 때문에 method는 반드시 post로 작성해야 합니다. -->
        <div class="row">
         <div class="form-group">
          <label>작성자</label>
           <input type="text" value="${loginUser.userName }" class="form-control" readonly/>
          </div>
         </div>
        <div class="row">
         <div class="form-group">
              <label>제목</label>
           <input type="text" name="bTitle" id="bTitle" class="form-control" value="${ board.bTitle }" placeholder="제목을 입력하세요" />
         </div>
        </div>
   <div class="row">
          <div class="form-group">
           <label>내용</label>
           <textarea name="bContent" id="bContents" class="form-control" rows="15" placeholder="내용을 입력하세요">${ board.bContent }</textarea>
          </div>
   </div>
   <div class="row">
    <div class="form-group">
        <label>이미지업로드</label>
        <input class="form-control" id="files-upload" type="file" name="fileName">
    </div>
   </div>
   <div class="row">
    <div class="pull-right">
    
    <button type="submit" id="insert" name="insert">확인</button>
	<button onclick="javascript:history.back(-1)" class="goback">취소</button>
    
    
   <c:forEach var="b" items="${ list }" >
   <tr>
   	<td>${b.bno }</td>
    	<c:url var="modify" value="update.bo">
					<c:param name="boardId" value="${ b.bid }">
					</c:param>										
		</c:url>
   	<td><a href="${ modify }">${b.bTitle }</a></td> 

	</c:forEach>

    
    </div>
   </div>
</form>
 </div>


   <!-- 여기에 코드를 작성해 주세요 -->


</div>
<!-- container -->

<script>
	$('#insert').click(function(){
		if($('input[name=check]').is(":checked")){
			$('input[name=info]').val('1');
		} else{
			$('input[name=info0]').val('0');
		}
		write.submit();
	});
	}
</script>



<!-- footer -->
<jsp:include page="/WEB-INF/views/common/footer.jsp"/>