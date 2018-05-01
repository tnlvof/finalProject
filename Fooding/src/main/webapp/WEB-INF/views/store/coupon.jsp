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
				<img src="http://c2.poing.co.kr/MRI-original/MjAxODAz/15202254255a9ccc91bbbde.jpeg">
				<p>
					가게이름 ${ sName }<br>
					<span>청담동/업종 ${ sCode }</span>
				</p>
			</div>
			<!-- photo -->
			
			<div class="coupon-info">
				<p>신규 다이닝 티켓</p>
				행주산성 전망 좋은 레스토랑 세트 메뉴 
			</div>
			<!-- coupon-info -->
			
			<div class="coupon-price">
				<p>${ c.cname }</p>
			</div>
			<!-- coupon-price -->
		</li>
		
	</c:forEach>
	</ul>
</div>
<!-- container -->

<jsp:include page="/WEB-INF/views/common/footer.jsp"/>