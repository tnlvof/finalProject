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
				    <c:if test="${ loginUser.mCode == '일반' }">
					<div class="message">
						내 리뷰가 없습니다.<br>첫 리뷰를 작성해보세요!
					</div>
					<button class="disable" onclick="" tabindex="-1"></button>
					</c:if>
					<c:if test="${ loginUser.mCode == '업체' }">
					<div class="message">
						등록된 리뷰가 없습니다.
					</div>
					<button class="disable" onclick="" tabindex="-1"></button>
					</c:if>
				</div>
				</c:when>
					<c:otherwise>
					<c:forEach var="list" items="${ reviewList }">
					<c:set var="reviewId" value="${ list.rid}"></c:set>
					<c:url value="deleteReview.re" var="deleteReview">
					    <c:param name="reviewId" value="${ reviewId }" />
					</c:url>
						<div class="body review list review_wrap">
							<div class="review">
								<a class="place" href=""> <span class="thumbnail"
									style="display: block; background-image: url(${ list.mainPhoto });"></span>
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
								            <input type="hidden" value="${ list.rid }" class="reviewId">
											<!-- <button class="edit" tabindex="-1">수정하기</button> -->
											<button class="delete" tabindex="-1"
												onclick="document.getElementById('reviewDelete').style.display='block'">삭제</button>
											<input type="hidden" value="" class="reid">
											
										</div>
									</div>
								</div>
							<script>
							$(function(){
								$(".delete").click(function(){
									var rid = $(this).parent().find('.reviewId').val();
									console.log("삭제버튼 : "+rid);
								    
								    $(".reid").val(rid);
								    		
								 });
								
								$(".confirmOk").click(function(){
									console.log("컨펌버튼 : "+ $(".reid").val());
									
									var reid = $(".reid").val();
									
									location.href="deleteReview.re?reviewId="+reid;
								});
							});
							 
							 
							</script>
							</div>
						</div>
						</c:forEach>

                        <br>
						<div id="pageIngArea" align="center">
							<c:if test="${ pi.currentPage <= 1 }">
							<< &nbsp;
		                    </c:if>
							<c:if test="${ pi.currentPage > 1 }">
								<c:url var="bListBack" value="/goMyPageReview.me">
									<c:param name="currentPage" value="${ pi.currentPage -1 }" />
								</c:url>
								<a href="${ bListBack }"><<</a> &nbsp;
		                    </c:if>

							<c:forEach var="p" begin="${ pi.startPage }"
								end="${ pi.endPage }">
								<c:if test="${ p eq pi.currentPage }">
									<b style="color: #ff5a5f;">${ p }</b>
								</c:if>
								<c:if test="${ p ne pi.currentPage }">
									<c:url var="bListCheck" value="goMyPageReview.me">
										<c:param name="currentPage" value="${ p }" />
									</c:url>
									<a href="${ bListCheck }">${ p }</a>
								</c:if>
							</c:forEach>

							<c:if test="${ pi.currentPage >= pi.maxPage }">
		                    &nbsp; >>
	                    	</c:if>
							<c:if test="${ pi.currentPage < pi.maxPage }">
								<c:url var="bListEnd" value="goMyPageReview.me">
									<c:param name="currentPage" value="${ pi.currentPage + 1 }" />
								</c:url>
								<a href="${ bListEnd }">&nbsp; >></a>
							</c:if>

						</div>
					</c:otherwise>
				</c:choose>
			</div>
			
		</div>
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
		<jsp:include page="/WEB-INF/views/myPage/myPageSidebar.jsp" />
	</div>
</div>
<!-- container -->

<!-- footer -->
<jsp:include page="/WEB-INF/views/common/footer.jsp"/>
