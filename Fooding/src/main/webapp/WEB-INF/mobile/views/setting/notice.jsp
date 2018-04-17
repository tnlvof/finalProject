<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!-- header -->
<jsp:include page="/WEB-INF/mobile/views/common/header.jsp"/>

<link rel="stylesheet" href="/fooding/resources/css/m/setting/notice.css" />

<header data-role="header" class="header">
	<!-- 뒤로가기 -->
	<button type="button" id="go-back">&lt;</button>
	
	<h2>공지사항</h2>
</header> 

<div class="wrap">
	<ul>
		<li class="btn">
			<p>이용약관 개정에 따른 공지</p>
			<span class="date">2017.06.27</span>
		</li>
		<li class="cont">
			안녕하세요. 푸딩팀입니다.<br>
			푸딩 서비스의 이용야관이 2017년 7월 4일자로 일부 개정될 예정입니다.<br>
			<br>
			관련 법령에 의해 시행일의 7일 전인 오늘(6월 27일)에 미리 공지해드리려 합니다.<br>
			<br>
			1. 개정내용<br>
			- 개인정보취급방침<br>
			- [신설] 제 3자 마케팅 활용 동의<br>
			<br>
			2. 개정시기<br>
			- 2017년 7월 4일로 효력이 발생합니다.<br>
			<br>
			기존 고객분들에게는 개정되는 약관에 대한 동의를 받을 예정이오니 참고 부탁드립니다.<br>
			<br>
			항상 더 나은 컨텐츠와 서비스로 보답하는 푸딩팀이 되겠습니다.<br>
			<br>
			감사합니다<br>
			<br>
			- 푸딩팀 드림
		</li>
		
		<li class="btn">
			<p>하나카드 서비스 일시 제한 안내</p>
			<span class="date">2017.04.25</span>
		</li>
		<li class="cont">
			안녕하세요. 푸딩팀입니다.<br>
			<br>
			하나은행/카드의 시승템 점검에 따라 아래 기간동안 하나카드를 이용한 푸딩 페이 결제가 중단되거나 원활하지 않을 수 있으니 양해 부탁드립니다.<br>
			<br>
			- 점검기간<br>
			2017.04.29(토) 04:00 ~ 09:00<br>
			2017.04.30(일) 08:00 ~ 10:00<br>
			2017.05.05(금) 03:00 ~ 03:00<br>
			- 하나은해으이 사정에 따라 점검 기간이 변경될 수 있습니다.<br>
			<br>
			감사합니다<br>
			<br>
			- 푸딩팀 드림
		</li>
		
		<li class="btn">
			<p>전국 서비스 시작: 서울, 부산, 그리고 그 이상</p>
			<span class="date">2017.04.25</span>
		</li>
		<li class="cont">
			안녕하세요. 푸딩팀입니다.<br>
			<br>
			하나은행/카드의 시승템 점검에 따라 아래 기간동안 하나카드를 이용한 푸딩 페이 결제가 중단되거나 원활하지 않을 수 있으니 양해 부탁드립니다.<br>
			<br>
			- 점검기간<br>
			2017.04.29(토) 04:00 ~ 09:00<br>
			2017.04.30(일) 08:00 ~ 10:00<br>
			2017.05.05(금) 03:00 ~ 03:00<br>
			- 하나은해으이 사정에 따라 점검 기간이 변경될 수 있습니다.<br>
			<br>
			감사합니다<br>
			<br>
			- 푸딩팀 드림
		</li>
	</ul>
</div>

<script>
$('.btn').click(function(){
	$(this).next('.cont').toggle();
});
</script>