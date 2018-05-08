<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<meta charset="UTF-8">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!-- header -->
<jsp:include page="/WEB-INF/views/common/header.jsp"/>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">

<style>
	.write-button{
		
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

<div class="container">

<div class="page-header">

<div class="page-header">
 <h1>공지사항</h1>
</div> 
<!-- table-hover는 row에 마우스를 올려놓았을 때 hover이벤트가 적용되도록 하기위해 작성 -->
<table class="table table-hover">
 <thead>
  <tr>
   <th style="width: 10%;">번호</th>
   <th style="width: 55%;">제목</th>
   <th style="width: 10%;">작성자</th>
   <th style="width: 15%;">날짜</th>
   <th style="width: 10%;">조회수</th>
  </tr>
   <c:forEach var="b" items="${ list }" >
   <tr>
   	<td>${b.bno }</td>
    	<c:url var="selectOne" value="noticeRead.bo">
					<c:param name="boardId" value="${ b.bid }">
					</c:param>										
		</c:url>
   	<td><a href="${ selectOne }">${b.bTitle }</a></td> 
 	<td>${b.userName }</td>
   	<td>${b.enrollDateJson }</td>
   	<td>${b.bCount }</td>
	</tr>
	</c:forEach>
	
 </thead>
 <tbody>
 </tbody>
</table>
<!-- row는 한줄을 모두 이 안에 있는 기능들만 보여주도록 하기위해 작성 -->
<div class="row">
 <div class="form-group">
  <!-- pull-right는 버튼이 가장 오른쪽으로 가도록 하기 위해 작성 -->
  <div class="pull-right">
  <!--  <a href="boardInsertForm.do"> --><button onclick="location.href='goNoticeWrite.bo'" class="write-button">글쓰기</button><!-- </a> -->
      <!-- 로그인한 사용자만 글쓰기 버튼을 활성화 -->
    <c:if test="${sessionScope.userId != null}">
        <button type="button" id="btnWrite">글쓰기</button>
    </c:if>
   
   
  </div>
 </div>
</div>




   <!-- 여기에 코드를 작성해 주세요 -->
  

</div>
<!-- container -->



<!-- footer -->
<jsp:include page="/WEB-INF/views/common/footer.jsp"/>