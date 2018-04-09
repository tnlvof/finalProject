<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<meta charset="UTF-8">

<!-- header -->
<jsp:include page="WEB-INF/views/common/header.jsp"/>

<!-- css or js파일 연결 시키는 곳 -->
<link rel="stylesheet" href="resources/css/myPage.css">

<div class="container" id="container">
		<div id="banner_wrap">
			<div id="banner" class="user">
				<div class="inner_wrap">
					<div class="inner">
						<div id="change_user_image" class="user_image i_wrap">
							<div class="image border_radius circle profile_image"></div>
							<div class="border_radius circle"></div>
						</div>
						<div class="name">
							<span>Fooding</span>
						</div>
						<div class="intro">맛있는 발견의 즐거움 - Fooding</div>
						<div class="info">
							<a>예약 0</a> &nbsp;
							<a>리뷰 0</a>
						</div>
					</div>
				</div>
			</div>
		</div>
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
					<a href="?reservation&amp;type=recent" class="">내가 쓴 리뷰</a> <a
						href="?reservation&amp;type=past" class="">찜한 리뷰</a>
				</div>
				<!-- 리뷰가 없을 때 화면 -->
				<div class="blank">
					<div class="message">
						내 리뷰가 없습니다.<br>첫 리뷰를 작성해보세요!  
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