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
				<li id="reviewBtn"class="tablinks" onclick="openTab(event, 'tabReview')">리뷰</li>
				<li class="tablinks" onclick="openTab(event, 'tabMenu')">메뉴</li>
				<li class="tablinks" onclick="openTab(event, 'tabCoupon')">쿠폰</li>
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
						<form action="" method="post">
							<h4>정보수정</h4>
							<p>자세한 수정사항들을 적어주세요.</p>
							<textarea></textarea>
							<button type="submit">확인</button>
						</form>
					</div>
					<!-- ask-form -->
					
				</div>
				<!-- con-box  -->
			</div>
			<!-- tabInfo -->
			
			<div id="tabPhoto" class="tabcontent">
				<div class="photo-container">
					<div class="mySlides">
				    	<div class="numbertext">1 / 6</div>
				    	<img src="resources/images/restaurants/restaurant-photo01.jpeg" style="width:100%">
					</div>
				
					<div class="mySlides">
						<div class="numbertext">2 / 6</div>
				    	<img src="resources/images/restaurants/restaurant-photo02.jpeg" style="width:100%">
					</div>
				
					<div class="mySlides">
				    	<div class="numbertext">3 / 6</div>
				    	<img src="resources/images/restaurants/restaurant-photo03.jpeg" style="width:100%">
					</div>
				    
					<div class="mySlides">
				    	<div class="numbertext">4 / 6</div>
				    	<img src="resources/images/restaurants/restaurant-photo04.jpeg" style="width:100%">
					</div>
				
				  	<div class="mySlides">
				    	<div class="numbertext">5 / 6</div>
				    	<img src="resources/images/restaurants/restaurant-photo05.jpeg" style="width:100%">
					</div>
				    
					<div class="mySlides">
						<div class="numbertext">6 / 6</div>
						<img src="resources/images/restaurants/restaurant-photo06.jpeg" style="width:100%">
				  	</div>
				    
					<a class="prev" onclick="plusSlides(-1)">❮</a>
					<a class="next" onclick="plusSlides(1)">❯</a>
				
					<div class="caption-container"><p id="caption"></p></div>
				
					<div class="row">
						<div class="column">
							<img class="demo cursor" src="resources/images/restaurants/restaurant-photo01.jpeg" style="width:100%" onclick="currentSlide(1)">
						</div>
				    	<div class="column">
				      		<img class="demo cursor" src="resources/images/restaurants/restaurant-photo02.jpeg" style="width:100%" onclick="currentSlide(2)">
				    	</div>
				    	<div class="column">
				      		<img class="demo cursor" src="resources/images/restaurants/restaurant-photo03.jpeg" style="width:100%" onclick="currentSlide(3)">
				    	</div>
				    	<div class="column">
				      		<img class="demo cursor" src="resources/images/restaurants/restaurant-photo04.jpeg" style="width:100%" onclick="currentSlide(4)">
				    	</div>
				    	<div class="column">
				      		<img class="demo cursor" src="resources/images/restaurants/restaurant-photo05.jpeg" style="width:100%" onclick="currentSlide(5)">
				  		</div>    
				    	<div class="column">
				      		<img class="demo cursor" src="resources/images/restaurants/restaurant-photo06.jpeg" style="width:100%" onclick="currentSlide(6)">
				    	</div>
					</div><!-- row -->
				</div><!-- photo-container -->

			</div>
			<!-- tabPhoto -->
			
			<div id="tabReview" class="tabcontent tabReview">
				<h4>리뷰 작성하기</h4>
				<form action="" method="post">
				<ul>
					<li>
						<label>별점</label>
						<select id="checkRank" onChange="rankCheck()">
							<option selected> 평점을 매겨주세요! </option>
							<option value="1">★☆☆☆☆</option>
							<option value="2">★★☆☆☆</option>
							<option value="3">★★★☆☆</option>
							<option value="4">★★★★☆</option>
							<option value="5">★★★★★</option>
						</select>
						<span class="rankResult"></span>
						<script>
							function rankCheck(){
								var rank = $("#checkRank > option:selected").val();
								
								if(rank == 1){
									$(".rankResult").text("1점 - 실망이예요. 집에서 먹는게 나을 뻔 했어요.");
								} else if(rank == 2){
									$(".rankResult").text("2점 - 평균 이하! 이 정도 레스토랑은 어디에나 있죠.");
								} else if(rank == 3){
									$(".rankResult").text("3점 - 보통이에요. 이 정도면 괜찮네요.");
								} else if(rank == 4){
									$(".rankResult").text("4점 - 인상적이네요. 꼭 추천하고 싶어요.");
								} else {
									$(".rankResult").text("5점 - 완벽 그 자체! 환상적이에요.");
								}
								console.log(rank);
							}
						</script>
					</li>
					
					<li>
						<label>리뷰</label>
						<textarea placeholder="매장에 대한 리뷰를 30자 이상 작성해주세요. 매장과 관계 없는 글, 광고성, 욕설, 비방, 도배 등의 글은 예고 없이 삭제됩니다."></textarea>
					</li>
					
					<li>
						<label>사진 등록</label>
						<div class="filebox bs3-primary preview-image">
							<input class="upload-name" value="" disabled="disabled" style="width: 200px;">

							<label for="input_file">사진 등록하기</label> 
							<input type="file" id="input_file" class="upload-hidden"><br> 
						</div>
						<!-- filebox -->
					</li>
				</ul>
				
				<button type="submit">리뷰 올리기</button>
				</form>
			</div>
			<!-- tabReview -->
			
			<div id="reviews" class="reviews">
				<h4>리뷰</h4>
				
				<!-- 리뷰 無 -->
				<div class="noReview">
					<i class="iconReview"></i>
					&quot;식당이름&quot; 매장의 첫번째 리뷰를 작성해 보세요!
				</div>
				<!-- no-review -->
				
				<!-- 리뷰 有 -->
				<div class="showReview">
					<div class="review-info">
						<div class="user-photo" style="background-image:url('')"></div>
						
						<div class="re-info">
							<span class="writerId">작성자</span><br>
							<span class="writeDate">2018-04-10 17:20</span>
						</div>
						<!-- re-info -->
					</div>
					<!-- review-info -->
					
					<div class="rank">
						<i class="iconRank"></i>
						<i class="iconRank"></i>
						<i class="iconRank"></i>
						<i class="iconRank rankOff"></i>
						<i class="iconRank rankOff"></i>
						
						<span class="rank-discript">3.0 / 보통이에요. 이 정도면 괜찮네요.</span>
						
						<p>
							항상 아쉬워도 대안이 없다.<br>
							현상 유지만 해줘도 찾을 곳.
						</p>
					</div>
					<!-- rank -->
				</div>
				<!-- showReview -->
			</div>
			<!-- showReview -->			
			
			<div id="tabMenu" class="tabcontent">
				<!-- menu 없을 때 -->
				<div class="no-menu" style="display: none;">
					<i class="iconMenu"></i>
					&quot;식당이름&quot; 매장의 메뉴를 준비 중에 있습니다.<br>
					조금만 기다려주세요!
				</div>
				<!-- no-menu -->
				
				<!-- 등록된 메뉴가 있을 때 -->
				<div class="menu">
					<div class="kindOfMenu">
						<h5>ACQUA</h5>
						<ul class="menuTheme">
							<li>
								<dl>
									<dt class="name menuCommon">CARPACCIO</dt>
									<dd class="price menuCommon">38,000</dd>
									<dd class="about about1">SEASONAL FISH CARPACCIO, LEMON DRESSING, DRY TOMATO, RED RADISH, FRISSE, BEET LEAF, DILL</dd>
									<dd class="about about2">얇게 저민 제철 생선, 레몬 드레싱, 드라이 토마토, 홍무 , 프리세, 비트 잎, 딜.</dd>
								</dl>
							</li>
							
							<li>
								<dl>
									<dt class="name menuCommon">CAPRESE</dt>
									<dd class="price menuCommon">25,000</dd>
									<dd class="about about1">TOMATO, MOZZARELLA, HERB OIL, FRESH OREGANO</dd>
									<dd class="about about2">토마토, 모짜렐라, 허브 오일, 생 오레가노, 꿀</dd>
								</dl>
							</li>
							
							<li>
								<dl>
									<dt class="name menuCommon">CAPRESE</dt>
									<dd class="price menuCommon">25,000</dd>
									<dd class="about about1">TOMATO, MOZZARELLA, HERB OIL, FRESH OREGANO</dd>
									<dd class="about about2">토마토, 모짜렐라, 허브 오일, 생 오레가노, 꿀</dd>
								</dl>
							</li>
							
							<li>
								<dl>
									<dt class="name menuCommon">ANTIPASTO SPECIALE</dt>
									<dd class="price menuCommon">싯가</dd>
									<dd class="about about1">PLEASE ASK YOUR SERVER FOR OUR DAILY SPECIAL DISH CREATION.</dd>
									<dd class="about about2">스페셜 전체 요리를 담당 서버에게 문의해 주세요.</dd>
								</dl>
							</li>
						</ul>
					</div>
					<!-- kindOfMenu -->
					
					<div class="kindOfMenu">
						<h5>ACQUA</h5>
						<ul class="menuTheme">
							<li>
								<dl>
									<dt class="name menuCommon">CARPACCIO</dt>
									<dd class="price menuCommon">38,000</dd>
									<dd class="about about1">SEASONAL FISH CARPACCIO, LEMON DRESSING, DRY TOMATO, RED RADISH, FRISSE, BEET LEAF, DILL</dd>
									<dd class="about about2">얇게 저민 제철 생선, 레몬 드레싱, 드라이 토마토, 홍무 , 프리세, 비트 잎, 딜.</dd>
								</dl>
							</li>
							
							<li>
								<dl>
									<dt class="name menuCommon">CAPRESE</dt>
									<dd class="price menuCommon">25,000</dd>
									<dd class="about about1">TOMATO, MOZZARELLA, HERB OIL, FRESH OREGANO</dd>
									<dd class="about about2">토마토, 모짜렐라, 허브 오일, 생 오레가노, 꿀</dd>
								</dl>
							</li>
							
							<li>
								<dl>
									<dt class="name menuCommon">CAPRESE</dt>
									<dd class="price menuCommon">25,000</dd>
									<dd class="about about1">TOMATO, MOZZARELLA, HERB OIL, FRESH OREGANO</dd>
									<dd class="about about2">토마토, 모짜렐라, 허브 오일, 생 오레가노, 꿀</dd>
								</dl>
							</li>
							
							<li>
								<dl>
									<dt class="name menuCommon">ANTIPASTO SPECIALE</dt>
									<dd class="price menuCommon">싯가</dd>
									<dd class="about about1">PLEASE ASK YOUR SERVER FOR OUR DAILY SPECIAL DISH CREATION.</dd>
									<dd class="about about2">스페셜 전체 요리를 담당 서버에게 문의해 주세요.</dd>
								</dl>
							</li>
						</ul>
					</div>
					<!-- kindOfMenu -->
					
					<div class="menuDescript">
						<p>(단위: 원)</p>
						최종 수정일자 : 2018.2.13<br>
						상기 메뉴는 매장의 사정에 따라 변경될 수 있습니다.
					</div>
					<!-- menuDescript -->
				</div>
				<!-- menu -->
			</div>
			<!-- tabMenu -->
			
			<div id="tabCoupon" class="tabcontent">
				지은언니가 만든 폼 그냥 넣으면 됩니당
			</div>
			<!-- tabCoupon -->
			
			<div id="tabMap" class="tabcontent">
				지도는 알아서 넣어주세용 :)<br>
				지도만 넣으면 됩니당~<br>
				다음 지도 api 정란이가 한 거에 있을 텐데 아직 합치기 전에라서 나는 안넣었어요 ㅠㅠ
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
   
   if(tabName == "tabReview"){
	   $("#reviews").css("display","block");
   }else{
	   $("#reviews").css("display","none");
   }
   
}

//reviewTab
function addTab(evt, tabName){
	   var review = document.getElementsByClassName("reviews");
	   review.style.display="none";
	   
	   
	   document.getElementById(tabName).style.display = "block";
}

//photoTab
var slideIndex = 1;
showSlides(slideIndex);

function plusSlides(n) {
  showSlides(slideIndex += n);
}

function currentSlide(n) {
  showSlides(slideIndex = n);
}


//정보수정 Toggle
$(document).ready(function(){
    $(".ask-btn").click(function(){
        $(".ask-form").toggle();
    });
});


//
function showSlides(n) {
  var i;
  var slides = document.getElementsByClassName("mySlides");
  var dots = document.getElementsByClassName("demo");
  var captionText = document.getElementById("caption");
  if (n > slides.length) {slideIndex = 1}
  if (n < 1) {slideIndex = slides.length}
  for (i = 0; i < slides.length; i++) {
      slides[i].style.display = "none";
  }
  for (i = 0; i < dots.length; i++) {
      dots[i].className = dots[i].className.replace(" on", "");
  }
  slides[slideIndex-1].style.display = "block";
  dots[slideIndex-1].className += " on";
  captionText.innerHTML = dots[slideIndex-1].alt;
}

//파일 업로드
$(document).ready(function(){
   var fileTarget = $('.filebox .upload-hidden');

    fileTarget.on('change', function(){
        if(window.FileReader){
            // 파일명 추출
            var filename = $(this)[0].files[0].name;
        } 

        else {
            // Old IE 파일명 추출
            var filename = $(this).val().split('/').pop().split('\\').pop();
        };

        $(this).siblings('.upload-name').val(filename);
    });

    //preview image 
    var imgTarget = $('.preview-image .upload-hidden');

    imgTarget.on('change', function(){
        var parent = $(this).parent();
        parent.children('.upload-display').remove();

        if(window.FileReader){
            //image 파일만
            if (!$(this)[0].files[0].type.match(/image\//)) return;
            
            var reader = new FileReader();
            reader.onload = function(e){
                var src = e.target.result;
                parent.append('<div class="upload-display"><div class="upload-thumb-wrap"><img src="'+src+'" class="upload-thumb"></div></div>');
            }
            reader.readAsDataURL($(this)[0].files[0]);
        }

        else {
            $(this)[0].select();
            $(this)[0].blur();
            var imgSrc = document.selection.createRange().text;
            parent.append('<div class="upload-display"><div class="upload-thumb-wrap"><img class="upload-thumb"></div></div>');

            var img = $(this).siblings('.upload-display').find('img');
            img[0].style.filter = "progid:DXImageTransform.Microsoft.AlphaImageLoader(enable='true',sizingMethod='scale',src=\""+imgSrc+"\")";        
        }
    });
});
</script>


<!-- footer -->
<jsp:include page="WEB-INF/views/common/footer.jsp"/>