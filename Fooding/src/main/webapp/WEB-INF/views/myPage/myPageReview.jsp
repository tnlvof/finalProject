<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<meta charset="UTF-8">

<!-- header -->
<jsp:include page="/WEB-INF/views/common/header.jsp"/>

<!-- css or js파일 연결 시키는 곳 -->
<link rel="stylesheet" href="resources/css/myPage.css">

<div class="container" id="container">
	<jsp:include page="/WEB-INF/views/myPage/myPageBanner.jsp"/>
	<div id="content_wrap">
		<div id="content" class="mypage">
			<ul class="tab">
				<li class="item" onclick="location.href='goMyPage.me'">예약</li>
				<li class="item" onclick="location.href='goMyPageReview.me'">리뷰</li>
				<li class="item" onclick="location.href='goMyPageQuestions.me'">1:1 문의</li>
			</ul>
			<div class="body empty">
				<div class="filter">
					<a>&nbsp</a>
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
				<div class="review"	data-place-name="브라더후드 키친">
					<a class="place" href=""> <span class="thumbnail"
						style="display: block; background-image: url(&quot;http://c2.poing.co.kr/PIMAGE-default/5746a03f668a484de2000044.png&quot;);"></span>
						<p class="name">브라더후드 키친</p>
						<p class="info">강남역 · 술집</p>
					</a>
					<div class="body">
						<div class="time  loaded" style="display: block;">2018-04-12</div>
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
								data-index="7" style=""></i><i
								class="icon star medium odd active" data-id="123652"
								data-index="8" style=""></i><i class="icon star medium even "
								data-id="123652" data-index="9" style=""></i> <span
								style="display: inline-block; vertical-align: super;"
								data-id="123652" data-grade="80">0.5점 / 노 코멘트. 두 번 다시 오고
								싶지 않아요.<br>1점 / 실망이에요. 집에서 먹는게 나을 뻔 했어요.<br>1.5점 / 맛,
								분위기, 서비스...전체적으로 다 별로예요!<br>2점 / 평균 이하! 이 정도 레스토랑은 어디에나 있죠.<br>2.5점
								/ 다 괜찮은데 뭔가 조금 아쉬워요!<br>3점 / 보통이에요. 이 정도면 괜찮네요.<br>3.5점
								/ 평균 이상! 한 번 쯤은 다시 올 것 같아요.<br>4.0 / 인상적이네요. 꼭 추천하고 싶어요.<br>4.5점
								/ 오랫동안 기억에 남을 만한 곳이에요.<br>5점 / 완벽 그 자체! 환상적이에요.
							</span>
						</div>
						<div class="text" data-truncated="">치킨 와플 진짜 맛있어요ㅠㅠㅠㅠㅠ 메이플
							시럽이랑 치킨조합은 처음이었는데 너무 잘어울려서 깜짝놀랐어요..! 다음에 다른 메뉴도 먹어보고싶어요~~~~~</div>
						<div class="action">
							<div class="article">
								<button class="edit" tabindex="-1">수정하기</button>
								<button class="delete" tabindex="-1" onclick="document.getElementById('reviewDelete').style.display='block'">삭제하기</button>
								<div id="reviewDelete" class="w3-modal">
									<div class="w3-modal-content">
										<div class="w3-container">
											<div class="confirmBackground" style="display: block;"></div>
											<div id="default" class="confirmPopup"
												style="padding: 20px 40px; margin-left: -110.5px; margin-top: -26.5px; display: block;">
												<div class="confirmMessage">리뷰를 삭제하시겠습니까?</div>
											</div>
											<div class="confirmNo"
												style="margin-left: -110.5px; margin-top: 28.5px; width: 108.5px; display: block;"
												onclick="document.getElementById('reviewDelete').style.display='none'">아니오</div>
											<div class="confirmOk"
												style="margin-left: 1px; margin-top: 28.5px; width: 108.5px; display: block;">예</div>

										</div>
									</div>
								</div>
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
		<jsp:include page="/WEB-INF/views/myPage/myPageSidebar.jsp" />
	</div>
</div>
<!-- container -->

<!-- footer -->
<jsp:include page="/WEB-INF/views/common/footer.jsp"/>