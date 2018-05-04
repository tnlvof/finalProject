<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<meta charset="UTF-8">


 
<!-- header --> 
<jsp:include page="/WEB-INF/views/common/header.jsp"/>


<!-- main css -->
<link rel="stylesheet" href="http://idangero.us/swiper/dist/css/swiper.min.css" />
<link rel="stylesheet" href="/fooding/resources/css/main.css">
 
	<div class="container">
		<div class="caroursel">
			<div class="swiper-container">
				<div class="swiper-wrapper">
					<div class="swiper-slide"><img src="/fooding/resources/images/main/key_visiual01.jpg"></div>
					<div class="swiper-slide"><img src="/fooding/resources/images/main/key_visiual02.jpg"></div>
					<div class="swiper-slide"><img src="/fooding/resources/images/main/key_visiual03.jpg"></div>
					<div class="swiper-slide"><img src="/fooding/resources/images/main/key_visiual04.jpg"></div>
					<div class="swiper-slide"><img src="/fooding/resources/images/main/key_visiual05.jpg"></div>
				</div><!-- swiper-wrapper -->
			
			</div><!-- swiper-container -->

			<div id="add-arrows">
				<!-- Add Arrows -->
				<div class="swiper-button-next" id="swiper-button-next"></div>
				<div class="swiper-button-prev" id="swiper-button-prev"></div>
			</div>
			<!-- add-arrows -->
		</div>
		<!-- caroursel -->
	
	
		<div class="content">
			<div class="dining-ticket">
				<h3>다이닝 티켓</h3>
				<!-- 
					 image 권장 사이즈 : 320*320px 
				         단, 정사이즈 외에는 비율이 다르게 되어 사진이 깨질 수 있음 
				     css파일로 background를 변경시 사진 변경에 어려움이 있어 부득이하게 인라인스타일으로 했으나
				         다른 스타일은 main.css에 포함되어 있음  
				-->
				<ul>
					<li style="background-image:url(http://c1.poing.co.kr/original/images/main/kind.png)" onclick="location.href='coupon.st?type=new'">
						<div class="bg">
							<p>신규 등록 쿠폰</p>
						</div>
						<input type="hidden" name="coupon" value="new" />
					</li>
					<li style="background-image:url(http://c1.poing.co.kr/original/images/main/location.png)" onclick="location.href='coupon.st?type=recommend'">
						<div class="bg">
							<p>Fooding's choice</p>
						</div>
						<input type="hidden" name="coupon" value="recommend" />
					</li>
					<li style="background-image:url(http://c1.poing.co.kr/original/images/main/hotel.png)" onclick="location.href='coupon.st?type=almostOver'">
						<div class="bg">
							<p>마감임박 쿠폰</p>
						</div>
						<input type="hidden" name="coupon" value="almostOver" />
					</li>
				</ul>
				<!-- <div class="more">더보기 &nbsp;&gt;</div> -->
			</div>
			<!-- coupon-wrap -->
			
			
			<div class="recommend">
				<h3>테마별 레스토랑</h3>
				<div class="recomd-wrap">
					<div class= "recomds recomd01" style="background-image:url('resources/images/main/korfood.png')" onclick="location.href='themeRest.st?type=kor'">
					<div class="bg" style="cursor:pointer">
							<p style="line-height:500px">우리의 맛 한식</p>
						</div>
					</div>
					<!-- recomd01 -->
					
					<div class="recomds recomd02" style="background-image:url('resources/images/main/chinese.jpg')"  onclick="location.href='themeRest.st?type=chinese'">
						<div class="bg">
							<p>바삭한 꿔바로우</p>
						</div>
					</div>
					<!-- recomd02 -->
					
					<div class="recomds recomd03" style="background-image:url('resources/images/main/recomd03.jpg')"  onclick="location.href='themeRestMenu.st?type=izakaya'" >
						<div class="bg">
							<p>이자카야</p>
						</div>
					</div>
					<!-- recomd03 -->
					
					<div class="recomds recomd04" style="background-image:url('resources/images/main/pizza.jpg')"  onclick="location.href='themeRestMenu.st?type=pizza'" >
						<div class="bg">
							<p>베스트 피자</p>
						</div>
					</div>
					<!-- recomd04 -->
					
					<div class="recomds recomd05" style="background-image:url('resources/images/main/recomd05.jpg')"  onclick="location.href='themeRestMenu.st?type=meat'">
						<div class="bg">
							<p>진짜 고기맛</p>
						</div>
					</div>
					<!-- recomd05 -->				
				</div>
				<!-- recomd-wrap -->
				
				<div class="more">더보기 &nbsp;&gt;</div>
				
				
				
				
			</div>
			<!-- recommend -->
		</div>
		<!-- content -->
	</div>
	<!-- container -->

	
<!-- 메인 슬라이더 -->
<script src="http://idangero.us/swiper/dist/js/swiper.min.js"></script>
<script>
	var swiper = new Swiper('.swiper-container', {
		slidesPerView : 1,
		spaceBetween : 0,

		centeredSlides : true,
		loop : true,
		autoplay : {
			delay : 2500,
			disableOnInteraction : false,
		},
		navigation : {
			nextEl : '.swiper-button-next',
			prevEl : '.swiper-button-prev',
		},
	});
</script>

<!-- footer -->
<jsp:include page="/WEB-INF/views/common/footer.jsp"/>
