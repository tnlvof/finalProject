<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<meta charset="UTF-8">

<!-- header -->
<jsp:include page="WEB-INF/views/common/header.jsp"/>

<!-- css or js파일 연결 시키는 곳 -->
<link rel="stylesheet" href="resources/css/myPage.css">

<div class="container" id="container">
	<jsp:include page="WEB-INF/views/myPage/myPageBanner.jsp" />
	<div id="content_wrap">
		<div id="content" class="mypage">
			<ul class="tab">
				<li class="item selected"><a href="/fooding/myPage.jsp">예약</a></li>
				<!-- <li class="item "><a href="#">티켓</a></li> -->
				<li class="item "><a href="/fooding/myPageReview.jsp">리뷰</a></li>
				<li class="item "><a href="/fooding/myPageQuestions.jsp">1:1 문의</a></li>
			</ul>
			<div id="reservation" class="body empty">
				<div class="filter">
				    
				</div>
			</div>
			<div class="body question form question_wrap">
				<form>
					<p class="userName">나푸딩</p>
					<textarea></textarea>
					<button type="submit" class="submit-btn">등록하기</button>
					<button type="reset" class="reset-btn">취소</button>
				</form>
			</div>
		</div>
		<jsp:include page="WEB-INF/views/myPage/myPageSidebar.jsp" />
	</div>
</div>
<!-- container -->

<!-- footer -->
<jsp:include page="WEB-INF/views/common/footer.jsp"/>