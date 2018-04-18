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
				<div class="filter" onclick="location.href='goMyPageQuestionForm.me'">
				    1:1문의 작성하기
				</div>
				<!-- 리뷰가 없을 때 화면 -->
				<div class="blank">
					<div class="message">
						문의 사항이 없습니다.<br>문의 사항이 생기시면 언제든지 남겨주세요!
					</div>
					<button class="disable" onclick="" tabindex="-1"></button>
				</div>
			</div>
			<div class="body question list question_wrap">
				<div class="question">
				    <a class="user" href=""> <span class="userProfile"
						style="display: block; background-image: url('/fooding/resources/images/myPage/default_image.png');"></span>
						<p class="userName">나푸딩</p>
						<div class="time loaded" style="display: block;">2018-04-12</div>
					</a>
					<div class="body">
						<div class="text" data-truncated="">예약을 했는데 예약리스트가 안보여요ㅠㅠㅠㅠㅠㅠ<br>예약을 했는데 예약리스트가 안보여요ㅠㅠㅠㅠㅠㅠ<br>예약을 했는데 예약리스트가 안보여요ㅠㅠㅠㅠㅠㅠ</div>
						<div class="action">
							<div class="article">
								<button class="edit" tabindex="-1">수정하기</button>
								<button class="delete" tabindex="-1" onclick="document.getElementById('questionDelete').style.display='block'">삭제하기</button>
								<div id="questionDelete" class="w3-modal">
									<div class="w3-modal-content">
										<div class="w3-container">
											<div class="confirmBackground" style="display: block;"></div>
											<div id="default" class="confirmPopup"
												style="padding: 20px 40px; margin-left: -110.5px; margin-top: -26.5px; display: block;">
												<div class="confirmMessage">문의를 삭제하시겠습니까?</div>
											</div>
											<div class="confirmNo"
												style="margin-left: -110.5px; margin-top: 28.5px; width: 108.5px; display: block;"
												onclick="document.getElementById('questionDelete').style.display='none'">아니오</div>
											<div class="confirmOk"
												style="margin-left: 1px; margin-top: 28.5px; width: 108.5px; display: block;">예</div>

										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="answer_list">
					<p class="text">아직 답변이 등록되지 않았습니다.</p>
					</div>
					<div class="answer_list on">
						<div class="answer">
							<div class="author">
								<p class="time loaded" style="display: block;">2018-04-12</p>
								<a class="name">관리자</a>
								<p class="text">죄송합니다 고객님<br>시스템 오류로 인하여 예약이 등록되지 않은 것 같습니다. 번거로우시겠지만 다시 예약 부탁드립니다.</p>

								<div class="action">
									<button type="button" class="edit">수정하기</button>
									<button type="button" class="delete" onclick="document.getElementById('answerDelete').style.display='block'">삭제하기</button>
								</div>
								<div id="answerDelete" class="w3-modal">
									<div class="w3-modal-content">
										<div class="w3-container">
											<div class="confirmBackground" style="display: block;"></div>
											<div id="default" class="confirmPopup"
												style="padding: 20px 40px; margin-left: -110.5px; margin-top: -26.5px; display: block;">
												<div class="confirmMessage">답변을 삭제하시겠습니까?</div>
											</div>
											<div class="confirmNo"
												style="margin-left: -110.5px; margin-top: 28.5px; width: 108.5px; display: block;"
												onclick="document.getElementById('answerDelete').style.display='none'">아니오</div>
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
		</div>
		<jsp:include page="/WEB-INF/views/myPage/myPageSidebar.jsp" />
	</div>
</div>
<!-- container -->

<!-- footer -->
<jsp:include page="/WEB-INF/views/common/footer.jsp"/>
