<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!-- 등록된 가게일 경우 -->
<c:if test="${ s eq null}">

<div class="con-box">
	<div class="leftCon">
		<h4>예약 가능 여부 </h4>
		<p>${ store.bookYN }</p>
	</div>
	<!-- leftCon -->
	<div class="rightCon">
		<h4>가는법</h4>
		<p>${ store.sLocation }</p>
	</div>
	<!-- rightCon -->
</div>
<!-- con-box  -->

<div class="con-box">
	<div class="leftCon">
		<h4>음식 종류</h4>
		<p>${ store.sCode }</p>
	</div>
	<!-- leftCon -->
	<div class="rightCon">
		<h4>예산</h4>
		<p>${ store.budget }</p>
	</div>
	<!-- rightCon -->
</div>
<!-- con-box  -->

<div class="con-box">
	<div class="leftCon">
		<h4>테이블 수</h4>
		<p>${ store.sTable }</p>
	</div>
	<!-- leftCon -->
	<div class="rightCon">
		<h4>분위기</h4>
		<p>
			${ store.atmosphere }
		</p>
	</div>
	<!-- rightCon -->
</div>
<!-- con-box  -->

<div class="con-box">
	<div class="leftCon">
		<h4>편의시설</h4>
		<p>${ store.facilities }</p>
	</div>
	<!-- leftCon -->
	<div class="rightCon">
		<h4>기타내용</h4>
	<p>${ store.description }</p>
	</div>
	<!-- rightCon -->
</div>
<!-- con-box  -->

<div class="con-box">
	<h4>메뉴</h4>
	<p>${ store.menu }</p>
</div>
<!-- con-box  -->

</c:if>

<!-- 등록되지 않은 가게일 경우 -->
<c:if test="${ s ne null}">

<div class="con-box">
	<p style="padding:100px; font-size:20px;">아직 가게 정보가 등록되지 않았습니다.</p>
</div>
<!-- con-box  -->
</c:if>


