<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!-- header -->
<jsp:include page="/WEB-INF/mobile/views/common/header.jsp"/>

<link rel="stylesheet" href="/fooding/resources/css/m/review/detail.css" />
<header data-role="header" class="header">
	<button type="button" id="go-back">&lt;</button>
	<h2>가게이름(지점명)</h2>
	<button type="button" class="warn" onclick="warn()">
		<i class="">신고하기</i>
	</button>
</header>


<div class="wrap">
	<div class="rankShow">
		<div class="score">
			<i class="icon-star"></i>
			<i class="icon-star"></i>
			<i class="icon-star"></i>
			<i class="icon-star"></i>
			<i class="icon-star"></i>
		</div>
		<!-- score -->
		<p class="comment">완벽 그 자체! 환상적이예요</p>
	</div>
	<!-- rankShow -->
	
	<div class="review-content">
		<div class="about-writer">
			<div class="user">
				<img src="/fooding/resources/images/common/no-image.png">
			</div><!-- user -->
			
			<p class="user-info">이수현</p>
			<p class="write-time">11시간 전</p>
		</div>
		<!-- about-writer -->
		
		
		<p class="content">
			아늑하고 편안한 분위기에서<br>
			가정식을 즐길 수 있는 북촌 끝자락의 프렌치 레스토랑<br>
			<br>
			포잉 리뷰들이 너무 극과 극이라<br>
			기대반 우려 반의 심정으로 기념일에 방문했습니다..<br>
			<br>
			(지극히 개인적인 평임을 감안해주시기 바랍니다.)<br>
			결론부터 얘기하자면<br>
			일부 극단적으로 낮은 평점의 리뷰에서<br>
			지적한 문제점 등은 느끼지 못했고 : <br>
			음식에 몇몇 아쉬운 점이 있을지언정<br>
			만족스러운 저녁이었습니다.<br>
			<br>
			제대로 눈에 띄는 간판이 없어 한번 지나쳤다가 들어가는 바람에<br>
			조금 늦게 도착해 저녁식사를 시작했던터라<br>
			인테리어 등의 구경은 나중에 하게 되었는데 :<br>
			주택내부를 개조해서 쓰고 있는 레스토랑이어서인지<br>
			집으로 초대된 것 같은 분위기더군요<br>
			겨울이라 한층 아늑하고 포근한 느낌이었스니다.<br>
			축음기나, 소파, 액자, 흐르는 음악, 조명, 벽나니로 때문에<br>
			더 그랬던 것 같네요..<br>
			<br>
			제가 방문했던 12월의 테마는 문장의 마승로 <br>
			프랑스 문호들의 작품 속 문장과 연관<br>
			혹은 문장 속에서 연상되거나, 영감을 받은 요리(가정식)들로 코스가 꾸려져 있었습니다.<br>
			<br>
			이날 맛봇 코스는 8가지 음식이 나오는 가정식 식탁으로.....<br>
			<br>
			마르셀 프루스트의 잃어버린 시간을 찾아서의 문장에 나오는 마들렌(감자로 만들어 식감과 마싱 독특했습니다.)부터<br>
			보드레르의 악의 꽃에서 영감을 얻은 니플스 오브 비너스(초콜릿 디저트)까지<br>
			<br>
			하나하나의 음식의 맛을 즐기면서<br>
			모티브가 된 문장에 대해서도 생각해 볼 수 있어<br>
			색다르고, 재미있던 저녁식사였습니다.<br>
			<br>
			식전에 정상원 셰프님이 잠시 올라오셔서<br>
			뱅쇼도 서비스 받았네요 :)<br>
			한겨울이어서 그런지 무척 맛있게 마셨던 기억이 :<br>
			<br>
			음식이 나오는 텀과 음식의 온도감,<br>
			메뉴에 대한 간단한 설명 등<br>
			전체적으로 서비스는 무난했습니다.<br>
			(좀더 전문적이고 상세한 설명을<br>
			크게 기대하지 않았던 것도 있지만 :)<br>
			다만, 프랑스 음식 등에 관해서<br>
			기본적인 지식이 부족할 경우<br>
			아쉽게 느껴질 수도 있을 것 같습니다.<br>
			<br>
			가정식 치고는 가격대가 있지만<br>
			런치(1인 3만/전채-메인-디저트),<br>
			위의 메뉴 외에도<br>
			1인 4.9만 넝도의 5가지 요리로 구성되는 코스 등<br>
			여러 선택지가 있어 많이 비싸다고 느껴지진 않았습니다.<br>
			<br>
			북촌에 갈 일이 있을 때,<br>
			프랑스식 정찬과 같은 파인 다이닝보다는<br>
			편안한 분위기에서 프랑스 가정식을 즐기고 싶을 때<br>
			이곳이 종종 생각날 것 같습니다.
		</p>
	</div>
	<!-- review-content -->
</div>
<!-- wrap -->


<!-- 신고하기 modal창 -->
<div id="warn-chk" class="w3-modal w3-animate-opacity">
	<div class="w3-modal-content w3-card-4">
		<p>이 리뷰를 신고하시겠습니까?</p>
		
		<button type="submit" class="ok-warn">신고하기</button>
		<button type="button" onclick="closeWarn()" class="cancle-warn">취소</button>
	</div>
</div>
<!-- warn-chk -->

<script>
//뒤로가기
$(document).ready(function() {
	$('#go-back').click(function() {
		parent.history.back();
		return false;
	});
});

//신고하기 modal
function warn(){
	document.getElementById('warn-chk').style.display = 'block';
}
//신고 modal창 닫기
function closeWarn(){
	document.getElementById('warn-chk').style.display='none';
}
</script>

<!-- footer -->
<jsp:include page="/WEB-INF/mobile/views/common/gnb.jsp"/>
