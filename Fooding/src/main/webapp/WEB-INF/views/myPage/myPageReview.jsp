<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<meta charset="UTF-8">

<!-- header -->
<jsp:include page="/WEB-INF/views/common/header.jsp"/>

<!-- css or js파일 연결 시키는 곳 -->
<link rel="stylesheet" href="resources/css/myPage.css">

<div class="container" id="container">
	<jsp:include page="/WEB-INF/views/myPage/myPageBanner.jsp"/>
	<div id="content_wrap">
		<div id="content" class="mypage">
			<jsp:include page="/WEB-INF/views/myPage/myPageTab.jsp"/>
			<div class="body empty">
				<div class="filter">
					<a>&nbsp;</a>
				</div>
				<!-- 리뷰가 없을 때 화면 -->
				<c:choose>
				<c:when test="${ empty reviewList }">
				<div class="blank">
					<div class="message">
						내 리뷰가 없습니다.<br>첫 리뷰를 작성해보세요!
					</div>
					<button class="disable" onclick="" tabindex="-1"></button>
				</div>
				</c:when>
					<c:otherwise>
					<c:forEach var="list" items="${ reviewList }">
						<div class="body review list review_wrap">
							<div class="review">
								<a class="place" href=""> <span class="thumbnail"
									style="display: block; background-image: url(&quot;http://c2.poing.co.kr/PIMAGE-default/5746a03f668a484de2000044.png&quot;);"></span>
									<p class="name">${ list.sName }</p>
									<p class="info">강남역 · ${ list.sCode }</p>
								</a>
								<div class="body">
									<div class="time  loaded" style="display: block;">${ list.enrollDate }</div>
									<div class="grade">
									<c:forEach begin="1" end="${ list.star }" step="1">
										<i class="icon star medium odd active" data-id="123652" data-index="0" style=""></i>
									</c:forEach>
									<c:if test="${ list.star != 5}">
									<c:forEach begin="1" end="${ 5 - list.star }" step="1">
										<i class="icon star medium odd" data-id="123652" data-index="0" style=""></i>
									</c:forEach>
									</c:if>
											<c:if test="${ list.star eq 1 }">
											<span> 1점 / 실망이에요. 두 번 다시오고 싶지 않아요.</span>
											</c:if>
											<c:if test="${ list.star eq 2 }">
											<span> 2점 / 평균 이하! 맛, 분위기, 서비스...전체적으로 다 별로예요!</span>
											</c:if>
											<c:if test="${ list.star eq 3 }">
											<span> 3점 / 보통이에요. 한 번 쯤은 다시 올 것 같아요.</span>
											</c:if>
											<c:if test="${ list.star eq 4 }">
											<span> 4점/ 인상적이네요. 꼭 추천하고 싶어요.</span>
											</c:if>
											<c:if test="${ list.star eq 5 }">
											<span> 5점 / 완벽 그 자체! 환상적이에요.</span>
											</c:if>
										</span>
									</div>
									<div class="text" data-truncated="">${ list.rContent }</div>
									<div class="action">
										<div class="article">
											<button class="edit" tabindex="-1">수정하기</button>
											<button class="delete" tabindex="-1"
												onclick="document.getElementById('reviewDelete').style.display='block'">삭제하기</button>
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
															style="margin-left: 1px; margin-top: 28.5px; width: 108.5px; display: block;" onclick="location.href='${deleteReview}'">예</div>
													    <c:url value="deleteReview.re" var="deleteReview">
							                                <c:param name="rid" value="${ list.rid }" />
						                             	</c:url>

													</div>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
						</c:forEach>
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
						</c:otherwise>
				</c:choose>
			</div>
			
		</div>
		<jsp:include page="/WEB-INF/views/myPage/myPageSidebar.jsp" />
	</div>
</div>
<!-- container -->

<!-- footer -->
<jsp:include page="/WEB-INF/views/common/footer.jsp"/>
