<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" type="text/css" href="resources/css/common.css">
<link rel="stylesheet" type="text/css" href="resources/css/reset.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <meta charset="utf-8">
    <title>Fooding - 추천 식당 : 일식</title>
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


.btns button{
	margin-left:5px;
	margin-top:5px;
	height:30px;
	width:auto;	
	display:inline-block;
	
}

.btns button:hover{
	background:lightgray;
}

.checked {
    color: orange;
}
.nameAndPrices {	
	list-style:none;
	display:inline-block;
}
.prices{
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

</style>
</head>
<body>
<jsp:include page="/WEB-INF/views/common/header.jsp"></jsp:include>

<div id="container">

<img alt="" src="resources/images/restaurants/sushi.png" class="headerPic">
 <div class="centered" align="center">푸딩이 추천하는 일식 맛집입니다. <br><br> 정갈한 일식으로 가벼운 외식하세요. </div>

<hr>

<br><br>

<div id="resultArea">
	<div class="result">
		<img alt="" src="resources/images/restaurants/vatos.jpg" class="profilePic">
		 <div class="nameAndPricesArea">
		
			 <h1 class="text">바토스 Vatos</h1>
			
		
		 <span class="fa fa-star checked"></span>
		<span class="fa fa-star checked"></span>
		<span class="fa fa-star checked"></span>
		<span class="fa fa-star"></span>
		<span class="fa fa-star"></span>
		<br><br>
		 <h5 class="prices">1-2만원대</h5><br>
		 <p>멕시코 음식이 한국에 온다면? 인기메뉴인 김치 치즈 프라이를 꼭 드셔보세요</p>
		 </div>
	
	
		<div class="btns">		
		<button class="buttons" >예약하기</button>
		<button class="buttons" >리뷰하기</button>
		</div>
	</div>	

	<div class="result">
		<img alt="" src="resources/images/restaurants/vatos.jpg" class="profilePic">
		 <div class="nameAndPricesArea">
		
			 <h1 class="text">바토스 Vatos</h1>
			
		
		 <span class="fa fa-star checked"></span>
		<span class="fa fa-star checked"></span>
		<span class="fa fa-star checked"></span>
		<span class="fa fa-star"></span>
		<span class="fa fa-star"></span>
		<br><br>
		 <h5 class="prices">1-2만원대</h5><br>
		 <p>멕시코 음식이 한국에 온다면? 인기메뉴인 김치 치즈 프라이를 꼭 드셔보세요</p>
		 </div>
	
		
				 		
		<div class="btns">		
		<button class="buttons" >예약하기</button>
		<button class="buttons" >리뷰하기</button>
		</div>
	</div>
	
	<div class="result">
		<img alt="" src="resources/images/restaurants/vatos.jpg" class="profilePic">
		 <div class="nameAndPricesArea">
		
			 <h1 class="text">바토스 Vatos</h1>
			
		
		 <span class="fa fa-star checked"></span>
		<span class="fa fa-star checked"></span>
		<span class="fa fa-star checked"></span>
		<span class="fa fa-star"></span>
		<span class="fa fa-star"></span>
		<br><br>
		 <h5 class="prices">1-2만원대</h5><br>
		 <p>멕시코 음식이 한국에 온다면? 인기메뉴인 김치 치즈 프라이를 꼭 드셔보세요</p>
		 </div>
	
		
				 		
		<div class="btns">		
		<button  class="buttons">예약하기</button>
		<button class="buttons" >리뷰하기</button>
		</div>
	</div>	

<div class="result">
		<img alt="" src="resources/images/restaurants/vatos.jpg" class="profilePic">
		 <div class="nameAndPricesArea">
		
			 <h1 class="text">바토스 Vatos</h1>
			
		
		 <span class="fa fa-star checked"></span>
		<span class="fa fa-star checked"></span>
		<span class="fa fa-star checked"></span>
		<span class="fa fa-star"></span>
		<span class="fa fa-star"></span>
		<br><br>
		 <h5 class="prices">1-2만원대</h5><br>
		 <p>멕시코 음식이 한국에 온다면? 인기메뉴인 김치 치즈 프라이를 꼭 드셔보세요</p>
		 </div>
	
		
				 		
		<div class="btns">		
		
		<button class="buttons" >리뷰하기</button>
		</div>
	</div>	
	
	<div class="result">
		<img alt="" src="resources/images/restaurants/vatos.jpg" class="profilePic">
		 <div class="nameAndPricesArea">
		
			 <h1 class="text">바토스 Vatos</h1>
			
		
		 <span class="fa fa-star checked"></span>
		<span class="fa fa-star checked"></span>
		<span class="fa fa-star checked"></span>
		<span class="fa fa-star"></span>
		<span class="fa fa-star"></span>
		<br><br>
		 <h5 class="prices">1-2만원대</h5><br>
		 <p>멕시코 음식이 한국에 온다면? 인기메뉴인 김치 치즈 프라이를 꼭 드셔보세요</p>
		 </div>
	
		
				 		
		<div class="btns">		
		<button  class="buttons">예약하기</button>
		<button class="buttons" >리뷰하기</button>
		</div>
	</div>	
	
	<div class="result">
		<img alt="" src="resources/images/restaurants/vatos.jpg" class="profilePic">
		 <div class="nameAndPricesArea">
		
			 <h1 class="text">바토스 Vatos</h1>
			
		
		 <span class="fa fa-star checked"></span>
		<span class="fa fa-star checked"></span>
		<span class="fa fa-star checked"></span>
		<span class="fa fa-star"></span>
		<span class="fa fa-star"></span>
		<br><br>
		 <h5 class="prices">1-2만원대</h5><br>
		 <p>멕시코 음식이 한국에 온다면? 인기메뉴인 김치 치즈 프라이를 꼭 드셔보세요</p>
		 </div>
	
		
				 		
		<div class="btns">		
		<button class="buttons" >예약하기</button>
		<button  class="buttons">리뷰하기</button>
		</div>
	</div>	
	
	<div class="result">
		<img alt="" src="resources/images/restaurants/vatos.jpg" class="profilePic">
		 <div class="nameAndPricesArea">
		
			 <h1 class="text">바토스 Vatos</h1>
			
		
		 <span class="fa fa-star checked"></span>
		<span class="fa fa-star checked"></span>
		<span class="fa fa-star checked"></span>
		<span class="fa fa-star"></span>
		<span class="fa fa-star"></span>
		<br><br>
		 <h5 class="prices">1-2만원대</h5><br>
		 <p>멕시코 음식이 한국에 온다면? 인기메뉴인 김치 치즈 프라이를 꼭 드셔보세요</p>
		 </div>
	
		
				 		
		<div class="btns">		
		<button class="buttons" >예약하기</button>
		<button  class="buttons">리뷰하기</button>
		</div>
	</div>	
</div>




</div>


</body>
</html>