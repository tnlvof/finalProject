<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<meta charset="UTF-8">

<!-- header -->
<jsp:include page="/WEB-INF/views/common/header.jsp"/>

<!-- css or js파일 연결 시키는 곳 -->
<link rel="stylesheet" href="resources/css/myPage.css">

<div class="container" id="container">
	<jsp:include page="/WEB-INF/views/myPage/myPageBanner.jsp" />
	<div id="content_wrap">
		<div id="content" class="mypage">
			<ul class="tab">
				<li class="item" onclick="location.href='goMyPage.me'">예약</li>
				<li class="item" onclick="location.href='goMyPageReview.me'">리뷰</li>
				<li class="item" onclick="location.href='goMyPageQuestions.me'">1:1 문의</li>
			</ul>
			<div id="reservation" class="body empty">
				<div class="filter">
				    
				</div>
			</div>
			<div class="body question form question_wrap">
				<div class="question">
					<div class="question_header">
					1:1 문의하기
					</div>
					<form>
						<textarea class="text" placeholder="문의사항을 적어주세요."></textarea>
						<button type="submit" class="submit-btn">등록하기</button>
						<button type="reset" class="reset-btn" onclick="location.href='goMyPageQuestions.me'">취소</button>
					</form>
				</div>
			</div>
		</div>
		<jsp:include page="/WEB-INF/views/myPage/myPageSidebar.jsp" />
	</div>
</div>
<!-- container -->

<!-- footer -->
<jsp:include page="/WEB-INF/views/common/footer.jsp"/>
