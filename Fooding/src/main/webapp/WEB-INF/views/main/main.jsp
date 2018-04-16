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
					<li style="background-image:url('resources/images/main/ticket01.png')">
						<div class="bg">
							<p>
								<span>호텔</span><br>
								당신의 특별한 하루를 위한
							</p>
						</div>
					</li>
					<li style="background-image:url('resources/images/main/ticket02.png')">
						<div class="bg">
							<p>
								<span>디저트</span><br>
								나를 위한 달콤한 사치
							</p>
						</div>
					</li>
					<li style="background-image:url('resources/images/main/ticket03.png')">
						<div class="bg">
							<p>
								<span>일식</span><br>
								정갈함의 미학을 담은
							</p>
						</div>
					</li>
				</ul>
				<div class="more">더보기 &nbsp;&gt;</div>
			</div>
			<!-- dining-ticket -->
			
			
			<div class="recommend">
				<h3>테마별 레스토랑</h3>
				<div class="recomd-wrap">
					<div class="recomds recomd01" style="background-image:url('resources/images/main/recomd01.jpg')">
					</div>
					<!-- recomd01 -->
					
					<div class="recomds recomd02" style="background-image:url('resources/images/main/recomd02.jpg')">
						<div class="bg">
							<p>드라이 어메이징 스테이크</p>
						</div>
					</div>
					<!-- recomd02 -->
					
					<div class="recomds recomd03" style="background-image:url('resources/images/main/recomd03.jpg')">
						<div class="bg">
							<p>고급디저트</p>
						</div>
					</div>
					<!-- recomd03 -->
					
					<div class="recomds recomd04" style="background-image:url('resources/images/main/recomd04.jpg')">
						<div class="bg">
							<p>경리단길 브런치</p>
						</div>
					</div>
					<!-- recomd04 -->
					
					<div class="recomds recomd05" style="background-image:url('resources/images/main/recomd05.jpg')">
						<div class="bg">
							<p>샤로수길 맛집</p>
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
