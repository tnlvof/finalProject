<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" type="text/css" href="resources/css/common.css">
<link rel="stylesheet" type="text/css" href="resources/css/reset.css">

<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
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
#placesList .info .tel {color:#009900; }
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

@charset "UTF-8";

.title-box{
   width: 100%;
   height: 520px;
   background-image: url(/fooding/resources/images/main/dining.png);
   background-size: cover;
   text-align: center;
   vertical-align: middle;
}
.bg-black{
   padding-top: 100px;
   background: rgba(0,0,0,0.4);
   height: 520px;
}
.title-box *{
   color: #fff;
}
.title-box p{
   font-size: 21px;
   line-height: 1.8em;
   margin-top: 130px;
}
.title-box span{
   font-size: 14px;
   display: inline-block;
   margin: 0 auto;
   border-top: 1px solid #fff;
   padding-top: 40px;
   margin-top: 30px;
}
#resultArea{
   width: 1000px;
   margin: 0 auto;
}
.coupons{
   overflow: hidden;
}
.coupons li{
   float: left;
   border-radius: 5px;
   background-color: #fff;
   border: 1px solid #e5e5e5;
   width: 235px;
   box-sizing: border-box;
   margin: 0 20px 40px 0;
   overflow: hidden;
   float: left;
   cursor: default;
}
.coupons li:nth-child(4n){
   margin-right: 0;
}
.photo{
   overflow: hidden;
   position: relative;
}
.photo img{
   height: 200px;
}
.photo img:hover{
   filter: grayscale(100%);
   cursor: pointer;    
}
.photo p{
   position: absolute;
   left: 10px;
   bottom: 10px;
   color: #fff;
}
.photo span{
   font-size: 12px;
   color: inherit;
}
/* .coupon-info{
   padding: 10px;
   font-size: 13px;
}
.coupon-info p{
   display: table;
   margin-bottom: 10px;
   font-size: 12px;
   background-color: #cc272b;
   color: #fff;
   padding: 4px 8px;
   border-radius: 5px;
} */
.coupon-price{
   padding: 10px;
}
.coupon-price p{
   display: inline-block;
   width: 49%;
   font-weight: bold;
   font-size: 17px;
}
.coupon-price p:first-child{
   color: #cc272b;
}
.coupon-price p:last-child{
   text-align: right;
  
}

.checked {
    color: orange;
}
/* #resultArea{
	margin-top:50px;
	margin-left:auto;
	margin-right:auto; 
	height:1200px;
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


.btns button{
	margin-left:5px;
	margin-top:5px;
	height:30px;
	/width:auto;
	display:inline-block;
	
}

.btns button:hover{
	background:lightgray;
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

#pageIngArea{
	margin-top:30px;
}
.buttons{
	width:100%;
	background-color:white;
	border-radius: 4px;
	border:0;
	
} */
.write-btn{
	width: 100%;
	border: 0;
	font-size: 13px;
	background-color: #fff;
	padding: 10px 0;
	border-top: 1px solid #e5e5e5;
	color: #666;
}
.write-btn:hover{
	background: #999;
	color: #fff;
	cursor: pointer;
}
</style>
</head>
<body>
<!-- header -->
<jsp:include page="/WEB-INF/views/common/header.jsp"/>


<!-- css or js파일 연결 시키는 곳 -->

<div class="container" >

<div id="map" style="width:100%;height:350px;"></div>

<h3 align="center">${ searchKey } 맛집 검색 결과입니다.</h3>


<div id="resultArea">
	<ul class="coupons">
	<c:forEach var="s" items="${ sam }" >
	<%-- <div class="result">
		<c:set var="restN" value="${ s.restName}"></c:set>
		<c:url var="goDetail" value="/goDetail.st">
				<c:param name="restName" value="${ restN }"/>
		</c:url>
		<img alt="" src="resources/images/restaurants/nothing.png" class="profilePic" onclick="location.href='${goDetail}'">
		 <div class="nameAndPricesArea">
		
			 <h1 class="text">${ s.restName }</h1>
			
		
		<!--  <span class="fa fa-star checked"></span>
		<span class="fa fa-star checked"></span>
		<span class="fa fa-star checked"></span>
		<span class="fa fa-star"></span>
		<span class="fa fa-star"></span> -->
		<br><br>
		 <h5 class="prices">${ s.restUpstream }</h5><br>
		 </div>
	
		
				 		
		<div class="btns">		
		<!-- <button class="buttons" >예약하기</button> -->
		<button class="buttons" >리뷰쓰기</button>
		</div>
	</div> --%>	
	
	  <c:set var="restN" value="${ s.restName}"></c:set>
		<c:url var="goDetail" value="/goDetail.st">
				<c:param name="restName" value="${ restN }"/>
		</c:url>	
	 
      <li>
         <div class="photo">
            <img src="http://c2.poing.co.kr/MRI-original/MjAxODAz/15202254255a9ccc91bbbde.jpeg" onclick="location.href='${goDetail}'">
            <p>
              ${ s.restName}<br>
               <span>${ s.restUpstream }</span>
            </p>
         </div>
         <!-- photo -->
         
         <div class="coupon-price">
          	<span class="fa fa-star checked"></span>
			<span class="fa fa-star checked"></span>
			<span class="fa fa-star checked"></span>
			<span class="fa fa-star"></span>
			<span class="fa fa-star"></span>
         </div>
         <!-- coupon-price -->
         
         <button class="write-btn">리뷰쓰기</button>
      </li>
      
	
	</c:forEach>
     </ul>
	
	<div id="pageIngArea" align="center">
		<c:if test="${ pi.currentPage <= 1 }">
			[이전] &nbsp;
			
		</c:if>
		<c:if test="${ pi.currentPage > 1 }">
			<c:url var="bListBack" value="/searchResult.st">
				<c:param name="currentPage" value="${ pi.currentPage -1 }"/>
				<c:param name="searchKey" value="${searchKey}"/>
			</c:url>
			<a href="${ bListBack }">[이전]</a> &nbsp;
		</c:if>
		
		<c:forEach var="p" begin="${ pi.startPage }" end="${ pi.endPage }">
			<c:if test="${ p eq pi.currentPage }">
				<b style="color:red; font-size:20px;">${ p }</b>
			</c:if>
			<c:if test="${ p ne pi.currentPage }">
				<c:url var="bListCheck" value="searchResult.st">
					<c:param name="currentPage" value="${ p }">
					</c:param>				
					<c:param name="searchKey" value="${searchKey}">
					</c:param>				
												
				</c:url>
				<a href="${ bListCheck }">${ p }</a>
			</c:if>
		</c:forEach>
		
		<c:if test="${ pi.currentPage >= pi.maxPage }">
		 &nbsp; [다음]
		</c:if>
		<c:if test="${ pi.currentPage < pi.maxPage }">
			<c:url var="bListEnd" value="searchResult.st">
				<c:param name="currentPage" value="${ pi.currentPage + 1 }"/>
				<c:param name="searchKey" value="${searchKey}">
					</c:param>
			</c:url>
			<a href="${ bListEnd }">&nbsp; [다음]</a>
		</c:if>
		
	</div>

	<!-- <div class="result">
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
	</div> -->
	
</div>




</div>
<input type="hidden" id="searchKey" value="${searchKey}" >
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=82eb499cd9c011a78d1f32d273f9d2bd&libraries=services"></script>
<div id="map" style="width:100%;height:350px;"></div>
<script>
// 마커를 클릭하면 장소명을 표출할 인포윈도우 입니다
var infowindow = new daum.maps.InfoWindow({zIndex:1});

var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
    mapOption = {
        center: new daum.maps.LatLng(30.566826, 50.9786567), // 지도의 중심좌표
        level: 6 // 지도의 확대 레벨
    };  

// 지도를 생성합니다    
var map = new daum.maps.Map(mapContainer, mapOption); 

// 장소 검색 객체를 생성합니다
var ps = new daum.maps.services.Places(); 

// 키워드로 장소를 검색합니다
ps.keywordSearch($("#searchKey").val(), placesSearchCB); 

// 키워드 검색 완료 시 호출되는 콜백함수 입니다
function placesSearchCB (data, status, pagination) {
    if (status === daum.maps.services.Status.OK) {

        // 검색된 장소 위치를 기준으로 지도 범위를 재설정하기위해
        // LatLngBounds 객체에 좌표를 추가합니다
        var bounds = new daum.maps.LatLngBounds();

       
       //  displayMarker(data[0]);    
         bounds.extend(new daum.maps.LatLng(data[0].y, data[0].x));
        
         // 식당 좌표 표시
         var places = new daum.maps.services.Places();

         var callback = function(result, status) {
             if (status === daum.maps.services.Status.OK) {
                 
                 displayMarker(result[0]);    
             }
         };
			
         
         //마커 찍을 식당 이름
         var sam = [];
         <c:forEach var="s" items="${ sam }" >
         sam.push('${fn:replace(s.restName," ","")}');
         </c:forEach>
         console.log(sam);
         
         var array = ['마이 타이', '젤렌', '타르틴','서울펍'];
         
         for(var i =0; i<sam.length;i++){
        	 places.keywordSearch(sam[i], callback);	 
         }
         
         
         
         
         
         
         
        // 검색된 장소 위치를 기준으로 지도 범위를 재설정합니다
        map.setBounds(bounds);
        
    } 
}




// 지도에 마커를 표시하는 함수입니다
 function displayMarker(place) {
    
    // 마커를 생성하고 지도에 표시합니다
    var marker = new daum.maps.Marker({
        map: map,
        position: new daum.maps.LatLng(place.y, place.x) 
    });

    // 마커에 클릭이벤트를 등록합니다
    daum.maps.event.addListener(marker, 'click', function() {
        // 마커를 클릭하면 장소명이 인포윈도우에 표출됩니다
        infowindow.setContent('<div style="padding:5px;font-size:12px;">' + place.place_name + '</div>');
        infowindow.open(map, marker);
    });
} 

</script>

<!-- footer -->
<jsp:include page="/WEB-INF/views/common/footer.jsp"/>

</body>
</html>
