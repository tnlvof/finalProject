<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<meta charset="UTF-8">

<!-- header -->
<jsp:include page="/WEB-INF/views/common/header.jsp"/>

<!-- css or js파일 연결 시키는 곳 -->
<link rel="stylesheet" href="/fooding/resources/css/restaurants/detail.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

<div class="container">
	<!-- 
		banner-wrap의 background-image가 tab에 있는 포토 중 가장 첫번째 사진이
		background로 들어가는 것
		그래서 인라인 스타일로 지정해줌
	-->
	<div class="banner-wrap">
		<div class="i_wrap background">
			<!-- 프로필사진 배경 넣어주세요 -->
			<i class="image profile_image shading middle"
				style="background-image: url(/fooding/resources/images/main/key_visiual01.jpg)"></i>
		</div>
	
		<div class="i_wrap blur background">
			<!-- 프로필사진 배경 넣어주세요 -->
			<i class="image profile_image shading middle"
				style="background-image: url(/fooding/resources/images/main/key_visiual01.jpg)"></i>
		</div>
		
		<div class="inner_wrap">
			<div class="banner">
				<div class="title">
					<span class="restaurant-name">${ s.restName }</span>
					<span class="restuarant-info">장충동 / 금호동 / 일식</span>
					<span class="reservation-info">예약 802건 / 리뷰 23건 / 조회 7028건</span>
				</div>
				<!-- title -->
				
				<ul class="ban-con">
					<li class="rank-wrap">
						<label>별점</label>
						<div class="rank-box">
							<i class="fa fa-star"></i>
							<i class="fa fa-star"></i>
							<i class="fa fa-star"></i>
							<i class="fa fa-star"></i>
							<i class="fa fa-star no-star"></i>
						</div>
						<span class="num-rank">4.0</span>
						<!-- rank-box -->
					</li>
					
					<li>
						<label>전화번호</label>
						02-2270-3292
					</li>
					
					<li>
						<label>주소</label>
						서울시 중구 장충동 2가 286-54 그랜드 앰배서더 서울 풀만 2층
					</li>
					
					<li>
						<label>영업시간</label>
						12:00-15:00 (L.O 14:00), 18:00-22:00(L.0 21:00)
					</li>
					
					<li>
						<label>휴무일</label>
						일요일, 명절
					</li>
					
					<li>
						<label>예산(2인 기준)</label>
						16만원 이상
					</li>
					
					<li><button type="button" class="asap-reservation">즉시 예약하기</button></li>
				</ul>
				
			</div>
			<!-- banner -->
		</div>
		<!-- inner_wrap -->
	</div>
	<!-- banner-wrap -->


	<div class="detail-wrap">
		<div class="detail-content">
			<!-- 탭메뉴 버튼 -->
			<ul class="tab">
				<li class="tablinks active" onclick="openTab(event, 'tabInfo')">정보</li>
				<!-- <li class="tablinks" onclick="openTab(event, 'tabPhoto')">포토</li> -->
				<li id="reviewBtn"class="tablinks" onclick="openTab(event, 'tabReview')">리뷰</li>
				<li class="tablinks" onclick="openTab(event, 'tabMenu')">메뉴</li>
				<li class="tablinks" onclick="openTab(event, 'tabCoupon')">쿠폰</li>
				<li class="tablinks" onclick="openTab(event, 'tabMap')">지도</li>
			</ul>
			<!-- tab -->
			
			<div id="tabInfo" class="tabcontent" style="display:block">
				<jsp:include page="tab/tabInfo.jsp"/>
			</div>
			<!-- tabInfo -->
			
			<%-- <div id="tabPhoto" class="tabcontent">
				<jsp:include page="tab/tabPhoto.jsp"/>
			</div> --%>
			<!-- tabPhoto -->
			
			<div id="tabReview" class="tabcontent tabReview">
				<!-- 리뷰 작성 폼 (탭 메뉴 상단에 위치) -->
				<jsp:include page="tab/tabReviewForm.jsp"/>
			</div>
			<!-- tabReview -->
			
			<!-- 리뷰가 있을 때 없을 때 보여지는 곳 -->
			<jsp:include page="tab/tabReviews.jsp"/>
			
		
			
			<div id="tabMenu" class="tabcontent">
				<jsp:include page="tab/tabMenu.jsp"/>
			</div>
			<!-- tabMenu -->
			
			<div id="tabCoupon" class="tabcontent">
				<jsp:include page="tab/tabCoupon.jsp"/>
			</div>
			<!-- tabCoupon -->
			
			<div id="tabMap" class="tabcontent">
				<jsp:include page="tab/tabMap.jsp"/>
			</div>
			<!-- tabMap -->
		</div>
		<!-- detail-content -->
	</div>
	<!-- content-wrap -->
</div>
<!-- container -->


<!-- detail에 있는 javascript -->
<script type="text/javascript" src="/fooding/resources/js/detail.js"></script>


<!-- footer -->
<jsp:include page="/WEB-INF/views/common/footer.jsp"/>