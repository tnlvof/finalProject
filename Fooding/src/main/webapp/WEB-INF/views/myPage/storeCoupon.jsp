<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<meta charset="UTF-8">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">

<!-- header -->
<jsp:include page="/WEB-INF/views/common/header.jsp" />

<link rel="stylesheet" href="/fooding/resources/css/myPage.css">
<link rel="stylesheet" href="/fooding/resources/css/storePage.css">
<link rel="stylesheet" href="/fooding/resources/css/storeCoupon.css">

<div class="container" id="container">
	<jsp:include page="/WEB-INF/views/myPage/myPageBanner.jsp" />
	<div id="content_wrap">
		<div id="content" class="mypage">

			<jsp:include page="/WEB-INF/views/myPage/myPageTab.jsp" />

			<div id="reservation" class="body empty">
				<div class="filter">
					<!-- <a href="#" class="">방문 예정 예약</a> <a href="#" class="">지나간 예약</a> -->
				</div>

				<!-- 예약화면 -->
				<div class="list">
					<form action="insertCoupon.st" method="post">
						<h4>쿠폰 등록하기</h4>
						<input type="hidden" value="${ loginUser.mid }" name="mid" />
						<ul class="coupon-form">
							<li>
								<label>쿠폰명</label>
								<input type="text" name="cname" placeholder="쿠폰명을 입력하세요" />
							</li>
							<li>
								<label>이용조건</label>
								<input type="text" name="cterm" placeholder="이용조건을 입력하세요" />
							</li>
							<li>
								<label>사용방법</label>
								<input type="text" name="cmethod" placeholder="사용방법을 입력하세요" />
							</li>
							<li>
								<label>쿠폰 종료일</label>
								<input type="date" name="cdate" id="cdate" />
							</li>
						</ul>
						<button type="submit" class="coupon-btn">쿠폰 등록 하기</button>

					</form>
					
					
				</div>
				<!-- list -->
			</div>
			<!-- reservation -->
			
			<!-- 입력한 쿠폰 정보 -->
			<div class="coupon-wrap">
				<h4>등록한 쿠폰 </h4>
				<c:choose>
					<c:when test="${ empty couponList }">
						<p style="text-align:center;line-height:15em">등록된 쿠폰이 없습니다.</p>
					</c:when>
					
					<c:otherwise>
						<ul class="coupon-each">
						<c:forEach var="c" items="${ couponList }">
							<li>
								<div class="coupons coupon-head">쿠폰</div>
								<!-- coupon-head -->
			
								<div class="coupons coupon-body">
									<label class="cname">쿠폰명 : </label>
									<span class="cname">${ c.cname }</span>
									<br>
									<br>
									<label class="ccondition">이용조건 : </label>
									<span class="ccondition">${ c.cterm }&nbsp;</span>
									<br>
									<label class="cmethod">사용방법 : </label>
									<span class="cmethod">${ c.cmethod }&nbsp;</span>
								</div>
								<!-- coupon-body -->
			
								<div class="coupons coupon-foot">
									<label>쿠폰 사용 기간</label>
									<p class="cdate">${ c.cdate } 까지</p>
								</div>
								<!-- coupon-foot -->
							</li>
						</c:forEach>
						</ul>
					</c:otherwise>
				</c:choose>
				
			</div>
			<!-- coupon-wrap -->
		</div>
		<!-- content -->



		<jsp:include page="/WEB-INF/views/myPage/myPageSidebar.jsp" />



	</div>



</div>
<!-- container -->

<!-- footer -->
<jsp:include page="/WEB-INF/views/common/footer.jsp" />
