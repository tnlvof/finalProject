<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!-- header -->
<jsp:include page="/WEB-INF/mobile/views/common/header.jsp"/>

<link rel="stylesheet" href="/fooding/resources/css/m/store/detail.css" />
<header data-role="header" class="header">
	<button type="button" id="go-back">&lt;</button>
	<h2>장 스테이크 하우스</h2>
</header>


<div class="wrap">
	<div class="storeView">
		<img src="/fooding/resources/images/restaurants/restaurant-photo01.jpeg">
	</div>
	
	<div class="storeInfo">
		<p class="name">장 스테이크 하우스</p>
		<p class="location">압구정 로데오에 합리적인 가격의 스테이크를 만날 수 있는 레스토랑</p>
		
		<div class="score">
			<i class="icon-star"></i>
			<i class="icon-star"></i>
			<i class="icon-star"></i>
			<i class="icon-star"></i>
			<i class="icon-star rankOff"></i>
		</div> 
		
		<p class="info">4점 / 로데오거리(압구정) · 양식</p>
	</div>
	<!-- storeInfo -->

</div>
<!-- wrap -->




<script>
//뒤로가기
$(document).ready(function() {
	$('#go-back').click(function() {
		parent.history.back();
		return false;
	});
});
</script>

<!-- footer -->
<jsp:include page="/WEB-INF/mobile/views/common/gnb.jsp"/>
