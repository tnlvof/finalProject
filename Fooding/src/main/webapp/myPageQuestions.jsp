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
				<li class="item selected"><a href="#">예약</a></li>
				<!-- <li class="item "><a href="#">티켓</a></li> -->
				<li class="item "><a href="#">리뷰</a></li>
				<li class="item "><a href="#">1:1 문의</a></li>
			</ul>
			<div id="reservation" class="body empty">
				<div class="filter">
					<a href="?reservation&amp;type=recent" class=""></a> <a
						href="?reservation&amp;type=past" class=""></a>
				</div>
				<!-- 리뷰가 없을 때 화면 -->
				<div class="blank">
					<div class="message">
						문의 사항이 없습니다.<br>문의 사항이 생기시면 언제든지 남겨주세요!
					</div>
					<button class="disable" onclick="" tabindex="-1"></button>
				</div>
			</div>
		</div>
		<jsp:include page="WEB-INF/views/myPage/myPageSidebar.jsp" />
	</div>
</div>
<!-- container -->

<!-- footer -->
<jsp:include page="WEB-INF/views/common/footer.jsp"/>