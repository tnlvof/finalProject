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
			<div class="body empty">
				<div class="filter">
					<a href="" class="">내가 쓴 리뷰</a> <a href="" class="">찜한 리뷰</a>
				</div>
				<!-- 리뷰가 없을 때 화면 -->
				<div class="blank">
					<div class="message">
						내 리뷰가 없습니다.<br>첫 리뷰를 작성해보세요!
					</div>
					<button class="disable" onclick="" tabindex="-1"></button>
				</div>
			</div>
			<div class="body review list review_wrap">
				<div class="review" data-id="123652" data-place="28883"
					data-place-name="브라더후드 키친">
					<a class="place" href=""> <span class="thumbnail"
						style="display: block; background-image: url(&quot;http://c2.poing.co.kr/PIMAGE-default/5746a03f668a484de2000044.png&quot;);"></span>
						<p class="name">브라더후드 키친</p>
						<p class="info">강남역 · 술집</p>
					</a>
					<div class="body">
						<div class="time  loaded" style="display: block;">몇초 전</div>
						<div class="grade">
							<i class="icon star medium odd active" data-id="123652"
								data-index="0" style=""></i><i
								class="icon star medium even active" data-id="123652"
								data-index="1" style=""></i><i
								class="icon star medium odd active" data-id="123652"
								data-index="2" style=""></i><i
								class="icon star medium even active" data-id="123652"
								data-index="3" style=""></i><i
								class="icon star medium odd active" data-id="123652"
								data-index="4" style=""></i><i
								class="icon star medium even active" data-id="123652"
								data-index="5" style=""></i><i
								class="icon star medium odd active" data-id="123652"
								data-index="6" style=""></i><i
								class="icon star medium even active" data-id="123652"
								data-index="7" style=""></i><i class="icon star medium odd "
								data-id="123652" data-index="8" style=""></i><i
								class="icon star medium even " data-id="123652" data-index="9"
								style=""></i> <span
								style="display: inline-block; vertical-align: super;"
								data-id="123652" data-grade="80">4.0 / 인상적이네요. 꼭 추천하고
								싶어요.</span>
						</div>
						<div class="text" data-truncated="">치킨 와플 진짜 맛있어요ㅠㅠㅠㅠㅠ 메이플
							시럽이랑 치킨조합은 처음이었는데 너무 잘어울려서 깜짝놀랐어요..! 다음에 다른 메뉴도 먹어보고싶어요~~~~~</div>
						<div class="action">
							<div class="article">
								<button class="edit"
									data-type="poing.reviews.actions.auth.modify2" data-id="123652"
									tabindex="-1">수정하기</button>
								<button class="delete"
									data-type="poing.reviews.actions.auth.remove" data-id="123652"
									tabindex="-1">삭제하기</button>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div id="review_pagination">
				<div class="page-list">
					<ul class="pagination" onselectstart="return false;">
						<li class="prevAll">&lt;&lt;</li>
						<li class="prev">&lt;</li>
						<li class="page active" data-page="1">1</li>
						<li class="next">&gt;</li>
						<li class="nextAll">&gt;&gt;</li>
					</ul>
				</div>
			</div>
		</div>
		<jsp:include page="WEB-INF/views/myPage/myPageSidebar.jsp" />
	</div>
</div>
<!-- container -->

<!-- footer -->
<jsp:include page="WEB-INF/views/common/footer.jsp"/>