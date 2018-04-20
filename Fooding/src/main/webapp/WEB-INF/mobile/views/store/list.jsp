<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!-- header -->
<jsp:include page="/WEB-INF/mobile/views/common/header.jsp"/>

<link rel="stylesheet" href="/fooding/resources/css/m/store/list.css" />

<header data-role="header" class="header">
	<button type="button" id="go-back">&lt;</button>
	<h2>검색결과 126건</h2>
</header>



	<!-- 검색결과 없을 때 -->
	<div class="no-result" style="display: none">
		<i class="icon-search"></i>
		검색 결과가 없습니다.
	</div>
	<!-- no-result -->
	
	<!-- 검색 리스트 -->
	<ul class="srch-rset">
		<li>
			<div class="bg"  style="background-image: url(/fooding/resources/images/restaurants/restaurant-photo06.jpeg)"></div>
			
			<div class="store-info">
				<p>스터번 <span class="">역삼동/선릉역 · 양식</span></p>
				<p>역삼동에 위치한 편안하게 즐기기 좋은 아메리칸 비스트로</p>
				<div class="rank">
					<i class="icon-star"></i>
					<i class="icon-star"></i>
					<i class="icon-star"></i>
					<i class="icon-star rankOff"></i>
					<i class="icon-star rankOff"></i>
					&nbsp; 3점 / 5만원 미만(2인 기준)
				</div><!-- rank -->
			</div><!-- store-info -->
		</li>
		
		<li>
			<div class="bg"  style="background-image: url(/fooding/resources/images/restaurants/restaurant-photo05.jpeg)"></div>
			
			<div class="store-info">
				<p>스터번 <span class="">역삼동/선릉역 · 양식</span></p>
				<p>역삼동에 위치한 편안하게 즐기기 좋은 아메리칸 비스트로</p>
				<div class="rank">
					<i class="icon-star"></i>
					<i class="icon-star"></i>
					<i class="icon-star"></i>
					<i class="icon-star rankOff"></i>
					<i class="icon-star rankOff"></i>
					&nbsp; 3점 / 5만원 미만(2인 기준)
				</div><!-- rank -->
			</div><!-- store-info -->
		</li>
		
		<li>
			<div class="bg"  style="background-image: url(/fooding/resources/images/restaurants/restaurant-photo01.jpeg)"></div>
			
			<div class="store-info">
				<p>스터번 <span class="">역삼동/선릉역 · 양식</span></p>
				<p>역삼동에 위치한 편안하게 즐기기 좋은 아메리칸 비스트로</p>
				<div class="rank">
					<i class="icon-star"></i>
					<i class="icon-star"></i>
					<i class="icon-star"></i>
					<i class="icon-star rankOff"></i>
					<i class="icon-star rankOff"></i>
					&nbsp; 3점 / 5만원 미만(2인 기준)
				</div><!-- rank -->
			</div><!-- store-info -->
		</li>
		
		<li>
			<div class="bg"  style="background-image: url(/fooding/resources/images/restaurants/restaurant-photo01.jpeg)"></div>
			
			<div class="store-info">
				<p>스터번 <span class="">역삼동/선릉역 · 양식</span></p>
				<p>역삼동에 위치한 편안하게 즐기기 좋은 아메리칸 비스트로</p>
				<div class="rank">
					<i class="icon-star"></i>
					<i class="icon-star"></i>
					<i class="icon-star"></i>
					<i class="icon-star rankOff"></i>
					<i class="icon-star rankOff"></i>
					&nbsp; 3점 / 5만원 미만(2인 기준)
				</div><!-- rank -->
			</div><!-- store-info -->
		</li>
	</ul>
	<!-- srch-rset -->

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
