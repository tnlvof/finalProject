<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<meta charset="UTF-8">

<!-- header -->
<jsp:include page="/WEB-INF/views/common/header.jsp"/>

<!-- css or js파일 연결 시키는 곳 -->
<link rel="stylesheet" href="resources/css/myPage.css">

<div class="container" id="container">
	<jsp:include page="/WEB-INF/views/myPage/myPageBanner.jsp" />
	<div id="content_wrap">
		<div id="content" class="mypage">
			<jsp:include page="/WEB-INF/views/myPage/myPageTab.jsp"/>
			<div id="reservation" class="body empty">
			    <c:if test="${ loginUser.mCode == '일반' }">
				<div class="filter" onclick="location.href='goMyPageQuestionForm.me'">
				    1:1문의 작성하기 <input type="hidden" name="key" value="memberMypage">
				</div>
				</c:if>
				<c:if test="${ loginUser.mCode == '업체' }">
				<div class="filter">
					<a>&nbsp;</a>
				</div>
				</c:if>
				<!-- 리뷰가 없을 때 화면 -->
				<c:if test="${empty boardList}">					
					<div class="blank">
					    <c:if test="${ loginUser.mCode == '일반' }">
						<div class="message">
							문의 사항이 없습니다.<br>문의 사항이 생기시면 언제든지 남겨주세요!
						</div>
						<button class="disable" onclick="" tabindex="-1"></button>
						</c:if>
						<c:if test="${ loginUser.mCode == '업체' }">
						<div class="message">
							등록된 문의 사항이 없습니다.
						</div>
						<button class="disable" onclick="" tabindex="-1"></button>
						</c:if>
					</div>
				</c:if>
			</div>
						
			<c:forEach  items="${boardList}" var="e">
			<div class="body question list question_wrap">
				<div class="question">
				    <a class="user" href=""> <span class="userProfile"
						style="display: block; background-image: url('/fooding/resources/images/myPage/default_image.png');"></span>
						<p class="userName">	<c:out value="${e.mCode }"/> <input type="text" value="${e.bid }" > </p>
						<div class="time loaded" style="display: block;"> <c:out value="${e.enrollDate }"></c:out></div>
					</a>
					<div class="body">
						<div class="text" data-truncated=""><c:out value="${e.bTitle }"></c:out></div>
						<div class="action">
							<!-- <div class="article">
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
												style="margin-left: 1px; margin-top: 28.5px; width: 108.5px; display: block;" onclick="deleteQuestion()">예</div>

											
										</div>
									</div>
								</div>
							</div> -->
						</div>
					</div>
					<c:choose>
					<c:when test="${empty e.answer }">
						<div class="answer_list">
						<p class="text">아직 답변이 등록되지 않았습니다.</p>
						</div>
					</c:when> 
					<c:otherwise>
					<div class="answer_list on">
						<div class="answer">
							<div class="author">
								<p class="time loaded" style="display: block;">  <c:out value=" ${e.answerDate }"></c:out>  </p>
								<a class="name">관리자</a>
								<p class="text"><c:out value="${e.answer }"></c:out></p>

								
								
							</div>
						</div>
					</div>
					</c:otherwise>
					</c:choose>
				</div>
			</div>
			</c:forEach>
		<div id="pagingArea" align="center" style="font-size: 12px;">		
			<c:if test="${pi.currentPage <= 1}">
				< &nbsp; 
			</c:if>
			<c:if test="${pi.currentPage > 1 }">
				<c:url var ="blistBack" value="goMyPageQuestions.bo">
					<c:param name="currentPage" value="${pi.currentPage -1}"></c:param>
				</c:url>
				<a href="${blistBack }"> &nbsp;< </a> &nbsp;
			</c:if>
			
			<c:forEach var="p" begin="${pi.startPage }" end="${pi.endPage }" >
				<c:if test="${p eq pi.currentPage }">
					<font  size="2"><b style="color:#ec3e43;">${p } &nbsp;</b> </font>
				</c:if>
				<c:if test="${p ne pi.currentPage }">
					<c:url var="blistCheck" value="goMyPageQuestions.bo" >
						<c:param name="currentPage" value="${p }"/>
					</c:url>
					<a href="${blistCheck }"> ${p } &nbsp;</a>
				</c:if>
			</c:forEach>
			
			<c:if test="${pi.currentPage <= pi.maxPage}">
				 >
			</c:if>
			<c:if test="${pi.currentPage < pi.maxPage} ">
				<c:url var="blistEnd" value="goMyPageQuestions.bo">
					<c:param name="currentPage" value="${pi.currentPage +1 }"/>
				</c:url>
				<a href="${ blistEnd}"> &nbsp; > </a>
			</c:if>
	</div>
		</div>
		<jsp:include page="/WEB-INF/views/myPage/myPageSidebar.jsp" />
	</div>
</div>
<!-- container -->

<!-- footer -->
<jsp:include page="/WEB-INF/views/common/footer.jsp"/>
