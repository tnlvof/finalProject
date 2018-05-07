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
    <title>Fooding - 테마 식당 추천</title>
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
.centered {
    position: absolute;
    top: 50%;
    left: 50%;
    color:white;
    font-size:30px;
    transform: translate(-50%, -50%);
}
.headerPic{
    position: relative;
    overflow: hidden;
    width: 100%;    
    height:100%;
    background-size: cover;
    background-position: center center;
}

</style>
</head>

<jsp:include page="/WEB-INF/views/common/header.jsp"></jsp:include>

<div id="container">

<img alt="" src="${HeaderList[0] }" class="headerPic" style="filter:brightness(50%);" >
 <div class="centered" align="center"><h3 style="color:white;"> ${HeaderList[1] } </h3> </div>

<hr>

<br><br>

<div id="resultArea" style="height: 100%;">

<ul class="coupons">
<!-- themeList -->

	<c:forEach items = "${themeList }" var="e">
	
     
        
         <c:if test="${ e.bookYN == 'Y' && !empty e.mainPhoto}">
         
    		<c:set var="storeId" value="${ e.sid}"></c:set>
    		<c:url var="goStoreDetail" value="/goStoreDetail.st">
    				<c:param name="storeId" value="${ storeId }"/>
    		</c:url>	
    	 
	 
          <li style="margin-bottom: 0px;">
          <div class="photo">
            <img src="${e.mainPhoto}" onclick="location.href='${goStoreDetail}'" >
            <p>
              ${ e.sName}<br>
               <span>${ e.sCode}</span>
            </p>
           </div> 
              <!-- photo -->
         
         
         <c:choose>
			<c:when test="${ e.star eq 0 }">
             <div class="coupon-price">
    			<span class="fa fa-star"></span>
    			<span class="fa fa-star"></span>
    			<span class="fa fa-star"></span>
    			<span class="fa fa-star"></span>
    			<span class="fa fa-star"></span>
    			<span class="fa align-right"> ${ e.star } </span>
             </div>
			</c:when>			
			<c:when test="${ e.star eq 1 }">
             <div class="coupon-price">
    			<span class="fa fa-star checked"></span>
    			<span class="fa fa-star"></span>
    			<span class="fa fa-star"></span>
    			<span class="fa fa-star"></span>
    			<span class="fa fa-star"></span>
    			<span class="fa align-right">${ e.star } </span>
             </div>
			</c:when>			
			<c:when test="${ e.star eq 2 }">
             <div class="coupon-price">
    			<span class="fa fa-star checked"></span>
    			<span class="fa fa-star checked"></span>
    			<span class="fa fa-star"></span>
    			<span class="fa fa-star"></span>
    			<span class="fa fa-star"></span>
    			<span class="fa align-right">${ e.star }  </span>
             </div>
			</c:when>			
			<c:when test="${ e.star eq 3 }">
             <div class="coupon-price">
    			<span class="fa fa-star checked"></span>
    			<span class="fa fa-star checked"></span>
    			<span class="fa fa-star checked"></span>
    			<span class="fa fa-star"></span>
    			<span class="fa fa-star"></span>
    			<span class="fa align-right">${ e.star }  </span>
             </div>
			</c:when>			
			<c:when test="${ e.star eq 4 }">
             <div class="coupon-price">
    			<span class="fa fa-star checked"></span>
    			<span class="fa fa-star checked"></span>
    			<span class="fa fa-star checked"></span>
    			<span class="fa fa-star checked"></span>
    			<span class="fa fa-star"></span>
    			<span class="fa align-right">${ e.star }  </span>
             </div>
			</c:when>
			<c:otherwise>
             <div class="coupon-price">
    			<span class="fa fa-star checked"></span>
    			<span class="fa fa-star checked"></span>
    			<span class="fa fa-star checked"></span>
    			<span class="fa fa-star checked"></span>
    			<span class="fa fa-star checked"></span>
    			<span class="fa align-right">${ e.star }  </span>
             </div>
			</c:otherwise>			
			</c:choose>
         
         <!-- coupon-price -->
         
         <c:url var="goBook" value="/goBookingPage.st">
         	<c:param name="storeId" value="${storeId }"></c:param>
         </c:url>
       
        <button class="write-btn" onclick="location.href='${goBook}'">예약하기</button>
	    <button class="write-btn">리뷰쓰기</button>
         
       
          </li>  
          </c:if>
          
          
      <c:if test="${ e.bookYN == 'Y' && empty e.mainPhoto}">
         
    		<c:set var="storeId" value="${ e.sid}"></c:set>
    		<c:url var="goStoreDetail" value="/goStoreDetail.st">
    				<c:param name="storeId" value="${ storeId }"/>
    		</c:url>	
    	 
	 
          <li style="margin-bottom: 0px;">
          <div class="photo">
          <img src="http://c2.poing.co.kr/MRI-original/MjAxODAz/15202254255a9ccc91bbbde.jpeg" onclick="location.href='${goStoreDetail}'">
            <p>
              ${ e.sName}<br>
               <span>${ e.sCode}</span>
            </p>
           </div> 
              <!-- photo -->
              
              <c:choose>
			<c:when test="${ e.star eq 0 }">
             <div class="coupon-price">
    			<span class="fa fa-star"></span>
    			<span class="fa fa-star"></span>
    			<span class="fa fa-star"></span>
    			<span class="fa fa-star"></span>
    			<span class="fa fa-star"></span>
    			<span class="fa align-right"> ${ e.star } </span>
             </div>
			</c:when>			
			<c:when test="${ e.star eq 1 }">
             <div class="coupon-price">
    			<span class="fa fa-star checked"></span>
    			<span class="fa fa-star"></span>
    			<span class="fa fa-star"></span>
    			<span class="fa fa-star"></span>
    			<span class="fa fa-star"></span>
    			<span class="fa align-right">${ e.star } </span>
             </div>
			</c:when>			
			<c:when test="${ e.star eq 2 }">
             <div class="coupon-price">
    			<span class="fa fa-star checked"></span>
    			<span class="fa fa-star checked"></span>
    			<span class="fa fa-star"></span>
    			<span class="fa fa-star"></span>
    			<span class="fa fa-star"></span>
    			<span class="fa align-right">${ e.star }  </span>
             </div>
			</c:when>			
			<c:when test="${ e.star eq 3 }">
             <div class="coupon-price">
    			<span class="fa fa-star checked"></span>
    			<span class="fa fa-star checked"></span>
    			<span class="fa fa-star checked"></span>
    			<span class="fa fa-star"></span>
    			<span class="fa fa-star"></span>
    			<span class="fa align-right">${ e.star }  </span>
             </div>
			</c:when>			
			<c:when test="${ e.star eq 4 }">
             <div class="coupon-price">
    			<span class="fa fa-star checked"></span>
    			<span class="fa fa-star checked"></span>
    			<span class="fa fa-star checked"></span>
    			<span class="fa fa-star checked"></span>
    			<span class="fa fa-star"></span>
    			<span class="fa align-right">${ e.star }  </span>
             </div>
			</c:when>
			<c:otherwise>
             <div class="coupon-price">
    			<span class="fa fa-star checked"></span>
    			<span class="fa fa-star checked"></span>
    			<span class="fa fa-star checked"></span>
    			<span class="fa fa-star checked"></span>
    			<span class="fa fa-star checked"></span>
    			<span class="fa align-right">${ e.star }  </span>
             </div>
			</c:otherwise>			
			</c:choose>
         
        
         <!-- coupon-price -->
         
         <c:url var="goBook" value="/goBookingPage.st">
         	<c:param name="storeId" value="${storeId }"></c:param>
         	
         </c:url>
       
        <button class="write-btn" onclick="location.href='${goBook}'">예약하기</button>
	    <button class="write-btn">리뷰쓰기</button>
         
       
          </li>  
     </c:if>
          
          
          
          
       <c:if test="${ empty e.bookYN  }">
          
        <c:set var="storeId" value="${ e.sid}"></c:set>
    		<c:url var="goStoreDetail" value="/goStoreDetail.st">
    				<c:param name="storeId" value="${ storeId }"/>
    		</c:url>	
    	 
	          <li>
	           <div class="photo">
	          	 <img src="http://c2.poing.co.kr/MRI-original/MjAxODAz/15202254255a9ccc91bbbde.jpeg" onclick="location.href='${goStoreDetail}'">
	          	  <p>
	              ${ e.restName}<br>
	               <span>${ e.restUpstream}</span>
	            </p>
	            </div>
	            <c:choose>
			<c:when test="${ e.star eq 0 }">
             <div class="coupon-price">
    			<span class="fa fa-star"></span>
    			<span class="fa fa-star"></span>
    			<span class="fa fa-star"></span>
    			<span class="fa fa-star"></span>
    			<span class="fa fa-star"></span>
    			<span class="fa align-right"> ${ e.star } </span>
             </div>
			</c:when>			
			<c:when test="${ e.star eq 1 }">
             <div class="coupon-price">
    			<span class="fa fa-star checked"></span>
    			<span class="fa fa-star"></span>
    			<span class="fa fa-star"></span>
    			<span class="fa fa-star"></span>
    			<span class="fa fa-star"></span>
    			<span class="fa align-right">${ e.star } </span>
             </div>
			</c:when>			
			<c:when test="${ e.star eq 2 }">
             <div class="coupon-price">
    			<span class="fa fa-star checked"></span>
    			<span class="fa fa-star checked"></span>
    			<span class="fa fa-star"></span>
    			<span class="fa fa-star"></span>
    			<span class="fa fa-star"></span>
    			<span class="fa align-right">${ e.star }  </span>
             </div>
			</c:when>			
			<c:when test="${ e.star eq 3 }">
             <div class="coupon-price">
    			<span class="fa fa-star checked"></span>
    			<span class="fa fa-star checked"></span>
    			<span class="fa fa-star checked"></span>
    			<span class="fa fa-star"></span>
    			<span class="fa fa-star"></span>
    			<span class="fa align-right">${ e.star }  </span>
             </div>
			</c:when>			
			<c:when test="${ e.star eq 4 }">
             <div class="coupon-price">
    			<span class="fa fa-star checked"></span>
    			<span class="fa fa-star checked"></span>
    			<span class="fa fa-star checked"></span>
    			<span class="fa fa-star checked"></span>
    			<span class="fa fa-star"></span>
    			<span class="fa align-right">${ e.star }  </span>
             </div>
			</c:when>
			<c:otherwise>
             <div class="coupon-price">
    			<span class="fa fa-star checked"></span>
    			<span class="fa fa-star checked"></span>
    			<span class="fa fa-star checked"></span>
    			<span class="fa fa-star checked"></span>
    			<span class="fa fa-star checked"></span>
    			<span class="fa align-right">${ e.star }  </span>
             </div>
			</c:otherwise>			
			</c:choose>
	            
	         <!-- coupon-price -->
	                        
	          <button class="write-btn">리뷰쓰기</button>
	          </li>
          </c:if>
       
         
         
               
      
         
         
      
	</c:forEach>


     </ul>
  </div>

















<%-- <c:if test="${! empty themeList }">
 <c:forEach items = "${themeList }" var="e">
	<div class="result">
		<c:if test="${!empty e.mainPhoto }">
		<img alt="" src="${e.mainPhoto }" class="profilePic">
		</c:if>
		<c:if test="${ empty e.mainPhoto  }">
		<img alt="" src="resources/images/restaurants/nothing.png" class="profilePic">
		</c:if>
		
		 <div class="nameAndPricesArea">
		
			 <h1 class="text"><c:out value="${e.sName }"></c:out></h1>
			
		
		 <span class="fa fa-star checked"></span>
		<span class="fa fa-star checked"></span>
		<span class="fa fa-star checked"></span>
		<span class="fa fa-star checked"></span>
		<span class="fa fa-star"></span>
		
		<br><br>
		 <h5 class="prices">${e.budget }</h5><br>
		 <p><c:out value="${e.description }"></c:out></p>
		 </div>
	
	
		<div class="btns">		
		<button class="buttons" >예약하기</button>
		<button class="buttons" >리뷰하기</button>
		</div>
	</div>	
</c:forEach>
</c:if> --%>

<%-- 
 <c:forEach items = "${themeListSam }" var="d">
	<div class="result">
		<c:if test="${!empty d.photo }">
		<img alt="" src="${d.photo }" class="profilePic">
		</c:if>
		<c:if test="${ empty d.photo  }">
		<img alt="" src="resources/images/restaurants/nothing.png" class="profilePic">
		</c:if>
		
		 <div class="nameAndPricesArea">
		
			 <h1 class="text"><c:out value="${d.restName }"></c:out></h1>
					
		 <span class="fa fa-star checked"></span>
		<span class="fa fa-star checked"></span>
		<span class="fa fa-star checked"></span>
		<span class="fa fa-star checked"></span>
		<span class="fa fa-star"></span>
		
				
		 </div>
		<div class="btns">		
		
		<button class="buttons" >리뷰하기</button>
		</div>
	</div>	
</c:forEach>

</div> --%>




</div>

<jsp:include page="/WEB-INF/views/common/footer.jsp"></jsp:include>

