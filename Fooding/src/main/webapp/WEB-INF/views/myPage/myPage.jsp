<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<meta charset="UTF-8">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">

<!-- header -->
<jsp:include page="/WEB-INF/views/common/header.jsp"/>

<!-- css or js파일 연결 시키는 곳 -->
<link rel="stylesheet" href="/fooding/resources/css/myPage.css">

<div class="container" id="container">
	<jsp:include page="/WEB-INF/views/myPage/myPageBanner.jsp" />
	<div id="content_wrap">
		<div id="content" class="mypage">
			<jsp:include page="/WEB-INF/views/myPage/myPageTab.jsp"/>
			<div id="reservation" class="body empty">
				<div class="filter">
					<a href="goMyPage.me" class="">방문 예정 예약</a> <a
						href="beforeReserv.rv" class="">지나간 예약</a>
				</div>
				<!-- 예약이 없을 때 화면 -->
				<c:choose>
				<c:when test="${ empty reservList }">
				<div class="blank">
					<div class="message">
						예약이 없습니다.<br>지금 레스토랑에 예약해보시겠어요?
					</div>
					<button class="disable" onclick="" tabindex="-1"></button>
				</div>
				</c:when>
				<c:otherwise>
				<!-- 예약화면 -->
				<c:forEach var="list" items="${ reservList }">
				<div class="list">
					<div class="reservation">
						<div class="i_wrap image">
							<div class="image border_radius hard"
								style="background-image: url(&quot;http://c2.poing.co.kr/PIMAGE-default/5746a03f668a484de2000044.png&quot;);"></div>
						</div>
						<div class="info">
							<div class="name">
								<a href="#">${ list.sName }</a> <!-- <span
									class="label blue border_radius soft">예약 대기</span> <span
									class="label green border_radius soft">예약 확정</span> <span
									class="label blue border_radius soft">변경 대기</span> -->
							</div>
							<input type="hidden" value="${ list.rvid }" class="reservId">
							<div class="date">예약정보: ${ list.rDate } / ${ list.rTime }</div>
							<div class="party_size">인원: ${ list.rPeople }명</div>
							<c:url value="cancelReserv.rv" var="cancelReserv">
							  <c:param name="rvid" value="${ list.rvid }" />
							</c:url>
						</div>
						

						<!-- <button class="ccBtn red border_radius soft" tabindex="-1" id="ccBtn">변경
							/ 취소</button> -->
							<button class="ccBtn red border_radius soft" tabindex="-1" id="ccBtn" onclick="document.getElementById('reservCancel').style.display='block'">예약 취소</button>
							<div id="reservCancel" class="w3-modal">
												<div class="w3-modal-content">
													<div class="w3-container">
														<div class="confirmBackground" style="display: block;"></div>
														<div id="default" class="confirmPopup"
															style="padding: 20px 40px; margin-left: -110.5px; margin-top: -26.5px; display: block;">
															<div class="confirmMessage">예약을 취소하시겠습니까?</div>
														</div>
														<div class="confirmNo"
															style="margin-left: -110.5px; margin-top: 28.5px; width: 108.5px; display: block;" onclick="document.getElementById('reservCancel').style.display='none'">아니오</div>
														<div class="confirmOk"
															style="margin-left: 1px; margin-top: 28.5px; width: 108.5px; display: block;" onclick="location.href='${cancelReserv}'">예</div>
													</div>
												</div>
											</div>
							
							<script>
							$(".ccBtn").click(function(){
								var rvid = $(this).parent().find('.reservId').val();
								console.log(rvid);
								<c:forEach var="l" items="${ reservList }">
									if(rvid == ${ l.rvid }){
										$(".rPeople").val('${l.rPeople}');
										$(".rDate").text('${l.rDate}');
										$(".rTime").text('${l.rTime}');
									}
								</c:forEach>
							    		/* document.getElementById('changeCancel').style.display='block'; */
							});
							</script>
					</div>
				</div>
				</c:forEach>
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
