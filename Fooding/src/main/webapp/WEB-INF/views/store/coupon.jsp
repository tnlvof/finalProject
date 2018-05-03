<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<jsp:include page="/WEB-INF/views/common/header.jsp"/>
<link rel="stylesheet" href="/fooding/resources/css/couponList.css">



<div class="title-box">
	<div class="bg-black">
		<p>
			푸딩 다이닝 티켓을 통해 최고의 레스토랑들을<br>
			합리적인 가격에 만나보세요.
		</p>
		<span>Curated by Fooding</span>
	</div>
</div>


<div class="container">
	<ul class="coupons">
	<c:forEach var="c" items="${ couponList }" >
		<li>
			<div class="photo">
				<c:choose>
					<c:when test="${ empty c.couponList[0].mainPhoto }">
						<img src="http://c2.poing.co.kr/PIMAGE-original/MjAxNzA2/14966298755934c273391c0.jpeg" onclick="location.href='goDetailCoupon.st'">
					</c:when>
					<c:otherwise>
						<img src="${ contextPath }/resources/uploadFiles/${ c.couponList[0].mainPhoto }" onclick="location.href='goDetailCoupon.st'">
					</c:otherwise>
				</c:choose>
				<p>
					 ${ c.couponList[0].sName}<br>
					<span>${ c.couponList[0].keyword }/${ c.couponList[0].sCode }</span>
				</p>
			</div>
			<!-- photo -->
			
			<div class="coupon-info">
				<p>신규 다이닝 티켓</p>
				${ c.couponList[0].description }
			</div>
			<!-- coupon-info -->
			
			<div class="coupon-price">
				<p>${ c.cname }</p>
			</div>
			<!-- coupon-price -->
		</li>
		
	</c:forEach>
	</ul>


	<div id="pageIngArea" align="center">
		<c:if test="${ pi.currentPage <= 1 }">
			[이전] &nbsp;
		</c:if>
		
		<c:if test="${ pi.currentPage > 1 }">
			<c:url var="bListBack" value="/bestCoupon.st">
				<c:param name="currentPage" value="${ pi.currentPage -1 }" />
			</c:url>
			<a href="${ bListBack }">[이전]</a> &nbsp;
		</c:if>

		<c:forEach var="p" begin="${ pi.startPage }" end="${ pi.endPage }">
			<c:if test="${ p eq pi.currentPage }">
				<b style="color: red; font-size: 20px;">${ p }</b>
			</c:if>
			
			<c:if test="${ p ne pi.currentPage }">
				<c:url var="bListCheck" value="bestCoupon.st">
					<c:param name="currentPage" value="${ p }"/>
				</c:url>
				<a href="${ bListCheck }">${ p }</a>
			</c:if>
		</c:forEach>

		<c:if test="${ pi.currentPage >= pi.maxPage }">
			&nbsp; [다음]
		</c:if>
		<c:if test="${ pi.currentPage < pi.maxPage }">
			<c:url var="bListEnd" value="bestCoupon.st">
				<c:param name="currentPage" value="${ pi.currentPage + 1 }" />
			</c:url>
			<a href="${ bListEnd }">&nbsp; [다음]</a>
		</c:if>

	</div>
</div>
<!-- container -->

<jsp:include page="/WEB-INF/views/common/footer.jsp"/>