<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!-- header -->
<jsp:include page="/WEB-INF/mobile/views/common/header.jsp"/>

<link rel="stylesheet" href="/fooding/resources/css/m/setting/mypage.css" />

<header data-role="header" class="header">
	<div id="banner" class="user">
		<div class="i_wrap background">
			<!-- 프로필사진 배경 넣어주세요 -->
			<i class="image profile_image shading middle" style="background-image:url(http://c4.poing.co.kr/MjAxODAz/15218221885ab529ec0b963.jpeg)"></i>
		</div>
		
		<div class="i_wrap blur background">
			<!-- 프로필사진 배경 넣어주세요 -->
			<i class="image profile_image shading middle" style="background-image:url(http://c4.poing.co.kr/MjAxODAz/15218221885ab529ec0b963.jpeg)"></i>
		</div>
		
		<div class="inner_wrap">
			<h2>마이페이지</h2>
			
			<!-- 관리 -->
			<button type="button" class="setting" onclick="setting()">
				<i class="">설정 및 관리</i>
			</button>
			
			<div class="userInfo">
				<div class="photo">
					<img src="/fooding/resources/images/common/no-image.png">
				</div><!-- photo -->
				
				<div class="info">
					<p class="name">이우인</p>
					<p class="email">wooin@kh.or.kr</p>
				</div><!-- user-info -->
			</div>
			<!-- user-profile -->
		</div>
		<!-- inner_wrap -->
	</div>
	<!-- banner.user -->
</header>


<div class="content">
	<div class="tab">
		<button class="tablinks on" onclick="openCity(event, 'London')">
			<span class="count">0</span><br>
			예약
		</button>
		<button class="tablinks" onclick="openCity(event, 'Paris')">
			<span class="count">0</span><br>
			리뷰
		</button>
		<button class="tablinks" onclick="openCity(event, 'NewYork')">
			<span class="count">0</span><br>
			1:1문의
		</button>
	</div><!-- tab -->
	
	<!-- tab: reservation -->
	<jsp:include page="reserve.jsp"/>
	
	<!-- tab: review -->
	<jsp:include page="review.jsp" />
	
	<!-- tab: ask -->
	<jsp:include page="ask.jsp" />
	
	
 
</div>
<!-- content -->

<script>
//tab
function openCity(evt, cityName) {
    var i, tabcontent, tablinks;
    tabcontent = document.getElementsByClassName("tabcontent");
    for (i = 0; i < tabcontent.length; i++) {
        tabcontent[i].style.display = "none";
    }
    tablinks = document.getElementsByClassName("on");
    for (i = 0; i < tablinks.length; i++) {
        tablinks[i].className = tablinks[i].className.replace(" on", "");
    }
    document.getElementById(cityName).style.display = "block";
    evt.currentTarget.className += " on";
}

//tab in tab
function resrve(evt, tabName) {
    var i, reservecontent, tabbtn;
    reservecontent = document.getElementsByClassName("reservecontent");
    for (i = 0; i < reservecontent.length; i++) {
    	reservecontent[i].style.display = "none";
    }
    tabbtn = document.getElementsByClassName("in");
    for (i = 0; i < tabbtn.length; i++) {
    	tabbtn[i].className = tabbtn[i].className.replace(" in", "");
    }
    document.getElementById(tabName).style.display = "block";
    evt.currentTarget.className += " in";
}
</script>

<!-- footer -->
<jsp:include page="/WEB-INF/mobile/views/common/gnb.jsp"/>

