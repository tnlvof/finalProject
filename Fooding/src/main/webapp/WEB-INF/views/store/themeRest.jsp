<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<meta charset="UTF-8">


 
<!-- header --> 
<jsp:include page="/WEB-INF/views/common/header.jsp"/>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>


<!-- main css -->
<link rel="stylesheet" href="http://idangero.us/swiper/dist/css/swiper.min.css" />
<link rel="stylesheet" href="/fooding/resources/css/main.css">
 
	<div class="container">
		<h3>푸딩의 테마별 레스토랑을 모아보았습니다.</h3><br><br>
		
		<div class="themes" style="margin:50 auto; width:1000px; height:380px;  background-image:url('resources/images/main/kortheme.png')" onclick="location.href='themeRest.st?type=kor'">
			<div class="bg">
				<p align="center">집에서 먹어도, 밖에서 먹어도 맛있는 한식</p>
			</div>	
		</div>
		
		<div class="themes " style="margin:50 auto; width:1000px; height:380px;  background-image:url('resources/images/main/jptheme.png')" onclick="location.href='themeRest.st?type=japanese'">
			<div class="bg">
				<p align="center">주말 외식으로 일본 여행 기분을 느끼고 싶을 때</p>
			</div>	
		</div>
		
		<div class="themes " style="margin:50 auto; width:1000px; height:380px;  background-image:url('resources/images/main/westerntheme.png')" onclick="location.href='themeRest.st?type=western'">
			<div class="bg">
				<p align="center">특별한 날엔 양식이 진리</p>
			</div>	
		</div>
		<div class="themes " style="margin:50 auto; width:1000px; height:380px;  background-image:url('resources/images/main/chtheme.png')" onclick="location.href='themeRest.st?type=chinese'">
			<div class="bg">
				<p align="center">친숙한 재료로 내가 모르는 맛을 원한다면 중식</p>
			</div>	
		</div>
		<div class="themes " style="margin:50 auto; width:1000px; height:380px;  background-image:url('resources/images/main/streetfood.png')">
			<div class="bg">
				<p align="center">분식의 변신은 끝이 없습니다</p>
			</div>	
		</div>
		
		
	<!-- container -->

	</div>
<!-- 메인 슬라이더 -->


<!-- footer -->
<jsp:include page="/WEB-INF/views/common/footer.jsp"/>
