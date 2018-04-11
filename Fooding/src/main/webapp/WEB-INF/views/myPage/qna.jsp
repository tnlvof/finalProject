
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<meta charset="UTF-8">
<style>

.quetable{
	width : 800px;
	background: white;
	align:center;
	margin:auto;
	margin-top: 30px;
}

.queno{
	width: 60px;
	height: 40px;
	text-align: center;
	padding: 10px 20px 0px 20px ;
}

.quetitle{
	width: 300px;
	height: 40px;
	text-align: center;
	padding: 10px 20px 0px 20px ;
}

.quename{
	width: 100px;
	height: 40px;
	text-align: center;
	padding: 10px 20px 0px 20px ;
}

.quedate{
	width: 100px;
	height: 40px;
	text-align: center;	
	padding: 10px 20px 0px 20px ;
}

.quelist{
	 align:center;
	 margin:auto;
}

thead {
	padding: 15px;
	background: #ff494e;
}

 .tbody:hover{ 
 background-color: #ffd4d5; 
 } 

.quelist {
	margin: auto;
	text-align: center;
	margin-top: 30px;
 }
 
 .quediv{
 	text-align: center;
 }



</style>
<!-- header -->
<jsp:include page="/WEB-INF/views/common/header.jsp" />

<!-- css or js파일 연결 시키는 곳 -->

<div class="container">

	<!-- 테이블 시작 -->
	<div class="quelist">
		<a class="quediv">1:1 문의 게시판 </a>
			<table class="quetable">
			<thead>
				<tr>
					<th class="queno">번호</th>
					<th class="quetitle">제목</th>
					<th class="quename">이름</th>
					<th class="quedate">등록일자</th>
					
				</tr>
			</thead>
			<tbody>
				<tr class="tbody">
					<td class="queno">1</td>
					<td class="quetitle">제목제목입니다</td>
					<td class="quename">작성자</td>
					<td class="quedate"> 20180101</td>
				</tr>
				<tr class="tbody">
					<td class="queno">2</td>
					<td class="quetitle">제목제목입니다</td>
					<td class="quename">작성자</td>
					<td class="quedate"> 20180102</td>
				</tr>
				<tr class="tbody">
					<td class="queno">3</td>
					<td class="quetitle">제목제목입니다</td>
					<td class="quename">작성자</td>
					<td class="quedate"> 20180205</td>
				</tr>
				<tr class="tbody">
					<td class="queno">4</td>
					<td class="quetitle">제목제목입니다</td>
					<td class="quename">작성자</td>
					<td class="quedate"> 20180305</td>
				</tr>
			</tbody>
		</table>
	</div>
	<!-- 테이블 종료 -->
</div>
<!-- container -->



<!-- footer -->
<jsp:include page="/WEB-INF/views/common/footer.jsp" />