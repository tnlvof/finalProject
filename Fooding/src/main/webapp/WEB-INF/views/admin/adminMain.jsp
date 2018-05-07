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
  <button class="tablinks" onclick="openTab(event, 'qnaBoard')">1:1 문의</button>
</div>

<!--  /메뉴 -->


<!-- 회원관리 -->

<div id="memberList" class="tabcontent">
  	<h3>회원 조회</h3>
  	<select id="memberSelect">  		
  		<option>아이디</option>
  		<option>이름</option>  		
  		
  		
  		
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
 	<th style="width:150px; text-align:center;height:20px;font-weight:bold;">이메일</th>
 	<th style="width:150px; text-align:center;height:20px;font-weight:bold;">주소</th>
 	<th style="width:100px; text-align:center;height:20px;font-weight:bold;">신고횟수</th>
 	<th style="width:100px; text-align:center;height:20px;font-weight:bold;">예약 누적 횟수</th>
 	<th style="width:100px; text-align:center;height:20px;font-weight:bold;">회원여부</th> 	
 	
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
  	</select>
  	
  	<!-- 검색창 -->  	
  	<input type="search" id="searchBar">
  	<button type="submit" class="searchBtn">검색</button>
  	
  	
  	<br><br>
 	<div class="tableArea" style="margin-top: 20px;"> 
 	<table class="tableList" align="center" id="storeTableList">
 	
 	<tr id="storeHeader" style="border-bottom:1px solid lightgray;"> 	
 	<th style="width:100px; text-align:center;height:20px;font-weight:bold;">업체명</th>
 	<th style="width:100px; text-align:center;height:20px;font-weight:bold;">전화번호</th>
 	<th style="width:100px; text-align:center;height:20px;font-weight:bold;">업종</th>
 	<th style="width:100px; text-align:center;height:20px;font-weight:bold;">사업자번호</th>
 	<th style="width:300px; text-align:center;height:20px;font-weight:bold;">주소</th>
 	<th style="width:200px; text-align:center;height:20px;font-weight:bold;">영업시간</th>
 	<th style="width:200px; text-align:center;height:20px;font-weight:bold;">휴일</th>
 	<th style="width:100px; text-align:center;height:20px;font-weight:bold;">예산</th>
  	<th style="width:100px; text-align:center;height:20px;font-weight:bold;">분위기</th> 	
 	<th style="width:100px; text-align:center;height:20px;font-weight:bold;">편의시설</th> 
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

<!-- 예약검색  -->

 <script type="text/javascript">

$(function(){
	
	//검색 버튼
		$("#searchBtnR").click(function(){
			var keyword = $("#searchRsvBar").val();  
			
			console.log(keyword);
			
			if( $("#searchRsvBar").is(":visible") && keyword==""){
									
				alert('검색어를 입력해주세요.');
			} else {
				
			// 예약자명, 업체명, 날짜 검색
			var search ;
			var key;
		
				
			switch($("#searchRsvSelect option:selected").text()){			
  					case '아이디': key = '아이디';  console.log(key); break;
  					case '업체명': key = '업체명'; console.log(key); break; 
  					
			}	
			
			search = $("#searchRsvBar").val();
			
			
			console.log("키" + key);
			console.log("값" + search); 
			
	 		if( !$("#searchRsvBar").is(":visible")){
				console.log('still here');
				//날짜 검색
				if( $("#datePicker").is(":visible")){
					key = '날짜';
					search= $("#datePicker").val();
				}
				
				
			} 
			
	
			
			var data = {key : key, search:search };
			
			console.log("맵 : ");
			console.log( data);
			
		  	$.ajax({
		 		
	  				method:"post",
	  				url:"searchReservation.rv",
	  				data: JSON.stringify(data),  
	  				contentType:"application/json",
	  				success:function(data){
	  					/* alert('넘어감.'); */
	  					
	  					console.log(data.searchRsvList);
	  					
	  				    
		     			 $("#rsvHeader").nextAll("tr").remove();
		     			 
		     			 for(var i = 0; i<data.searchRsvList.length;i++){	     				 	  
		     				 
		    				  $("#rsvTableList").append("<tr class='tableRow' > ");
		    				  $("#rsvTableList").find(".tableRow").last().append("<td style='padding-top: 10px;padding-bottom:10px;'>"+data.searchRsvList[i].userName+"</td>");
		    				  $("#rsvTableList").find(".tableRow").last().append("<td>"+data.searchRsvList[i].phone+"</td>");
		    				  $("#rsvTableList").find(".tableRow").last().append("<td>"+data.searchRsvList[i].sName+"</td>");
		    				  $("#rsvTableList").find(".tableRow").last().append("<td >"+data.searchRsvList[i].jsonDate+"</td>");
		    				  $("#rsvTableList").find(".tableRow").last().append("<td >"+data.searchRsvList[i].rTime+"</td>");
		    				  $("#rsvTableList").find(".tableRow").last().append("<td >"+data.searchRsvList[i].rPeople+"</td>");
		    				  $("#rsvTableList").find(".tableRow").last().append("<td >"+data.searchRsvList[i].rContent+"</td>");
		    				  $("#rsvTableList").find(".tableRow").last().append("<td >"+data.searchRsvList[i].status+"</td>");
		    				 
		    				      				  				  
		    			  }   
	  					
	  				},
	  				error:function(){
	  					alert('ㅡㅡ');
	  				}
	  				
	  			}); 
		
	  		 
				
			}
			
		});
	
});
</script>


<!-- /예약검색 -->

	<select id="searchRsvSelect" onchange="getCue()" >  		
  		<option >아이디</option>
  		<option >업체명</option>  		
  		<option >날짜</option> 		    			
  	</select>
  	
  	<!-- 검색창 -->  	
  	<input type="search" id="searchRsvBar">

	<input type="date" id="datePicker">
  	
  	<button type="submit" class="searchBtn" id="searchBtnR">검색</button>
  	
  	
  	<br><br>
 	<div class="tableArea" style="margin-top: 20px;">
 	<table class="tableList" align="center" id="rsvTableList" >
 	
 	<tr id="rsvHeader" style="border-bottom:1px solid lightgray;">
 	
 	<th style="width:100px; text-align:center;height:20px;font-weight:bold;">아이디</th>
 	<th style="width:120px; text-align:center;height:20px;font-weight:bold;">예약자 연락처</th>
 	<th style="width:200px; text-align:center;height:20px;font-weight:bold;">업체명</th>
 	<th style="width:150px; text-align:center;height:20px;font-weight:bold;">날짜</th>
 	<th style="width:150px; text-align:center;height:20px;font-weight:bold;">시간</th>
 	<th style="width:100px; text-align:center;height:20px;font-weight:bold;">인원수</th>
 	<th style="width:400px; text-align:center;height:20px;font-weight:bold;">요구사항</th>
 	<th style="width:100px; text-align:center;height:20px;font-weight:bold;">상태</th>
 	</tr>
 	
 	
 		
 	
 	
 	</table>
 </div>

</div>

<!-- /예약 관리 -->





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
	<div class="tableArea" id="qnaTable" style="margin-top: 32px;">
 	
 	<br><br>
 	<table class="tableList" align="center" id="boardList">
 	<tr style="border-bottom:1px solid lightgray;" id="questionHeader">
 	<th style="width:100px;  text-align:center;height:20px;font-weight:bold;">
 		<input type="checkbox" id="checkAll4">&nbsp;전체선택
 	</th>
 	<th style="width:100px; text-align:center;height:20px;font-weight:bold;">글번호</th>
 	<th style="width:300px; text-align:center;height:20px;font-weight:bold;">제목</th>
 	<th style="width:120px; text-align:center;height:20px;font-weight:bold;">글쓴이</th>
 	<th style="width:300px; text-align:center;height:20px;font-weight:bold;">등록시간</th>
	<th style="width:100px; text-align:center;height:20px;font-weight:bold;">처리여부</th>
 	
 	</tr>
 	
 	 	
 	</table><br><br>
 </div>
 </div>		

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
	     					var bid = $(this).parents().children("td").eq(0).children("input").eq(1).val();
	     					console.log(bid);		
	     					location.href="selectOne.bo?bid="+bid;
	     				});
	     				
	     			});

	     			 
	     			
	     		  },
	     		  error:function(){
	     			  alert('안됨');
	     		  }
	     		  
	     		  
	     		});
	    	
	    } else if (tabName =='storeList'){
	    	
	    	   $.ajax({
	     		  method: "POST",
	     		  url: "selectAllStores.st", 
	     		  success:function(data){
	     			
	     			  console.log(data);
	     			  console.log(data.storeList); 
	     			  
	     		 	     
	     			 $("#storeHeader").nextAll("tr").remove();
	     			 
	     			 for(var i = 0; i<data.storeList.length;i++){	     				 	  
	     				 
	    				  $("#storeTableList").append("<tr class='tableRow' > ");
	    				  $("#storeTableList").find(".tableRow").last().append("<td style='padding-top: 10px;padding-bottom:10px;'>"+data.storeList[i].sName+" <input type='hidden' name='sid' class='sid' value="+ data.storeList[i].sid+"></td>");
	    				  $("#storeTableList").find(".tableRow").last().append("<td>"+data.storeList[i].phone+"</td>");
	    				  $("#storeTableList").find(".tableRow").last().append("<td>"+data.storeList[i].sCode+"</td>");
	    				  $("#storeTableList").find(".tableRow").last().append("<td >"+data.storeList[i].bookYN+"</td>");
	    				  $("#storeTableList").find(".tableRow").last().append("<td >"+data.storeList[i].address+"</td>");
	    				  $("#storeTableList").find(".tableRow").last().append("<td >"+data.storeList[i].sHours+"</td>");
	    				  $("#storeTableList").find(".tableRow").last().append("<td >"+data.storeList[i].dayoff+"</td>");
	    				  $("#storeTableList").find(".tableRow").last().append("<td >"+data.storeList[i].budget+"</td>");
	    				  $("#storeTableList").find(".tableRow").last().append("<td>"+data.storeList[i].atmosphere+"</td>");
	    				  $("#storeTableList").find(".tableRow").last().append("<td>"+data.storeList[i].facilities+"</td></tr>");
	    				      				  				  
	    			  } 
	     			 
	     			 
	     		     			 
	     			
	     		  },
	     		  error:function(){
	     			  alert('안됨');
	     		  }
	     		  
	     		  
	     		});
	    	  
	    	
	    } else if(tabName =='rsvList'){
	    	
	    	
	    	
	    	   $.ajax({
		     		  method: "POST",
		     		  url: "selectAllRsv.rv", 
		     		  success:function(data){
		     			
		     			  console.log(data);
		     			  console.log(data.rsvList); 
		     			  
		     		 	     
		     			 $("#rsvHeader").nextAll("tr").remove();
		     			 
		     			 for(var i = 0; i<data.rsvList.length;i++){	     				 	  
		     				 
		    				  $("#rsvTableList").append("<tr class='tableRow' > ");
		    				  $("#rsvTableList").find(".tableRow").last().append("<td style='padding-top: 10px;padding-bottom:10px;'>"+data.rsvList[i].userName+"</td>");
		    				  $("#rsvTableList").find(".tableRow").last().append("<td>"+data.rsvList[i].phone+"</td>");
		    				  $("#rsvTableList").find(".tableRow").last().append("<td>"+data.rsvList[i].sName+"</td>");
		    				  $("#rsvTableList").find(".tableRow").last().append("<td >"+data.rsvList[i].jsonDate+"</td>");
		    				  $("#rsvTableList").find(".tableRow").last().append("<td >"+data.rsvList[i].rTime+"</td>");
		    				  $("#rsvTableList").find(".tableRow").last().append("<td >"+data.rsvList[i].rPeople+"</td>");
		    				  $("#rsvTableList").find(".tableRow").last().append("<td >"+data.rsvList[i].rContent+"</td>");
		    				  $("#rsvTableList").find(".tableRow").last().append("<td >"+data.rsvList[i].status+"</td>");
		    				 
		    				      				  				  
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