<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!-- header -->
<jsp:include page="/WEB-INF/mobile/views/common/header.jsp"/>

<link rel="stylesheet" href="http://idangero.us/swiper/dist/css/swiper.min.css" />
<link rel="stylesheet" href="/fooding/resources/css/m/main/main.css" />

<header data-role="header" class="header">
	<h1 class="logo">Fooding</h1>
	
	<div class="srch-area">
		<input type="search" class="srch" placeholder="키워드 / 지역 / 음식을 검색하세요" />
		<button type="submit" class="srch-btn">검색</button>
	</div>
	<!-- srch-area -->
</header>

	<!-- Swiper slider -->
	<div class="swiper-container mainSlider">
		<div class="swiper-wrapper">
			<div class="swiper-slide"><img src="/fooding/resources/images/main/key_visiual01.jpg"></div>
			<div class="swiper-slide"><img src="/fooding/resources/images/main/key_visiual02.jpg"></div>
			<div class="swiper-slide"><img src="/fooding/resources/images/main/key_visiual03.jpg"></div>
			<div class="swiper-slide"><img src="/fooding/resources/images/main/key_visiual04.jpg"></div>
			<div class="swiper-slide"><img src="/fooding/resources/images/main/key_visiual05.jpg"></div>
		</div><!-- swiper-wrapper -->
	</div><!-- swiper-conainer -->


	<div class="container">
		<div class="ticket">
			<h3>다이닝 티켓</h3>

			<!-- Swiper -->
			<div class="swiper-container">
				<div class="swiper-wrapper">
					<div class="swiper-slide" style="background-image:url('/fooding/resources/images/main/ticket01.png')">
						<div class="bg">
							<p><span>호텔</span><br>당신의 특별한 하루를 위한</p>
						</div>
					</div>
					
					<div class="swiper-slide" style="background-image:url('/fooding/resources/images/main/ticket02.png')">
						<div class="bg">
							<p><span>디저트</span><br>나를 위한 달콤한 사치</p>
						</div>
					</div>
					
					<div class="swiper-slide" style="background-image:url('/fooding/resources/images/main/ticket03.png')">
						<div class="bg">
							<p><span>일식</span><br>정갈함의 미학을 담은</p>
						</div>
					</div>
				
				</div><!-- swiper-wrapper -->
			</div><!-- swiper-container -->

			<button type="button" class="more">전체보기 &gt;</button>
		</div>
		<!-- ticket -->
		
		<div class="recommend">
			<h3>테마별 레스토랑</h3>

			<!-- Swiper -->
			<div class="swiper-container">
				<div class="swiper-wrapper">
					<div class="swiper-slide" style="background-image:url('/fooding/resources/images/main/recomd02.jpg')">
						<div class="bg">
							<p>드라이 어메이징 스테이크</p>
						</div>
					</div>
					
					<div class="swiper-slide" style="background-image:url('/fooding/resources/images/main/recomd03.jpg')">
						<div class="bg">
							<p>고급 디저트</p>
						</div>
					</div>
					
					<div class="swiper-slide" style="background-image:url('/fooding/resources/images/main/recomd04.jpg')">
						<div class="bg">
							<p>경리단길 브런치</p>
						</div>
					</div>
					
					<div class="swiper-slide" style="background-image:url('/fooding/resources/images/main/recomd05.jpg')">
						<div class="bg">
							<p>샤로수길 맛집</p>
						</div>
					</div>
				</div><!-- swiper-wrapper -->
			</div><!-- swiper-container -->
			
			<button type="button" class="more">전체보기 &gt;</button>
		</div>
		<!-- theme-store -->
	</div>
	<!-- container -->

<footer data-role="footer" class="footer">
	<p>
		최고의 레스토랑을 즐기는 특별한 방법<br>
		검색부터 예약까지 한번에, Fooding
	</p>

	<p class="copyrigt">Copyrightⓒ 2018 Fooding.,Ltd. All rights reserved</p>
</footer>

<!-- swiper.js -->
<script src="http://idangero.us/swiper/dist/js/swiper.min.js"></script>

<script>
//auto swiper jquery
	var swiper = new Swiper('.swiper-container.mainSlider', {
		spaceBetween : 0,
		centeredSlides : true,
		autoplay : {
			delay : 2500,
			disableOnInteraction : false,
		},

	});
	
//free mode slide
    var swiper = new Swiper('.container .swiper-container', {
      slidesPerView: 1.4,
      spaceBetween: 5,
      freeMode: true,
    });
</script>

<!-- footer -->

<jsp:include page="/WEB-INF/mobile/views/common/gnb.jsp"/>

