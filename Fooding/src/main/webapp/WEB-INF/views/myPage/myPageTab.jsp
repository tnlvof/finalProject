<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:if test="${ loginUser.mCode == '일반' }">
<ul class="tab">
	<li class="item" onclick="location.href='goMyPage.me'">예약</li>
	<li class="item" onclick="location.href='goMyPageReview.me'">리뷰</li>
	<li class="item" onclick="location.href='goMyPageQuestions.bo'">1:1
		문의</li>
	<li class="item">설정</li>
</ul>
</c:if>
<c:if test="${ loginUser.mCode == '업체' }">
<ul class="tab">
				<li class="item" onclick="location.href='goMyPage.me'">예약</li>
				<li class="item" onclick="location.href='goMyPageReview.me'">리뷰</li>
				<li class="item" onclick="location.href='goStoreCoupon.st'">쿠폰</li>
				<li class="item" onclick="location.href='goMyPageQuestions.bo'">1:1 문의</li>
				<li class="item" onclick="location.href='goStorePage.me'">가게 정보</li>
			</ul>
</c:if>