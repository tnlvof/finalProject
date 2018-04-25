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
  <button class="tablinks" onclick="openTab(event, 'adList')">광고현황</button>
  <button class="tablinks" onclick="openTab(event, 'profitTab')">수익관리</button>
  <button class="tablinks" onclick="openTab(event, 'qnaBoard')">1:1 문의</button>
</div>

<!--  /메뉴 -->


<!-- 회원관리 -->

<div id="memberList" class="tabcontent">
  	<h3>회원 조회</h3>
  	<select id="memberSelect">  		
  		<option>아이디</option>
  		<option>이름</option>  		
  		<option>연락처</option>
  		
  		
  	</select>
  	<input type="search" id="memberSearchBar">
  	<button type="submit" class="searchBtn" id="searchBtn">검색</button>
  	
  	<button class="searchBtn" id="editBtn" >수정</button>
  	<form id="memberForm" action="showEditForm.me" method="post">
		<input type="hidden" value="" name="editMid" id="editMid">  	
  	</form>
  	<!--  -->
  	<script type="text/javascript">
  		$(function(){
  			
  			//검색 버튼
  			$("#searchBtn").click(function(){
  				var keyword = $("#memberSearchBar").val();  				
  				console.log(keyword);
  				if(keyword==""){
  					alert('검색어를 입력해주세요.');
  				} else {
  					
  				// 아이디, 이름, 연락처 검색
  				var search ;
  				var key ;
  				
  				switch($("#memberSelect option:selected" ).text()){  				
	  				case '아이디': key = '아이디'; break;
	  				case '이름': key = '이름'; break;
	  				case '연락처': key ='연락처';break;
  				}
  				
  				search = $("#memberSearchBar").val();
  				
  				/* console.log("키" + key);
  				console.log("값" + search); */
  				
  				var data = {key : key, search:search };
  				console.log("맵 : ");
  				console.log( data);
  				
				  	$.ajax({
				 		
  		  				method:"post",
  		  				url:"searchMembers.me",
  		  				data: JSON.stringify(data),  
  		  				contentType:"application/json",
  		  				success:function(data){
  		  					/* alert('넘어감.'); */
  		  					
  		  					console.log(data);
  		  					
  		  				 $("#memberHeader").nextAll("tr").remove();
  		     			 
  		     			 for(var i = 0; i<data.searchList.length ; i++){	     				 	  
  		     				 
  		    				  $("#membertable").append("<tr class='tableRow' > <td ><input type='checkbox' name='memberCheck' class='memberCheck' onchange='checkMid()'> <input type='hidden' class='mid' value="+ data.searchList[i].mid+"></td>");
  		    				  $("#membertable").find(".tableRow").last().append("<td style='padding-top: 10px;padding-bottom:10px;' class='userId' name='userId'>"+data.searchList[i].userId+"</td>");
  		    				  $("#membertable").find(".tableRow").last().append("<td name='userName'>"+data.searchList[i].userName+"</td>");
  		    				  $("#membertable").find(".tableRow").last().append("<td name='birth'>"+data.searchList[i].birth+"</td>");
  		    				  $("#membertable").find(".tableRow").last().append("<td name='phone'>"+data.searchList[i].phone+"</td>");
  		    				  $("#membertable").find(".tableRow").last().append("<td name='email'>"+data.searchList[i].email+"</td>");
  		    				  $("#membertable").find(".tableRow").last().append("<td name='address'>"+data.searchList[i].address+"</td>");
  		    				  $("#membertable").find(".tableRow").last().append("<td name='repCount'>"+data.searchList[i].repCount+"</td>");
  		    				  $("#membertable").find(".tableRow").last().append("<td name='bookCount'>"+data.searchList[i].bookCount+"</td>");
  		    				  $("#membertable").find(".tableRow").last().append("<td name='status'>"+data.searchList[i].status+"</td></tr>");
  		    				      				  				  
  		    			  } 
  		  					
  		  					
  		  					
  		  				},
  		  				error:function(){
  		  					alert('ㅡㅡ');
  		  				}
  		  				
  		  			}); 
				
  		  		 
  					
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
  		
  		function checkMid(){
  			if($(".memberCheck").is(':checked')){
  				
  				 //console.log($(".memberCheck:checked").parents().find('.userId').text());
  				//console.log($('input[name="memberCheck"]:checked').serialize());
  				
  				
  			    var array = [];
  				 
  				$('input[name="memberCheck"]:checked').each(function() {
  					
  					 if($(this).is(':checked')){  			
  						 
  						 array.push($(this).next().val());
  						 
					 console.log('어레이 : ' );  								     
  					   console.log(array);
  					 }
  					 
  						
  				});

  			} 
				 $('#editMid').val(array);
  		}
  		
  		
		 
  	</script>
  	
  	<br><br>
  
  
  	
 	<div class="tableArea">
 	<table class="tableList" align="center" id="membertable">
 	
 	<tr style="border-bottom:1px solid lightgray;" id="memberHeader">
 	<th style="width:100px; text-align:center;height:20px;font-weight:bold;"><input type="checkbox" id="checkAll" onchange='checkMid()'>&nbsp;전체선택</th>
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

<div id="qnaBoard" class="tabcontent">
	
	<h3>1 : 1  문의 게시판</h3>  
	<script type="text/javascript">
	
	
	$(function(){
		
		//검색 버튼
			$("#searchBtnQ").click(function(){
				var keyword = $("#qnaSearchBar").val();  
				
				console.log(keyword);
				
				if( $("#qnaSearchBar").is(":visible") && keyword==""){
										
					alert('검색어를 입력해주세요.');
				} else {
					
				// 아이디, 이름, 연락처 검색
				var search ;
				var key;
			
					
				switch($("#qnaSelect option:selected" ).text()){			
	  					case '제목': key = '제목';  console.log(key); break;
	  					case '글쓴이': key = '글쓴이'; console.log(key); break;  						
				}	
				
					search = $("#qnaSearchBar").val();
				
				
				console.log("키" + key);
				console.log("값" + search); 
				
				if( !$("#qnaSearchBar").is(":visible")){
					console.log('still here');
					
					switch($("#qnaSelect2 option:selected").text()){					
					case '처리됨': key='처리여부';search='처리됨'; break;
					case '처리 안 됨' : key='처리여부';search='처리 안 됨'; break;
					}
					
				}
				
		
				
				var data = {key : key, search:search };
				
				console.log("맵 : ");
				console.log( data);
				
			  	$.ajax({
			 		
		  				method:"post",
		  				url:"searchQuestions.bo",
		  				data: JSON.stringify(data),  
		  				contentType:"application/json",
		  				success:function(data){
		  					/* alert('넘어감.'); */
		  					
		  					console.log(data);
		  					
		  					 $("#questionHeader").nextAll("tr").remove();
			     			 
			     			 for(var i = 0; i<data.searchQList.length;i++){	     				 	  
			     				 
			    				  $("#boardList").append("<tr class='tableRow' > <td ><input type='checkbox' name='memberCheck' class='memberCheck' onchange='checkMid()'> <input type='hidden' class='mid' value="+ data.searchQList[i].bid+"></td>");
			    				  $("#boardList").find(".tableRow").last().append("<td style='padding-top: 10px;padding-bottom:10px;' class='userId' name='userId'>"+data.searchQList[i].bno+"</td>");
			    				  $("#boardList").find(".tableRow").last().append("<td name='userName'>"+data.searchQList[i].bTitle+"</td>");
			    				  $("#boardList").find(".tableRow").last().append("<td name='birth'>"+data.searchQList[i].mCode+"</td>");
			    				  $("#boardList").find(".tableRow").last().append("<td name='phone'>"+data.searchQList[i].enrollDateJson+"</td>");
			    				  $("#boardList").find(".tableRow").last().append("<td name='email'>"+data.searchQList[i].refYN+"</td>");	    			
			    				      				  				  
			    			  }  
		  					
		  				},
		  				error:function(){
		  					alert('ㅡㅡ');
		  				}
		  				
		  			}); 
			
		  		 
					
				}
				
			});
		
	});
	
	function getCue2(){
		var searchSelect = document.getElementById("qnaSelect");
		var str2 = searchSelect.options[searchSelect.selectedIndex].value;
		
		console.log(str2);
		
	 	if(str2=="처리여부"){
	 		$("#qnaSearchBar").toggle();
			$("#qnaSelect2").toggle();		
		} else {			
			$("#qnaSearchBar").show();
			$("#qnaSelect2").hide();	
		} 
	}
	
		$(function(){
			$("#qnaSelect2").hide();
			
		});
		
		
		$(".qnaRow").click(function(){
			location.href="showQnaDetail.me";
		});
		
		
		
	</script>
	<select id="qnaSelect" onclick="getCue2();">
  		<option>제목</option>
  		<option>글쓴이</option>
  		<option>처리여부</option>
  	</select>
  	
  	<input type="search" id="qnaSearchBar">
  	<select id="qnaSelect2">
  		<option>처리됨</option>
  		<option>처리 안 됨</option>
  	</select>
  	
  	<button type="submit" class="searchBtn" id="searchBtnQ">검색</button>
	<div class="tableArea" id="qnaTable">
 	
 	<br><br>
 	<table class="tableList" align="center" id="boardList">
 	<tr style="border-bottom:1px solid lightgray;" id="questionHeader">
 	<th style="width:50px;  text-align:center;height:20px;font-weight:bold;">
 		<input type="checkbox" id="checkAll4">&nbsp;전체선택
 	</th>
 	<th style="width:50px; text-align:center;height:20px;font-weight:bold;">글번호</th>
 	<th style="width:300px; text-align:center;height:20px;font-weight:bold;">제목</th>
 	<th style="width:120px; text-align:center;height:20px;font-weight:bold;">글쓴이</th>
 	<th style="width:300px; text-align:center;height:20px;font-weight:bold;">등록시간</th>
	<th style="width:100px; text-align:center;height:20px;font-weight:bold;">처리여부</th>
 	
 	</tr>
 	
 	 	
 	</table><br><br>
 		

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
	    	 $.ajax({
	     		  method: "POST",
	     		  url: "selectMemberList.me", 
	     		  success:function(data){
	     			
	     			  console.log(data);
	     			  console.log(data.memberlist); 
	     			 
	     			  
	     			  
	     			  
	     			 $("#memberHeader").nextAll("tr").remove();
	     			 
	     			 
	     			 
	     			 for(var i = 0; i<data.memberlist.length;i++){	     				 	  
	     				 
	    				  $("#membertable").append("<tr class='tableRow' > <td ><input type='checkbox' name='memberCheck' class='memberCheck' onchange='checkMid()'> <input type='hidden' class='mid' value="+ data.memberlist[i].mid+"></td>");
	    				  $("#membertable").find(".tableRow").last().append("<td style='padding-top: 10px;padding-bottom:10px;' class='userId' name='userId'>"+data.memberlist[i].userId+"</td>");
	    				  $("#membertable").find(".tableRow").last().append("<td name='userName'>"+data.memberlist[i].userName+"</td>");
	    				  $("#membertable").find(".tableRow").last().append("<td name='birth'>"+data.memberlist[i].birth+"</td>");
	    				  $("#membertable").find(".tableRow").last().append("<td name='phone'>"+data.memberlist[i].phone+"</td>");
	    				  $("#membertable").find(".tableRow").last().append("<td name='email'>"+data.memberlist[i].email+"</td>");
	    				  $("#membertable").find(".tableRow").last().append("<td name='address'>"+data.memberlist[i].address+"</td>");
	    				  $("#membertable").find(".tableRow").last().append("<td name='repCount'>"+data.memberlist[i].repCount+"</td>");
	    				  $("#membertable").find(".tableRow").last().append("<td name='bookCount'>"+data.memberlist[i].bookCount+"</td>");
	    				  $("#membertable").find(".tableRow").last().append("<td name='status'>"+data.memberlist[i].status+"</td></tr>");
	    				      				  				  
	    			  }  
	     			
	     		  },
	     		  error:function(){
	     			  alert('안됨');
	     		  }
	     		  
	     		  
	     		});
	    	
	    } else if (tabName == 'qnaBoard') {
	    	
	    	 $.ajax({
	     		  method: "POST",
	     		  url: "selectAllBoard.bo", 
	     		  success:function(data){
	     			
	     			  console.log(data);
	     			  console.log(data.boardList); 
	     			  console.log(data.pi);
	     			     
	     			 $("#questionHeader").nextAll("tr").remove();
	     			 
	     			 for(var i = 0; i<data.boardList.length;i++){	     				 	  
	     				 
	    				  $("#boardList").append("<tr class='tableRow' > <td ><input type='checkbox' name='memberCheck' class='memberCheck' onchange='checkMid()'> <input type='hidden' name='bid' class='bid' value="+ data.boardList[i].bid+"></td>");
	    				  $("#boardList").find(".tableRow").last().append("<td style='padding-top: 10px;padding-bottom:10px;'  >"+data.boardList[i].bno+"</td>");
	    				  $("#boardList").find(".tableRow").last().append("<td name='userName'>"+data.boardList[i].bTitle+"</td>");
	    				  $("#boardList").find(".tableRow").last().append("<td name='birth'>"+data.boardList[i].mCode+"</td>");
	    				  $("#boardList").find(".tableRow").last().append("<td name='phone'>"+data.boardList[i].enrollDateJson+"</td>");
	    				  $("#boardList").find(".tableRow").last().append("<td name='email'>"+data.boardList[i].refYN+"</td>");	    			
	    				      				  				  
	    			  } 
	     			 
	     			 
	     			$(function(){
	     				$("#boardList").find("td").mouseenter(function(){
	     					$(this).parents("tr").css({"background":"lightgray", "cursor":"pointer"});
	     				}).mouseout(function(){
	     					$(this).parents("tr").css({"background":"white"});
	     				}).click(function(){
	     					var bid = $(this).parents().children("td").eq(1).text();
	     					console.log(bid);		
	     					location.href="selectOne.bo?bid="+bid;
	     				});
	     				
	     			});

	     			 
	     			
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
    /* 
    if( $('.memberCheck').is(':checked')){
    	alert('체크됨');
    } */
});




$('#checkAll2').click(function() {
    var c = this.checked;
    $('.storeCheck').prop('checked',c);
});

$('#checkAll3').click(function() {
    var c = this.checked;
    $('.rsvCheck').prop('checked',c) ;
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
