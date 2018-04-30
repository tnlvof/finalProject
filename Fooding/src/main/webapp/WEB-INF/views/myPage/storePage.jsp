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
			<ul class="tab">
				<li class="item" onclick="location.href='goMyPage.me'">정보 입력</li>
				<li class="item" onclick="location.href='goMyPageReview.me'">리뷰</li>
				<li class="item" onclick="location.href='goMyPageQuestions.bo'">1:1 문의</li>
			</ul>
			<div id="reservation" class="body empty">
				<div class="filter">
<!-- 					<a href="#" class="">방문 예정 예약</a> <a
						href="#" class="">지나간 예약</a> -->
				</div>
				
				<!-- 예약화면 -->
				<div class="list">
<!-- /*********************************************/ -->

<div class="storeInfo" align="center">
	<form class="storeInfo_form" action="storeInfo.st" method="post"  enctype="multipart/form-data">
		<ul class="storeInfotable">
			<li>
				<label>업체명</label>
				<input type="text" name="sName">
			</li>
				
			<li>
				<label>음식 종류</label>
			<!-- 	<input type="text" name="sCode"> -->
				<div class="facilities">
					<input type="checkbox" id="korea" name="sCode" value="한식"> <label for="private">한식</label>
					<input type="checkbox" id="china" name="sCode" value="중식"><label for="smoking">중식</label>
					<input type="checkbox" id="japan" name="sCode" value="일식"> <label for="parking">일식</label>
					<input type="checkbox" id="western" name="sCode" value="양식"> <label for="baby">양식</label>
				</div>
			</li>
			<li>
				<label>전화 번호</label>
				<input type="text" name="phone">
			</li>
			
			<li>	
				<label>예약 가능 여부</label>
				<input type="text" name="bookYN">
			</li>
			
			<li>	
				<label>주소</label>
				<input type="text" name="address">
			</li>
			
			<li>	
				<label>가는법</label>
				<input type="text" name="sLocation">
			</li>
			
			<li>	
				<label>영업 시간</label>
				<input type="text" name="sHours">
			</li>
			
			<li>	
				<label>쉬는날</label>
				<input type="text" name="dayoff">
			</li>
			
			<li>	
				<label>테이블수</label>
				<input type="text" name="sTable">
			</li>
			
			<li>	
				<label>예산</label>
				<input type="text" name="budget">
			</li>
			
			<li>	
				<label>분위기</label>
				<input type="text" name="atmosphere">
			</li>
			
			<li>	
				<label>편의시설</label>
				<div class="facilities">
					<input type="checkbox" id="private" name="facilities" value="개인실"> <label for="private">개인실</label>
	                <input type="checkbox" id="smoking" name="facilities" value="흡연실"> <label for="smoking">흡연실</label>
	                <input type="checkbox" id="parking" name="facilities" value="주차장"> <label for="parking">주차장</label>
	                <input type="checkbox" id="baby" name="facilities" value="베이비체어"> <label for="baby">베이비 체어</label>
	                <br>
	                <br>
	                <input type="checkbox" id="sofa" name="facilities" value="소파자리"> <label for="sofa">소파 자리</label>
	                <input type="checkbox" id="wheelchair" name="facilities" value="휠체어석"> <label for="wheelchair">휠체어 석</label>
	                <input type="checkbox" id="elevator" name="facilities" value="엘레베이터"> <label for="elevator">엘레베이터</label>
	                <input type="checkbox" id="pat" name="facilities" value="애완동물 출입가능"> <label for="pat">애완동물 출입가능</label>
				</div>
			</li>
			
			<li>
				<label>메뉴</label>
				<textarea id="menutextarea" cols="50" rows="15" style="resize:none;" name="description"></textarea>
			</li>
			
			<li>
				<label>대표이미지</label>
	            <div class="filebox preview-image"> 
	            	<input class="upload-name" value="파일선택" disabled="disabled"> 
	                <label for="input-file">업로드</label> 
	                <input type="file" id="input-file" class="upload-hidden" name="Photo"> 
	            </div>
			</li>
			
		</ul>
		<!-- storeInfotable -->
		
		<div class="btn-box">
			<button type="submit">수정하기</button>
			<button type="reset">목록으로</button>   
		</div>
	</form>
</div>
<!-- /*********************************************/ -->
				</div>
			</div>
		</div>
		<jsp:include page="/WEB-INF/views/myPage/myPageSidebar.jsp" />
	</div>
</div>
<!-- container -->

<!-- footer -->
<jsp:include page="/WEB-INF/views/common/footer.jsp"/>
