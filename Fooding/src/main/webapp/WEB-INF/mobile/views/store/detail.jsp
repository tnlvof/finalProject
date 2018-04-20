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

	<ul class="tab">
		<li class="tablinks on" onclick="openCity(event, 'London')">정보</li>
		<li class="tablinks" onclick="openCity(event, 'Paris')">리뷰</li>
		<li class="tablinks" onclick="openCity(event, 'Tokyo')">메뉴</li>
	</ul>
	
	
	<div id="London" class="tabcontent" style="display: block;">
		<h3>London</h3>
		<p>London is the capital city of England.</p>
	</div>

	<div id="Paris" class="tabcontent">
		<h3>Paris</h3>
		<p>Paris is the capital of France.</p>
	</div>

	<div id="Tokyo" class="tabcontent">
		<h3>Tokyo</h3>
		<p>Tokyo is the capital of Japan.</p>
	</div>


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

//tab메뉴
function openCity(evt, cityName) {
	var i, tabcontent, tablinks;
	tabcontent = document.getElementsByClassName("tabcontent");
	for (i = 0; i < tabcontent.length; i++) {
		tabcontent[i].style.display = "none";
	}
	tablinks = document.getElementsByClassName("tablinks");
	for (i = 0; i < tablinks.length; i++) {
		tablinks[i].className = tablinks[i].className.replace(
				" on", "");
	}
	document.getElementById(cityName).style.display = "block";
	evt.currentTarget.className += " on";
}
</script>

<!-- footer -->
<jsp:include page="/WEB-INF/mobile/views/common/gnb.jsp"/>
