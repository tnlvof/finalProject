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
					<input type="checkbox" id="qnstlr" name="sCode" value="분식"> <label for="baby">분식</label>
				</div>
			</li>
			<li>
				<label>검색키워드</label>
				<input type="text" name="keyword">
			</li>
			<li>
				<label>전화 번호</label>
				<input type="text" name="phone">
			</li>
			
			<li>	
				<label>예약 가능 여부</label>
				<input type="text" name="bookYN" placeholder="가능하면 영어 대문자'Y', 그렇지 않으면 'N'으로 써주시기 바랍니다. ">
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
			 	<select style="text-align:right;" id="bookTime" name="bookTimeAm">				
						<option>오전 시간을 선택해주세요</option>
						<option>오전 00:00 부터</option>
						<option>오전 00:30 부터</option>
						<option>오전 01:00 부터</option>
						<option>오전 01:30 부터</option>
						<option>오전 02:00 부터</option>
						<option>오전 02:30 부터</option>
						<option>오전 03:00 부터</option>
						<option>오전 03:30 부터</option>
						<option>오전 04:00 부터</option>
						<option>오전 04:30 부터</option>
						<option>오전 05:00 부터</option>
						<option>오전 05:30 부터</option>
						<option>오전 06:00 부터</option>
						<option>오전 06:30 부터</option>
						<option>오전 07:00 부터</option>
						<option>오전 07:30 부터</option>
						<option>오전 08:00 부터</option>
						<option>오전 08:30 부터</option>
						<option>오전 09:00 부터</option>
						<option>오전 09:30 부터</option>
						<option>오전 10:00 부터</option>
						<option>오전 10:30 부터</option>
						<option>오전 11:00 부터</option>
						<option>오전 11:30 부터</option>
						<option>오후 12:00 부터</option>
						<option>오후 12:30 부터</option>
						<option>오후 13:00 부터</option>
						<option>오후 13:30 부터</option>
						<option>오후 14:00 부터</option>
						<option>오후 14:30 부터</option>
						<option>오후 15:00 부터</option>
						<option>오후 15:30 부터</option>
						<option>오후 16:00 부터</option>
						<option>오후 16:30 부터</option>
						<option>오후 17:00 부터</option>
						<option>오후 17:30 부터</option>
						<option>오후 18:00 부터</option>
						<option>오후 18:30 부터</option>
						<option>오후 19:00 부터</option>
						<option>오후 19:30 부터</option>
						<option>오후 20:00 부터</option>
						<option>오후 20:30 부터</option>
						<option>오후 21:00 부터</option>
						<option>오후 21:30 부터</option>
						<option>오후 22:00 부터</option>
						<option>오후 22:30 부터</option>
						<option>오후 23:00 부터</option>
						<option>오후 23:30 부터</option>																							
					  </select> 
					  	  
					  <select style="    text-align: right;   float: left;   width: 560px;    padding: 10px;  border: 1px solid #e5e5e5;    box-sizing: border-box;    margin-left: 100px;" id="bookTime" name="bookTimePm">			
						<option>오후 시간을 선택해주세요</option>						
						<option>오전 00:00 까지</option>
						<option>오전 00:30 까지</option>
						<option>오전 01:00 까지</option>
						<option>오전 01:30 까지</option>
						<option>오전 02:00 까지</option>
						<option>오전 02:30 까지</option>
						<option>오전 03:00 까지</option>
						<option>오전 03:30 까지</option>
						<option>오전 04:00 까지</option>
						<option>오전 04:30 까지</option>
						<option>오전 05:00 까지</option>
						<option>오전 05:30 까지</option>
						<option>오전 06:00 까지</option>
						<option>오전 06:30 까지</option>
						<option>오전 07:00 까지</option>
						<option>오전 07:30 까지</option>
						<option>오전 08:00 까지</option>
						<option>오전 08:30 까지</option>
						<option>오전 09:00 까지</option>
						<option>오전 09:30 까지</option>
						<option>오전 10:00 까지</option>
						<option>오전 10:30 까지</option>
						<option>오전 11:00 까지</option>
						<option>오전 11:30 까지</option>						
						<option>오후 12:00 까지</option>
						<option>오후 12:30 까지</option>
						<option>오후 13:00 까지</option>
						<option>오후 13:30 까지</option>
						<option>오후 14:00 까지</option>
						<option>오후 14:30 까지</option>
						<option>오후 15:00 까지</option>
						<option>오후 15:30 까지</option>
						<option>오후 16:00 까지</option>
						<option>오후 16:30 까지</option>
						<option>오후 17:00 까지</option>
						<option>오후 17:30 까지</option>
						<option>오후 18:00 까지</option>
						<option>오후 18:30 까지</option>
						<option>오후 19:00 까지</option>
						<option>오후 19:30 까지</option>
						<option>오후 20:00 까지</option>
						<option>오후 20:30 까지</option>
						<option>오후 21:00 까지</option>
						<option>오후 21:30 까지</option>
						<option>오후 22:00 까지</option>
						<option>오후 22:30 까지</option>
						<option>오후 23:00 까지</option>
						<option>오후 23:30 까지</option>						
				</select>				
				
			</li>
			
			<li>	
				<label>쉬는날</label>
				<input type="text" name="dayoff" placeholder="브레이크 타임이 있으면 이곳에 적어주세요.">
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
				<textarea id="menutextarea" cols="50" rows="15" style="resize:none;" name="menu"></textarea>
			</li>			
			<li>
				<label>기타내용</label>
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
			<button type="submit">등록하기</button>
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
