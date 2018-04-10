<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<meta charset="UTF-8">

<meta name="viewport" content="width=device-width, initial-scale=1">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

<!-- header -->
<jsp:include page="/WEB-INF/views/common/header.jsp"/>

<!-- css or js파일 연결 시키는 곳 -->

<link rel="stylesheet" href="/fooding/resources/css/adminNav.css">


<div class="container">

<!-- 메뉴 -->

<div class="tab">
  <button class="tablinks" onclick="openCity(event, 'memberList')" id="defaultOpen">회원관리</button>
  <button class="tablinks" onclick="openCity(event, 'Paris')">업체관리</button>
  <button class="tablinks" onclick="openCity(event, 'Tokyo')">예약관리</button>
  <button class="tablinks" onclick="openCity(event, 'Tokyo')">광고현황</button>
  <button class="tablinks" onclick="openCity(event, 'Tokyo')">수익관리</button>
  <button class="tablinks" onclick="openCity(event, 'Tokyo')">1:1 문의</button>
</div>

<!--  /메뉴 -->


<!-- 회원관리 -->

<div id="memberList" class="tabcontent">
  	<h3>회원 조회</h3>
  	<select>
  		
  		<option>아이디</option>
  		<option>이름</option>
  		<option>생년월일</option>
  		<option>연락처</option>
  		<option>이메일</option>
  		<option>주소</option>
  	</select>
  	<input type="search">
  	<button type="submit" class="searchBtn">검색</button>
  	<br><br>
 	<div id="tableArea">
 	<table id="memberList" align="center" >
 	<tr style="border-bottom:1px solid lightgray;">
 	<th style="width:100px; text-align:center;height:20px;font-weight:bold;">아이디</th>
 	<th style="width:100px; text-align:center;height:20px;font-weight:bold;">이름</th>
 	<th style="width:150px; text-align:center;height:20px;font-weight:bold;">생년월일</th>
 	<th style="width:150px; text-align:center;height:20px;font-weight:bold;">연락처</th>
 	<th style="width:150px; text-align:center;height:20px;font-weight:bold;">이메일</th>
 	<th style="width:150px; text-align:center;height:20px;font-weight:bold;">주소</th>
 	<th style="width:100px; text-align:center;height:20px;font-weight:bold;">신고횟수</th>
 	<th style="width:100px; text-align:center;height:20px;font-weight:bold;">예약 누적 횟수</th>
 	<th style="width:100px; text-align:center;height:20px;font-weight:bold;">탈퇴여부</th> 	
 	
 	</tr>
 	
 	<tr class="tableRow">
 		 <td style="padding:10px; cursor:pointer;">tnlvof</td>
 		 <td >이종수</td>
 		 <td >550101</td>
 		 <td >010-1234-5675</td>
 		 <td >2glei@kh.or.kr</td>
 		 <td >노량진</td>
 		 <td>0</td>
 		 <td >15</td>
 		 <td >N</td>
 	</tr>
 	<tr>
 		 <td style="padding:10px;">tnlvof</td>
 		 <td>이종수</td>
 		 <td>550101</td>
 		 <td>010-1234-5675</td>
 		 <td>2glei@kh.or.kr</td>
 		 <td>노량진</td>
 		 <td>0</td>
 		 <td>15</td>
 		 <td>N</td>
 	</tr>
 	<tr>
 		 <td style="padding:10px;">tnlvof</td>
 		 <td>이종수</td>
 		 <td>550101</td>
 		 <td>010-1234-5675</td>
 		 <td>2glei@kh.or.kr</td>
 		 <td>노량진</td>
 		 <td>0</td>
 		 <td>15</td>
 		 <td>N</td>
 	</tr>
 	<tr>
 		 <td style="padding:10px;">tnlvof</td>
 		 <td>이종수</td>
 		 <td>550101</td>
 		 <td>010-1234-5675</td>
 		 <td>2glei@kh.or.kr</td>
 		 <td>노량진</td>
 		 <td>0</td>
 		 <td>15</td>
 		 <td>N</td>
 	</tr>
 	<tr>
 		 <td style="padding:10px;">tnlvof</td>
 		 <td>이종수</td>
 		 <td>550101</td>
 		 <td>010-1234-5675</td>
 		 <td>2glei@kh.or.kr</td>
 		 <td>노량진</td>
 		 <td>0</td>
 		 <td>15</td>
 		 <td>N</td>
 	</tr>
 	<tr>
 		 <td style="padding:10px;">tnlvof</td>
 		 <td>이종수</td>
 		 <td>550101</td>
 		 <td>010-1234-5675</td>
 		 <td>2glei@kh.or.kr</td>
 		 <td>노량진</td>
 		 <td>0</td>
 		 <td>15</td>
 		 <td>N</td>
 	</tr>
 	<tr>
 		 <td style="padding:10px;">tnlvof</td>
 		 <td>이종수</td>
 		 <td>550101</td>
 		 <td>010-1234-5675</td>
 		 <td>2glei@kh.or.kr</td>
 		 <td>노량진</td>
 		 <td>0</td>
 		 <td>15</td>
 		 <td>N</td>
 	</tr>
 	<tr>
 		 <td style="padding:10px;">tnlvof</td>
 		 <td>이종수</td>
 		 <td>550101</td>
 		 <td>010-1234-5675</td>
 		 <td>2glei@kh.or.kr</td>
 		 <td>노량진</td>
 		 <td>0</td>
 		 <td>15</td>
 		 <td>N</td>
 	</tr>
 	<tr>
 		 <td style="padding:10px;">tnlvof</td>
 		 <td>이종수</td>
 		 <td>550101</td>
 		 <td>010-1234-5675</td>
 		 <td>2glei@kh.or.kr</td>
 		 <td>노량진</td>
 		 <td>0</td>
 		 <td>15</td>
 		 <td>N</td>
 	</tr>
 	<tr>
 		 <td style="padding:10px;">tnlvof</td>
 		 <td>이종수</td>
 		 <td>550101</td>
 		 <td>010-1234-5675</td>
 		 <td>2glei@kh.or.kr</td>
 		 <td>노량진</td>
 		 <td>0</td>
 		 <td>15</td>
 		 <td>N</td>
 	</tr>
 	<tr>
 		 <td style="padding:10px;">tnlvof</td>
 		 <td>이종수</td>
 		 <td>550101</td>
 		 <td>010-1234-5675</td>
 		 <td>2glei@kh.or.kr</td>
 		 <td>노량진</td>
 		 <td>0</td>
 		 <td>15</td>
 		 <td>N</td>
 	</tr>
 	<tr>
 		 <td style="padding:10px;">tnlvof</td>
 		 <td>이종수</td>
 		 <td>550101</td>
 		 <td>010-1234-5675</td>
 		 <td>2glei@kh.or.kr</td>
 		 <td>노량진</td>
 		 <td>0</td>
 		 <td>15</td>
 		 <td>N</td>
 	</tr>
 	<tr>
 		 <td style="padding:10px;">tnlvof</td>
 		 <td>이종수</td>
 		 <td>550101</td>
 		 <td>010-1234-5675</td>
 		 <td>2glei@kh.or.kr</td>
 		 <td>노량진</td>
 		 <td>0</td>
 		 <td>15</td>
 		 <td>N</td>
 	</tr>
 	<tr>
 		 <td style="padding:10px;">tnlvof</td>
 		 <td>이종수</td>
 		 <td>550101</td>
 		 <td>010-1234-5675</td>
 		 <td>2glei@kh.or.kr</td>
 		 <td>노량진</td>
 		 <td>0</td>
 		 <td>15</td>
 		 <td>N</td>
 	</tr>
 	
 	
 	
 	
 	</table>
 </div>

</div>


<!--/ 회원관리 -->


<div id="Paris" class="tabcontent">
  <h3>Paris</h3>
  <p>Paris is the capital of France.</p> 
</div>

<div id="Tokyo" class="tabcontent">
  <h3>Tokyo</h3>
  <p>Tokyo is the capital of Japan.</p>
</div>

<script>
function openCity(evt, cityName) {
    var i, tabcontent, tablinks;
    tabcontent = document.getElementsByClassName("tabcontent");
    for (i = 0; i < tabcontent.length; i++) {
        tabcontent[i].style.display = "none";
    }
    tablinks = document.getElementsByClassName("tablinks");
    for (i = 0; i < tablinks.length; i++) {
        tablinks[i].className = tablinks[i].className.replace(" active", "");
    }
    document.getElementById(cityName).style.display = "block";
    evt.currentTarget.className += " active";
}

// Get the element with id="defaultOpen" and click on it
document.getElementById("defaultOpen").click();



</script>
     






</div>
<!-- container -->



<!-- footer -->
<jsp:include page="/WEB-INF/views/common/footer.jsp"/>