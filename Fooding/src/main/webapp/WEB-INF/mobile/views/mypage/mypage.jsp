<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!-- header -->
<jsp:include page="/WEB-INF/mobile/views/common/header.jsp"/>

<link rel="stylesheet" href="/fooding/resources/css/m/review/mypage.css" />

<header data-role="header" class="header">
	<h2>마이페이지</h2>
	
	<!-- 알림 -->
	<button type="button">
		<i class="">알림</i>
	</button>
	
	<!-- 설정 및 관리 -->
	<button type="button" class="setting" onclick="setting()">
		<i class="">설정 및 관리</i>
	</button>
</header>


<!-- footer -->
<jsp:include page="/WEB-INF/mobile/views/common/gnb.jsp"/>
