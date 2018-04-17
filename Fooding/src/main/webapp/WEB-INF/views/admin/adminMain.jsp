<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<meta charset="UTF-8">

<meta name="viewport" content="width=device-width, initial-scale=1">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

<!-- header -->
<jsp:include page="/WEB-INF/views/common/header.jsp"/>

<!-- css or js파일 연결 시키는 곳 -->
<link rel="stylesheet" href="/fooding/resources/css/admin.css">


<div class="container">

<!-- 메뉴 -->

<div class="tab">
  <button class="tablinks" onclick="openTab(event, 'memberList')" id="defaultOpen">회원관리</button>
  <button class="tablinks" onclick="openTab(event, 'storeList')">업체관리</button>
  <button class="tablinks" onclick="openTab(event, 'rsvList')">예약관리</button>
  <button class="tablinks" onclick="openTab(event, 'Tokyo')">광고현황</button>
  <button class="tablinks" onclick="openTab(event, 'profitTab')">수익관리</button>
  <button class="tablinks" onclick="openTab(event, 'Tokyo')">1:1 문의</button>
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
  	<input type="search" id="memberSearchBar">
  	<button type="submit" class="searchBtn" id="searchBtn">검색</button>
  	
  	<button class="searchBtn" id="editBtn" >수정</button>
  	<!--  -->
  	<script type="text/javascript">
  		$(function(){
  			
  			//검색 버튼
  			$("#searchBtn").click(function(){
  				var keyword = $("#memberSearchBar").val();  				
  				console.log(keyword);
  				if(keyword==""){
  					alert('검색어를 입력해주세요.');
  				}
  				
  			});
  			
  			//수정 버튼
  				
  			
  			 
  			$("#editBtn").click(function(){  				
  				if(! $(".memberCheck").is(":checked")){
  					alert("수정할 회원을 선택해주세요.");
  				} else{
  					$("#memberForm").submit();
  				}  			
  			});
  		 
  		});
  		
  	</script>
  	
  	<br><br>
  	<form id="memberForm" action="showEditForm.me" method="post">
 	<div class="tableArea">
 	<table class="tableList" align="center" id="membertable">
 	
 	<tr style="border-bottom:1px solid lightgray;">
 	<th style="width:100px; text-align:center;height:20px;font-weight:bold;"><input type="checkbox" id="checkAll">&nbsp;전체선택</th>
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
 	
 	
 	
 	</table>
 </div>

</div>

</form>
<!--/ 회원관리 -->

<!-- 업체 관리 -->
<div id="storeList" class="tabcontent">
<h3>업체 조회</h3>



	<select id="searchSelect" >  		
  		<option>업체명</option>
  		<option>사업자번호</option>
  		<option>전화번호</option>
  		<option>업종</option>  		  	
  		<option>예산</option>
  		<option>예약가능여부</option>	
  		<option>주소</option>
  		<option>분위기</option>
  		<option>편의시설</option>  		
  	</select>
  	
  	<!-- 검색창 -->  	
  	<input type="search" id="searchBar">

	
  	
  	<button type="submit" class="searchBtn">검색</button>
  	
  	<button class="searchBtn">수정</button>
  	<br><br>
 	<div class="tableArea">
 	<table class="tableList" align="center" >
 	
 	<tr style="border-bottom:1px solid lightgray;">
 	<th style="width:100px;  text-align:center;height:20px;font-weight:bold;"><input type="checkbox" id="checkAll2">&nbsp;전체선택</th>
 	<th style="width:100px; text-align:center;height:20px;font-weight:bold;">사업자번호</th>
 	<th style="width:100px; text-align:center;height:20px;font-weight:bold;">업체명</th>
 	<th style="width:100px; text-align:center;height:20px;font-weight:bold;">전화번호</th>
 	<th style="width:100px; text-align:center;height:20px;font-weight:bold;">업종</th>
 	<th style="width:100px; text-align:center;height:20px;font-weight:bold;">예약가능여부</th>
 	<th style="width:100px; text-align:center;height:20px;font-weight:bold;">주소</th>
 	<th style="width:100px; text-align:center;height:20px;font-weight:bold;">영업시간</th>
 	<th style="width:100px; text-align:center;height:20px;font-weight:bold;">휴일</th>
 	<th style="width:100px; text-align:center;height:20px;font-weight:bold;">예산</th>
  <th style="width:100px; text-align:center;height:20px;font-weight:bold;">분위기</th> 	
 	<th style="width:100px; text-align:center;height:20px;font-weight:bold;">편의시설</th> 
 	</tr>
 	
 	<tr class="tableRow">
 		<td><input class="storeCheck" type="checkbox"></td>
 		 <td style="padding:10px;">0000000000</td>
 		 <td >에머이</td>
 		 <td >555-0101</td>
 		 <td >동남아식</td>
 		 <td >Y</td>
 		 <td >강남역 10번 출구</td>
 		 <td>24시간</td>
 		 <td>null</td>
 		 <td>10000-20000</td>
 		 <td>캐주얼, 데이트</td>
 		 <td>베이비 체어, 와이파이, 내부 화장실, 주차불가uuuuuuuuuuuuuuuuuuuuuuuu</td> 
 	</tr>
 	<tr class="tableRow">
 		<td><input class="storeCheck" type="checkbox"></td>
 		 <td style="padding:10px;">0000000000</td>
 		 <td >바토스</td>
 		 <td >555-0101</td>
 		 <td >멕시칸</td>
 		 <td >Y</td>
 		 <td >이태원 1번 출구</td>
 		 <td>11:00-23:00</td>
 		 <td>null</td>
 		 <td>10000-20000</td>
 		 <td>캐주얼, 데이트</td>
 		 <td>베이비 체어, 와이파이, 내부 화장실, 주차불가</td> 
 	</tr>
 	<tr class="tableRow">
 		<td><input class="storeCheck" type="checkbox"></td>
 		 <td style="padding:10px;">0000000000</td>
 		 <td >한와담</td>
 		 <td >555-5101</td>
 		 <td >한식</td>
 		 <td >Y</td>
 		 <td >한남동</td>
 		 <td>11:30-11:00</td>
 		 <td>null</td>
 		 <td>30000-40000</td>
 		 <td>회식</td>
 		 <td>베이비 체어, 와이파이, 내부 화장실, 주차가능</td> 
 	</tr>
 	<tr class="tableRow">
 		<td><input class="storeCheck" type="checkbox"></td>
 		 <td style="padding:10px;">0000000000</td>
 		 <td >아오리 라멘</td>
 		 <td >555-0108</td>
 		 <td >일식</td>
 		 <td >N</td>
 		 <td >강남역 10번 출구</td>
 		 <td>10:30-23:00</td>
 		 <td>null</td>
 		 <td>10000-20000</td>
 		 <td>캐주얼, 데이트</td>
 		 <td>베이비 체어, 와이파이, 내부 화장실, 주차불가</td> 
 	</tr>
 	<tr class="tableRow">
 		<td><input class="storeCheck" type="checkbox"></td>
 		 <td style="padding:10px;">0000000000</td>
 		 <td >에머이</td>
 		 <td >555-0101</td>
 		 <td >동남아식</td>
 		 <td >Y</td>
 		 <td >강남역 10번 출구</td>
 		 <td>24시간</td>
 		 <td>null</td>
 		 <td>10000-20000</td>
 		 <td>캐주얼, 데이트</td>
 		 <td>베이비 체어, 와이파이, 내부 화장실, 주차불가uuuuuuuuuuuuuuuuuuuuuuuu</td> 
 	</tr>
 	<tr class="tableRow">
 		<td><input class="storeCheck" type="checkbox"></td>
 		 <td style="padding:10px;">0000000000</td>
 		 <td >에머이</td>
 		 <td >555-0101</td>
 		 <td >동남아식</td>
 		 <td >Y</td>
 		 <td >강남역 10번 출구</td>
 		 <td>24시간</td>
 		 <td>null</td>
 		 <td>10000-20000</td>
 		 <td>캐주얼, 데이트</td>
 		 <td>베이비 체어, 와이파이, 내부 화장실, 주차불가uuuuuuuuuuuuuuuuuuuuuuuu</td> 
 	</tr>
 	<tr class="tableRow">
 		<td><input class="storeCheck" type="checkbox"></td>
 		 <td style="padding:10px;">0000000000</td>
 		 <td >에머이</td>
 		 <td >555-0101</td>
 		 <td >동남아식</td>
 		 <td >Y</td>
 		 <td >강남역 10번 출구</td>
 		 <td>24시간</td>
 		 <td>null</td>
 		 <td>10000-20000</td>
 		 <td>캐주얼, 데이트</td>
 		 <td>베이비 체어, 와이파이, 내부 화장실, 주차불가uuuuuuuuuuuuuuuuuuuuuuuu</td> 
 	</tr>
 	<tr class="tableRow">
 		<td><input class="storeCheck" type="checkbox"></td>
 		 <td style="padding:10px;">0000000000</td>
 		 <td >에머이</td>
 		 <td >555-0101</td>
 		 <td >동남아식</td>
 		 <td >Y</td>
 		 <td >강남역 10번 출구</td>
 		 <td>24시간</td>
 		 <td>null</td>
 		 <td>10000-20000</td>
 		 <td>캐주얼, 데이트</td>
 		 <td>베이비 체어, 와이파이, 내부 화장실, 주차불가uuuuuuuuuuuuuuuuuuuuuuuu</td> 
 	</tr>
 	<tr class="tableRow">
 		<td><input class="storeCheck" type="checkbox"></td>
 		 <td style="padding:10px;">0000000000</td>
 		 <td >에머이</td>
 		 <td >555-0101</td>
 		 <td >동남아식</td>
 		 <td >Y</td>
 		 <td >강남역 10번 출구</td>
 		 <td>24시간</td>
 		 <td>null</td>
 		 <td>10000-20000</td>
 		 <td>캐주얼, 데이트</td>
 		 <td>베이비 체어, 와이파이, 내부 화장실, 주차불가uuuuuuuuuuuuuuuuuuuuuuuu</td> 
 	</tr>
 	
 	
 	
 	</table>
 </div>

</div>

<!-- /업체 관리 -->




<!-- 예약 관리 -->
<div id="rsvList" class="tabcontent">
<h3>예약 조회</h3>

<script type="text/javascript">
 $(function(){
	$("#datePicker").hide();
}); 

function getCue(){
	var searchSelect = document.getElementById("searchRsvSelect");
	var str = searchSelect.options[searchSelect.selectedIndex].value;
	
	console.log(str);
	
 	if(str=="날짜"){
		$("#searchRsvBar").toggle();
		$("#datePicker").toggle();			
	} else {			
		$("#searchRsvBar").show();
		$("#datePicker").hide();		
	} 
}
	
</script>

	<select id="searchRsvSelect" onchange="getCue()" >  		
  		<option >예약자명</option>
  		<option >업체명</option>  		
  		<option >날짜</option> 		    			
  	</select>
  	
  	<!-- 검색창 -->  	
  	<input type="search" id="searchRsvBar">

	<input type="date" id="datePicker">
  	
  	<button type="submit" class="searchBtn">검색</button>
  	
  	<button class="searchBtn">수정</button>
  	<br><br>
 	<div class="tableArea">
 	<table class="tableList" align="center" >
 	
 	<tr style="border-bottom:1px solid lightgray;">
 	<th style="width:50px;  text-align:center;height:20px;font-weight:bold;">
 		<input type="checkbox" id="checkAll3">&nbsp;전체선택
 	</th>
 	<th style="width:100px; text-align:center;height:20px;font-weight:bold;">예약자명</th>
 	<th style="width:120px; text-align:center;height:20px;font-weight:bold;">예약자 연락처</th>
 	<th style="width:200px; text-align:center;height:20px;font-weight:bold;">업체명</th>
 	<th style="width:150px; text-align:center;height:20px;font-weight:bold;">날짜</th>
 	<th style="width:150px; text-align:center;height:20px;font-weight:bold;">시간</th>
 	<th style="width:100px; text-align:center;height:20px;font-weight:bold;">인원수</th>
 	<th style="width:300px; text-align:center;height:20px;font-weight:bold;">요구사항</th>
 	
 	</tr>
 	
 	<tr class="tableRow">
 		<td><input class="rsvCheck" type="checkbox"></td>
 		 <td style="padding:10px;">류수린</td>
 		 <td>1111111111</td>
 		 <td >브릭오븐</td>
 		 <td >2018-05-01</td>
 		 <td >오후 10:00</td>
 		 <td >6</td>
 		 <td >야외자리 주세요</td> 		
 	</tr>
 		
 <tr class="tableRow">
 		<td><input class="rsvCheck" type="checkbox"></td>
 		 <td style="padding:10px;">류수린</td>
 		 <td>1111111111</td>
 		 <td >브릭오븐</td>
 		 <td >2018-05-01</td>
 		 <td >오후 10:00</td>
 		 <td >6</td>
 		 <td >야외자리 주세요</td> 		
 	</tr>
 		
 		<tr class="tableRow">
 		<td><input class="rsvCheck" type="checkbox"></td>
 		 <td style="padding:10px;">류수린</td>
 		 <td>1111111111</td>
 		 <td >브릭오븐</td>
 		 <td >2018-05-01</td>
 		 <td >오후 10:00</td>
 		 <td >6</td>
 		 <td >야외자리 주세요</td> 		
 	</tr>
 		
 		<tr class="tableRow">
 		<td><input class="rsvCheck" type="checkbox"></td>
 		 <td style="padding:10px;">류수린</td>
 		 <td>1111111111</td>
 		 <td >브릭오븐</td>
 		 <td >2018-05-01</td>
 		 <td >오후 10:00</td>
 		 <td >6</td>
 		 <td >야외자리 주세요</td> 		
 	</tr>
 		
 		<tr class="tableRow">
 		<td><input class="rsvCheck" type="checkbox"></td>
 		 <td style="padding:10px;">류수린</td>
 		 <td>1111111111</td>
 		 <td >브릭오븐</td>
 		 <td >2018-05-01</td>
 		 <td >오후 10:00</td>
 		 <td >6</td>
 		 <td >야외자리 주세요</td> 		
 	</tr>
 		
 		<tr class="tableRow">
 		<td><input class="rsvCheck" type="checkbox"></td>
 		 <td style="padding:10px;">류수린</td>
 		 <td>1111111111</td>
 		 <td >브릭오븐</td>
 		 <td >2018-05-01</td>
 		 <td >오후 10:00</td>
 		 <td >6</td>
 		 <td >야외자리 주세요</td> 		
 	</tr>
 		
 		<tr class="tableRow">
 		<td><input class="rsvCheck" type="checkbox"></td>
 		 <td style="padding:10px;">류수린</td>
 		 <td>1111111111</td>
 		 <td >브릭오븐</td>
 		 <td >2018-05-01</td>
 		 <td >오후 10:00</td>
 		 <td >6</td>
 		 <td >야외자리 주세요</td> 		
 	</tr>
 		
 		
 		
 	
 	
 	</table>
 </div>

</div>

<!-- /예약 관리 -->


<!-- 수익 관리 -->

<div id="profitTab" class="tabcontent">
	
	<h3>수익 관리</h3>
	
	<div class="tableArea" id="profitTable">
 	<select>
  		
  		<option>결제자명</option>
  		<option>사업자번호</option>
  		<option>사업장</option>
  		<option>결제수단</option>
  		<option>결제금액</option>
  		<option>결제날짜</option>
  	</select>
  	<input type="search">
  	<button type="submit" class="searchBtn">검색</button>
 	<table class="tableList" align="center" >
 	
 	<tr style="border-bottom:1px solid lightgray;">
 	<th style="width:50px;  text-align:center;height:20px;font-weight:bold;">
 		<input type="checkbox" id="checkAll4">&nbsp;전체선택
 	</th>
 	<th style="width:100px; text-align:center;height:20px;font-weight:bold;">결제자명</th>
 	
 	<th style="width:100px; text-align:center;height:20px;font-weight:bold;">사업장</th>
 	<th style="width:120px; text-align:center;height:20px;font-weight:bold;">사용결제수단</th>
 	<th style="width:200px; text-align:center;height:20px;font-weight:bold;">결제금액</th>
 	<th style="width:150px; text-align:center;height:20px;font-weight:bold;">결제날짜</th>
 	<th style="width:150px; text-align:center;height:20px;font-weight:bold;">성공여부</th>
 	
 	</tr>
 	
 	<tr class="tableRow">
 		<td><input class="pftCheck" type="checkbox"></td>
 		 <td style="padding:10px;">강지은</td>
 		 <td>마녀김밥</td> 		 
 		 <td>신용카드</td>
 		 <td >100,000</td>
 		 <td >2018-05-01</td>
 		 <td >Y</td>
 		  		
 	</tr>
 	<tr class="tableRow">
 		<td><input class="pftCheck" type="checkbox"></td>
 		 <td style="padding:10px;">강지은</td>
 		 <td>마녀김밥</td> 		 
 		 <td>신용카드</td>
 		 <td >100,000</td>
 		 <td >2018-05-01</td>
 		 <td >Y</td>
 		  		
 	</tr>
 	<tr class="tableRow">
 		<td><input class="pftCheck" type="checkbox"></td>
 		 <td style="padding:10px;">강지은</td>
 		 <td>마녀김밥</td> 		 
 		 <td>신용카드</td>
 		 <td >100,000</td>
 		 <td >2018-05-01</td>
 		 <td >Y</td>
 		  		
 	</tr>
 	<tr class="tableRow">
 		<td><input class="pftCheck" type="checkbox"></td>
 		 <td style="padding:10px;">강지은</td>
 		 <td>마녀김밥</td> 		 
 		 <td>신용카드</td>
 		 <td >100,000</td>
 		 <td >2018-05-01</td>
 		 <td >Y</td>
 		  		
 	</tr>
 	<tr class="tableRow">
 		<td><input class="pftCheck" type="checkbox"></td>
 		 <td style="padding:10px;">강지은</td>
 		 <td>마녀김밥</td> 		 
 		 <td>신용카드</td>
 		 <td >100,000</td>
 		 <td >2018-05-01</td>
 		 <td >Y</td>
 		  		
 	</tr>
 	<tr class="tableRow">
 		<td><input class="pftCheck" type="checkbox"></td>
 		 <td style="padding:10px;">강지은</td>
 		 <td>마녀김밥</td> 		 
 		 <td>신용카드</td>
 		 <td >100,000</td>
 		 <td >2018-05-01</td>
 		 <td >Y</td>
 		  		
 	</tr>
 	
 	
 	</table>
 </div>
	
	
	<!-- 월간 수익 -->
	<div class="profits">
		
	<h5 class="titles">최근 6개월간 수익</h5>
	<div id="chart_div2" style="width:100%;  height: 600px;"></div>
	
	</div>
	
	<!-- 연간 수익 -->
	<div class="profits">	
	<h5 class="titles">최근 5년간 수익</h5>
	<div id="chart_div" style="width:100%;  height: 600px;"></div>
	
	</div>
	
	
	
	
	
</div>

<script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
    <script type="text/javascript">
      google.charts.load('current', {'packages':['corechart']});
      google.charts.setOnLoadCallback(drawChart);
      window.onresize = drawChart;

      function drawChart() {
    	  
    	  var dataMonthly = google.visualization.arrayToDataTable([
              ['Month', 'Sales'],
              ['1',  1000  ],
              ['2',  1170],
              ['3',  660],
              ['4',  1030],
              ['5',  1030],
              ['6',  5030],
              
            ]);
    	  
        var dataYearly = google.visualization.arrayToDataTable([
          ['Year', 'Sales'],
          ['2012',  1020  ],
          ['2013',  1000  ],
          ['2014',  1170],
          ['2015',  660],
          ['2016',  1030]
        ]);

       /*  
        var width =  1.53*window.innerHeight;
        var height = .3 * window.innerWidth;
 */
     
        var optionsYearly = {
          title: 'Company Performance',
          hAxis: {title: 'Year',  titleTextStyle: {color: '#333'}},
          vAxis: {minValue: 0}
        
          
        };
        
        var optionsMonthly = {
                title: 'Company Performance',
                hAxis: {title: 'Month',  titleTextStyle: {color: '#333'}},
                vAxis: {minValue: 0}
                
          };
        
        var yearlyChart = new google.visualization.AreaChart(document.getElementById('chart_div'));
        var montlyChart = new google.visualization.AreaChart(document.getElementById('chart_div2'));
        
        yearlyChart.draw(dataYearly, optionsYearly);
        montlyChart.draw(dataMonthly, optionsMonthly);
      }
      
      
      
    </script>

<!-- /수익 관리 -->



<!-- 1:1문의 -->


<!-- /1:1문의 -->

<script>
//탭 메뉴 설정
function openTab(evt, tabName) {
    var i, tabcontent, tablinks;
    tabcontent = document.getElementsByClassName("tabcontent");
    for (i = 0; i < tabcontent.length; i++) {
        tabcontent[i].style.display = "none";
    }
    tablinks = document.getElementsByClassName("tablinks");
    for (i = 0; i < tablinks.length; i++) {
        tablinks[i].className = tablinks[i].className.replace(" active", "");
    }
    document.getElementById(tabName).style.display = "block";
    evt.currentTarget.className += " active";
    
    
    if(tabName=='memberList'){
    	
    	console.log(tabName);
    	
    	$.ajax({
    		  method: "POST",
    		  url: "selectMemberList.me", 
    		  success:function(data){
    			
    			  console.log(data);
    			  console.log(data.memberlist);
    			  
    			  
    			  for(var i = 0; i<data.memberlist.length;i++){
    				  $("#membertable").append("<tr class='tableRow' > <td ><input type='checkbox' class='memberCheck' name='checkedrow'></td>");
    				  $(".tableRow").append("<td style='padding-top: 10px;padding-bottom:10px;' name='userId'><input type='hidden' value="+ data.memberlist[i].mid+" name='mid'>"+data.memberlist[i].userId+"</td>");
    				  $(".tableRow").append("<td name='userName'>"+data.memberlist[i].userName+"</td>");
    				  $(".tableRow").append("<td name='birth'>"+data.memberlist[i].birth+"</td>");
    				  $(".tableRow").append("<td name='phone'>"+data.memberlist[i].phone+"</td>");
    				  $(".tableRow").append("<td name='email'>"+data.memberlist[i].email+"</td>");
    				  $(".tableRow").append("<td name='address'>"+data.memberlist[i].address+"</td>");
    				  $(".tableRow").append("<td name='repCount'>"+data.memberlist[i].repCount+"</td>");
    				  $(".tableRow").append("<td name='bookCount'>"+data.memberlist[i].bookCount+"</td>");
    				  $(".tableRow").append("<td name='status'>"+data.memberlist[i].status+"</td></tr>");
    				      				  
    			  }
    				
    			  
    		  },
    		  error:function(){
    			  alert('안됨');
    		  }
    		});
    		  
    }
    
}

// Get the element with id="defaultOpen" and click on it
document.getElementById("defaultOpen").click();


//체크박스
$('#checkAll').click(function() {
    var c = this.checked;
    $('.memberCheck').prop('checked',c);
});


$('#checkAll2').click(function() {
    var c = this.checked;
    $('.storeCheck').prop('checked',c);
});

$('#checkAll3').click(function() {
    var c = this.checked;
    $('.rsvCheck').prop('checked',c);
});


$('#checkAll4').click(function() {
    var c = this.checked;
    $('.pftCheck').prop('checked', c);
});


</script>
     


</div>
<!-- container -->



<!-- footer -->
<jsp:include page="/WEB-INF/views/common/footer.jsp"/>
