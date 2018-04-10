<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<meta charset="UTF-8">

<!-- header -->
<jsp:include page="WEB-INF/views/common/header.jsp"/>

<!-- css or js파일 연결 시키는 곳 -->
<link rel="stylesheet" href="/fooding/resources/css/restaurants/detail.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

<div class="container">
	<!-- 
		banner-wrap의 background-image가 tab에 있는 포토 중 가장 첫번째 사진이
		background로 들어가는 것
		그래서 인라인 스타일로 지정해줌
	-->
	<div class="banner-wrap" style="background-image:url('/fooding/resources/images/restaurants/restaurant-photo01.jpeg')">
		<div class="bg">
			<div class="banner">
				<div class="title">
					<span class="restaurant-name">가게이름</span>
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
				
				<div class="slider">
					<div class="slide_viewer">
						<div class="slide_group">
							<div class="slide" style="background-image:url('resources/images/main/key_visiual01.jpg')"></div>
							<div class="slide" style="background-image:url('resources/images/main/key_visiual02.jpg')"></div>
							<div class="slide" style="background-image:url('resources/images/main/key_visiual01.jpg')"></div>
							<div class="slide" style="background-image:url('resources/images/main/key_visiual02.jpg')"></div>
				    	</div>
				    	<!-- slide_group -->
					</div>
					<!-- slide_viewer -->
				</div>
				<!-- slider -->
			</div>
			<!-- banner -->
		</div>
		<!-- bg -->
	</div>
	<!-- banner-wrap -->
	
	<div class="detail-wrap">
		<div class="detail-content">
			<!-- 탭메뉴 버튼 -->
			<ul class="tab">
				<li class="tablinks active" onclick="openTab(event, 'tabInfo')">정보</li>
				<li class="tablinks" onclick="openTab(event, 'tabPhoto')">포토</li>
				<li class="tablinks" onclick="openTab(event, 'tabReview')">리뷰</li>
				<li class="tablinks" onclick="openTab(event, 'tabMenu')">메뉴</li>
				<li class="tablinks" onclick="openTab(event, 'tabMap')">지도</li>
			</ul>
			<!-- tab -->
			
			<div id="tabInfo" class="tabcontent" style="display:block">
				<div class="con-box">
					<h4><span class="tip">Tip</span></h4>
					<ul>
						<li>- 선택이 불가한 날짜는 만석, 대관, 매장 휴무일 등으로 예약이 불가능한 날입니다.</li>
						<li>- 성인 / 어린이 구분하여 요청사항에 기입 부탁드립니다.</li>
						<li>- 스시 바(Bar)는 오미키세 이용시에만 가능합니다<br>
						 	<span class="">
						 		&nbsp; 스시 기본: Lunch \77,000 | Dinner \121,000 <br>
						 		&nbsp; 사시미 기본: Lunch \110,000 | Dinner \161,000 (1인 기준)
						 	</span>
						</li>
					</ul>
				</div>
				<!-- con-box  -->
				
				<div class="con-box">
					<h4>한 줄 설명</h4>
					<p>그랜드 앰배서더 서울 풀만의 일식 레스토랑</p>
				</div>
				<!-- con-box  -->
				
				<div class="con-box">
					<div class="leftCon">
						<h4>음식 종류</h4>
						<p>일식</p>
					</div>
					<!-- leftCon -->
					<div class="rightCon">
						<h4>예산</h4>
						<p>160,000원 이상 (2인 기준)</p>
					</div>
					<!-- rightCon -->
				</div>
				<!-- con-box  -->
				
				<div class="con-box">
					<div class="leftCon">
						<h4>테이블</h4>
						<p>룸 테이블, 바 테이블, 홀 테이블</p>
					</div>
					<!-- leftCon -->
					<div class="rightCon">
						<h4>부가정보</h4>
						<p>
							코르키지가 가능한<br>
							베이비 시트가 준비되어 있는<br>
							런치메뉴가 있는 <br>
							룸이 준비되어 있는<br>
							단체석이 있는
						</p>
					</div>
					<!-- rightCon -->
				</div>
				<!-- con-box  -->
				
				<div class="con-box">
					<h4>판매 주류</h4>
					<p>와인, 양주, 일본술, 맥주, 소주 등</p>
				</div>
				<!-- con-box  -->
				
				<div class="con-box">
					<button type="button" class="ask-btn">정보를 수정해 주세요.</button>
					
					<!-- 버튼 눌렀을 때 토글로 밑에 수정창 나올 수 있도록 -->
					<div class="ask-form">
						
					</div>
					<!-- ask-form -->
				</div>
				<!-- con-box  -->
			</div>
			<!-- tabInfo -->
			
			<div id="tabPhoto" class="tabcontent">
				
			</div>
			<!-- tabPhoto -->
			
			<div id="tabReview" class="tabcontent">
			</div>
			<!-- tabReview -->
			
			<div id="tabMenu" class="tabcontent">
			</div>
			<!-- tabMenu -->
			
			<div id="tabMap" class="tabcontent">
			</div>
			<!-- tabMap -->
		</div>
		<!-- detail-content -->
	</div>
	<!-- content-wrap -->
</div>
<!-- container -->


<script type="text/javascript">
//tab
function openTab(evt, tabName) {
   var i, tabcontent, tablinks;
   tabcontent = document.getElementsByClassName("tabcontent");
   for (i = 0; i < tabcontent.length; i++) {
       tabcontent[i].style.display = "none";
   }
   tablinks = document.getElementsByClassName("tablinks");
   for (i = 0; i < tablinks.length; i++) {
       tablinks[i].className = tablinks[i].className.replace(" active", "");
   }
   document.getElementById(tabName).style.display = "block";
   evt.currentTarget.className += " active";
}
</script>


<!-- footer -->
<jsp:include page="WEB-INF/views/common/footer.jsp"/>