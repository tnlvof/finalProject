<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" type="text/css" href="resources/css/common.css">
<link rel="stylesheet" type="text/css" href="resources/css/reset.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <meta charset="utf-8">
    <title>Fooding - 검색 결과</title>
    <style>
.map_wrap, .map_wrap * {margin:0;padding:0;font-family:'Malgun Gothic',dotum,'돋움',sans-serif;font-size:12px;}
.map_wrap a, .map_wrap a:hover, .map_wrap a:active{color:#000;text-decoration: none;}
.map_wrap {position:relative;width:100%;height:500px;}
#menu_wrap {position:absolute;top:0;left:0;bottom:0;width:250px;margin:10px 0 30px 10px;padding:5px;overflow-y:auto;background:rgba(255, 255, 255, 0.7);z-index: 1;font-size:12px;border-radius: 10px;}
.bg_white {background:#fff;}
#menu_wrap hr {display: block; height: 1px;border: 0; border-top: 2px solid #5F5F5F;margin:3px 0;}
#menu_wrap .option{text-align: center;}
#menu_wrap .option p {margin:10px 0;}  
#menu_wrap .option button {margin-left:5px;}
#placesList li {list-style: none;}
#placesList .item {position:relative;border-bottom:1px solid #888;overflow: hidden;cursor: pointer;min-height: 65px;}
#placesList .item span {display: block;margin-top:4px;}
#placesList .item h5, #placesList .item .info {text-overflow: ellipsis;overflow: hidden;white-space: nowrap;}
#placesList .item .info{padding:10px 0 10px 55px;}
#placesList .info .gray {color:#8a8a8a;}
#placesList .info .jibun {padding-left:26px;background:url(http://t1.daumcdn.net/localimg/localimages/07/mapapidoc/places_jibun.png) no-repeat;}
#placesList .info .tel {color:#009900;}
#placesList .item .markerbg {float:left;position:absolute;width:36px; height:37px;margin:10px 0 0 10px;background:url(http://t1.daumcdn.net/localimg/localimages/07/mapapidoc/marker_number_blue.png) no-repeat;}
#placesList .item .marker_1 {background-position: 0 -10px;}
#placesList .item .marker_2 {background-position: 0 -56px;}
#placesList .item .marker_3 {background-position: 0 -102px}
#placesList .item .marker_4 {background-position: 0 -148px;}
#placesList .item .marker_5 {background-position: 0 -194px;}
#placesList .item .marker_6 {background-position: 0 -240px;}
#placesList .item .marker_7 {background-position: 0 -286px;}
#placesList .item .marker_8 {background-position: 0 -332px;}
#placesList .item .marker_9 {background-position: 0 -378px;}
#placesList .item .marker_10 {background-position: 0 -423px;}
#placesList .item .marker_11 {background-position: 0 -470px;}
#placesList .item .marker_12 {background-position: 0 -516px;}
#placesList .item .marker_13 {background-position: 0 -562px;}
#placesList .item .marker_14 {background-position: 0 -608px;}
#placesList .item .marker_15 {background-position: 0 -654px;}
#pagination {margin:10px auto;text-align: center;}
#pagination a {display:inline-block;margin-right:10px;}
#pagination .on {font-weight: bold; cursor: default;color:#777;}


body{
    background-color: #f3f3f3;
}
#resultArea{
	margin-top:50px;
	margin-left:auto;
	margin-right:auto; 
	height:850px;
	width:1000px;
  	
}

.result{
	width:300px;
	height:380px;
	background:white;
	margin-top:20px;
	margin-down:20px;
	display: inline-block;
	margin-left:10px;
	margin-right:10px;
}

.profilePic{
	width:280px;
	height:200px;
	margin-left:10px;
	margin-right:10px;
	margin-top:10px;	
}

.profilePic:hover{
	cursor:pointer;
	opacity:0.5;	
}

.checked {
    color: orange;
}

.menu{
	font-size:13px;
}
#container{
	margin-top:40px;
}
.nameAndPricesArea{
margin-top:5px;
margin-left:10px;
	margin-right:10px;
}

.headerPic{
    position: relative;
    overflow: hidden;
    width: 100%;    
    height:100%;
    background-size: cover;
    background-position: center center;
}

.centered {
    position: absolute;
    top: 50%;
    left: 50%;
    color:white;
    font-size:30px;
    transform: translate(-50%, -50%);
}
.dc{
	font-weight:bold;
	color:#920021;
	font-size:1.5em;
}

.resName{
font-weight:bold;
	color:#920021;
}

#searchBar {
	width:500px;
	height:46px;
	border-radius:3px;
	border:2px solid gray;
	align:center;    
    display:inline-block;
}

.selectTag{
	height:50px;
	border-radius:3px;
	border:2px solid gray;
	font-size:15px;
	display:inline-block;
}

#resMenu{
	width:500px;
}

.searchArea{
	margin-left:420px;	
}

#btn{
height:50px;
width:80px;
font-size:15px;
}

/* The Modal (background) */
.modal {
    display: none; /* Hidden by default */
    position: fixed; /* Stay in place */
    z-index: 1; /* Sit on top */
    padding-top: 100px; /* Location of the box */
    left: 0;
    top: 0;
    width: 100%; /* Full width */
    height: 100%; /* Full height */
    overflow: auto; /* Enable scroll if needed */
    background-color: rgb(0,0,0); /* Fallback color */
    background-color: rgba(0,0,0,0.4); /* Black w/ opacity */
}

/* Modal Content */
.modal-content {
    background-color: #fefefe;
    margin: auto;
    padding: 20px;
    border: 1px solid #888;
    width: 80%;
}

/* The Close Button */
.close {
    color: #aaaaaa;
    float: right;
    font-size: 28px;
    font-weight: bold;
}

.close:hover,
.close:focus {
    color: #000;
    text-decoration: none;
    cursor: pointer;
}


</style>
</head>
<body>
<jsp:include page="/WEB-INF/views/common/header.jsp"></jsp:include>
<img alt="" src="resources/images/main/dining.png" class="headerPic">
 <div class="centered">푸딩이 선정한 맛집 리스트를 합리적인 가격에 누려보세요.  </div>


<div id="container">

<hr>
<br><br>
<div class="searchArea">
<select id="category" name="category" class="selectTag" onchange="getCue()">
<option name="all">전체</option>
<option name="resName">식당명</option>
<option name="resCategory">식당 카테고리</option>
</select>

<script type="text/javascript">
	$(function(){
		$("#resMenu").hide();
	});

	function getCue(){
		var category = document.getElementById("category");
		var str = category.options[category.selectedIndex].value;
		
		console.log(str);
		
		if(str=="식당 카테고리"){
			$("#searchBar").toggle();
			$("#resMenu").toggle();			
		} else {			
			$("#searchBar").show();
			$("#resMenu").hide();		
		}
	}
</script>

<input type="text"  id="searchBar" name="searchBar" placeholder="&nbsp;검색어를 입력하세요.">
<select id="resMenu" class="selectTag">
	<option>한식</option>
	<option>중식</option>
	<option>일식</option>
	<option>양식</option>
	<option>동남아</option>
	<option>디저트/카페</option>	
</select>
<button id="btn" type="submit">검색</button>
<br>
</div>

<div id="resultArea">
	<div class="result">
		<img alt="" src="resources/images/restaurants/vatos.jpg" class="profilePic" id="profilePic">
		 <div class="nameAndPricesArea">
		
		 <h1 class="resName">바토스 Vatos</h1>
					
		<span class="fa fa-star checked"></span>
		<span class="fa fa-star checked"></span>
		<span class="fa fa-star checked"></span>
		<span class="fa fa-star"></span>
		<span class="fa fa-star"></span>
		<br><br>
		 <h5 class="menu">Fat Bastard 부리토볼</h5><br><h3 class="dc">20% OFF</h3><br>
		 <p>#멕시칸 #이태원 #퓨전 </p>
		 </div>
		 
			 <!-- The Modal -->
			<div id="myModal" class="modal">
			
			  <!-- Modal content -->
			  <div class="modal-content">
			    <span class="close">&times;</span>
			    <p align="center">Fooding 쿠폰은 캡쳐하셔서 식당에서 결제할 때 보여주시면 됩니다.</p>
			    <!-- 쿠폰 소스 붙여넣기  -->
			  </div>
			
			</div>
			
			<script>
			// Get the modal
			var modal = document.getElementById('myModal');
			
			// Get the button that opens the modal
			var btn = document.getElementById("profilePic");
			
			// Get the <span> element that closes the modal
			var span = document.getElementsByClassName("close")[0];
			
			// When the user clicks the button, open the modal 
			btn.onclick = function() {
			    modal.style.display = "block";
			}
			
			// When the user clicks on <span> (x), close the modal
			span.onclick = function() {
			    modal.style.display = "none";
			}
			
			// When the user clicks anywhere outside of the modal, close it
			window.onclick = function(event) {
			    if (event.target == modal) {
			        modal.style.display = "none";
			    }
			}
			</script>
		 
	</div>	

	<div class="result">
		<img alt="" src="resources/images/restaurants/vatos.jpg" class="profilePic">
		 <div class="nameAndPricesArea">
		
		 <h1 class="resName">바토스 Vatos</h1>
					
		<span class="fa fa-star checked"></span>
		<span class="fa fa-star checked"></span>
		<span class="fa fa-star checked"></span>
		<span class="fa fa-star"></span>
		<span class="fa fa-star"></span>
		<br><br>
		 <h5 class="menu">Fat Bastard 부리토볼</h5><br><h3 class="dc">20% OFF</h3><br>
		 <p>#멕시칸 #이태원 #퓨전 </p>
		 </div>
	</div>	
	
	<div class="result">
		<img alt="" src="resources/images/restaurants/vatos.jpg" class="profilePic">
		 <div class="nameAndPricesArea">
		
		 <h1 class="resName">바토스 Vatos</h1>
					
		<span class="fa fa-star checked"></span>
		<span class="fa fa-star checked"></span>
		<span class="fa fa-star checked"></span>
		<span class="fa fa-star"></span>
		<span class="fa fa-star"></span>
		<br><br>
		 <h5 class="menu">Fat Bastard 부리토볼</h5>
		 <br>
		 <h3 class="dc">20% OFF</h3><br>
		 <p>#멕시칸 #이태원 #퓨전 </p>
		 </div>
	</div>	
	
	
	<div class="result">
		<img alt="" src="resources/images/restaurants/vatos.jpg" class="profilePic">
		 <div class="nameAndPricesArea">
		
		 <h1 class="resName">바토스 Vatos</h1>
					
		<span class="fa fa-star checked"></span>
		<span class="fa fa-star checked"></span>
		<span class="fa fa-star checked"></span>
		<span class="fa fa-star"></span>
		<span class="fa fa-star"></span>
		<br><br>
		 <h5 class="menu">Fat Bastard 부리토볼</h5><br><h3 class="dc">20% OFF</h3><br>
		 <p>#멕시칸 #이태원 #퓨전 </p>
		 </div>
	</div>	
	


</div>
</div>


</body>
</html>