<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<meta charset="UTF-8">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">

<!-- header -->
<jsp:include page="/WEB-INF/views/common/header.jsp"/>

<link rel="stylesheet" href="/fooding/resources/css/myPage.css">
<link rel="stylesheet" href="/fooding/resources/css/storePage.css">

<div class="container" id="container">
	<jsp:include page="/WEB-INF/views/myPage/myPageBanner.jsp" />
	<div id="content_wrap">
		<div id="content" class="mypage">

			<jsp:include page="/WEB-INF/views/myPage/myPageTab.jsp"/>
      
			<div id="reservation" class="body empty">
				<div class="filter">
					<!-- <a href="#" class="">방문 예정 예약</a> <a href="#" class="">지나간 예약</a> -->
				</div>
				
				<!-- 예약화면 -->
				<div class="list">
					<ul>
						<li>
							<label>쿠폰명</label>
							<input type="text" name="cname" />
						</li>
						<li>
							<label>이용조건</label>
							<input type="text" name="cterm" />
						</li>
						<li>
							<label>사용방법</label>
							<input type="text" name="cmethod" />
						</li>
						<li>
							<label>쿠폰 사용 기간</label>
							<input type="text" name="cdate" />
						</li>
					</ul>
				</div>
				<!-- list -->
			</div>
			<!-- reservation -->
		</div>
		<!-- content -->
		<jsp:include page="/WEB-INF/views/myPage/myPageSidebar.jsp" />
	</div>
</div>
<!-- container -->

<!-- footer -->
<jsp:include page="/WEB-INF/views/common/footer.jsp"/>
