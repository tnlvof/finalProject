<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<meta charset="UTF-8">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!-- detail에 있는 javascript -->
<script type="text/javascript" src="/fooding/resources/js/detail.js"></script>

<!-- header -->
<jsp:include page="/WEB-INF/views/common/header.jsp"/>

<!-- css or js파일 연결 시키는 곳 -->
<link rel="stylesheet" href="/fooding/resources/css/restaurants/detail.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

<div class="container">
	<!-- 
		banner-wrap의 background-image가 tab에 있는 포토 중 가장 첫번째 사진이
		background로 들어가는 것
		그래서 인라인 스타일로 지정해줌
	-->
	<div class="banner-wrap">
		<div class="i_wrap background">
			<!-- 프로필사진 배경 넣어주세요 -->
			<i class="image profile_image shading middle"
				style="background-image: url(/fooding/resources/images/main/key_visiual01.jpg)"></i>
		</div>
	
		<div class="i_wrap blur background">
			<!-- 프로필사진 배경 넣어주세요 -->
			<i class="image profile_image shading middle"
				style="background-image: url(/fooding/resources/images/main/key_visiual01.jpg)"></i>
		</div>
		
		
		<c:if test="${ store eq null }">
		<div class="inner_wrap">
			<div class="banner">
				<div class="title">
					<span class="restaurant-name">${ s.restName }</span>
					<span class="restuarant-info">${ s.restUpstream }</span>
					<!-- <span class="reservation-info">예약 802건 / 리뷰 23건 / 조회 7028건</span> -->
				</div>
				<!-- title -->
				
				<ul class="ban-con">
					<li class="rank-wrap">
					<label>별점</label>
						<fmt:formatNumber var="star" value="${ s.star }" pattern="0"/>
						<c:choose>
	                   		<c:when test="${ star eq 0 }">
                                <div class="coupon-price">
                       			<span class="fa fa-star"></span>
                       			<span class="fa fa-star"></span>
                       			<span class="fa fa-star"></span>
                       			<span class="fa fa-star"></span>
                       			<span class="fa fa-star"></span>
                       			<span class="fa align-right"> ${ s.star } </span>
                                </div>
	                   		</c:when>			
	                   		<c:when test="${ star eq 1 }">
                                <div class="coupon-price">
                       			<span class="fa fa-star checked"></span>
                       			<span class="fa fa-star"></span>
                       			<span class="fa fa-star"></span>
                       			<span class="fa fa-star"></span>
                       			<span class="fa fa-star"></span>
                       			<span class="fa align-right">${ s.star } </span>
                                </div>
	                   		</c:when>			
	                   		<c:when test="${ star eq 2 }">
                                <div class="coupon-price">
                       			<span class="fa fa-star checked"></span>
                       			<span class="fa fa-star checked"></span>
                       			<span class="fa fa-star"></span>
                       			<span class="fa fa-star"></span>
                       			<span class="fa fa-star"></span>
                       			<span class="fa align-right">${ s.star }  </span>
                                </div>
	                   		</c:when>			
	                   		<c:when test="${ star eq 3 }">
                                <div class="coupon-price">
                       			<span class="fa fa-star checked"></span>
                       			<span class="fa fa-star checked"></span>
                       			<span class="fa fa-star checked"></span>
                       			<span class="fa fa-star"></span>
                       			<span class="fa fa-star"></span>
                       			<span class="fa align-right">${ s.star }  </span>
                                </div>
	                   		</c:when>			
	                   		<c:when test="${ star eq 4 }">
                                <div class="coupon-price">
                       			<span class="fa fa-star checked"></span>
                       			<span class="fa fa-star checked"></span>
                       			<span class="fa fa-star checked"></span>
                       			<span class="fa fa-star checked"></span>
                       			<span class="fa fa-star"></span>
                       			<span class="fa align-right">${ s.star }  </span>
                                </div>
	                   		</c:when>
	                   		<c:otherwise>
                                <div class="coupon-price">
                       			<span class="fa fa-star checked"></span>
                       			<span class="fa fa-star checked"></span>
                       			<span class="fa fa-star checked"></span>
                       			<span class="fa fa-star checked"></span>
                       			<span class="fa fa-star checked"></span>
                       			<span class="fa align-right">${ s.star }  </span>
                                </div>
	                   		</c:otherwise>			
	                   		</c:choose>
						<!-- rank-box -->
					</li>
					
					<li>
						<label>전화번호</label>
						${ s.restNumber }
					</li>
					
					<li>
						<label>주소</label>
						${ s.restAddress }
					</li>
					
					<li>
						<label>파는 음식</label>
						${ s.restMenu }
					</li>
					<!-- <li>
						<label>영업시간</label>
						12:00-15:00 (L.O 14:00), 18:00-22:00(L.0 21:00)
					</li> -->
					
					<!-- <li>
						<label>휴무일</label>
						일요일, 명절
					</li> -->
					
					<!-- <li>
						<label>예산(2인 기준)</label>
						16만원 이상
					</li> -->
					
					<li><button type="button" class="asap-reservation">즉시 예약하기</button></li>
				</ul>
				
			</div>
			<!-- banner -->
		</div>
		<!-- inner_wrap -->
		</c:if>
		
		<c:if test="${ store ne null }">
		<div class="inner_wrap">
			<div class="banner">
				<div class="title">
					<span class="restaurant-name">${ store.sName }</span>
					<span class="restuarant-info">${ store.sCode}</span>
					<!-- <span class="reservation-info">예약 802건 / 리뷰 23건 / 조회 7028건</span> -->
				</div>
				<!-- title -->
				
				<ul class="ban-con">
					<li class="rank-wrap">
						<label>별점</label>
						<fmt:formatNumber var="star" value="${ store.star }" pattern="0"/>
						<c:choose>
	                   		<c:when test="${ star eq 0 }">
                                <div class="coupon-price">
                       			<span class="fa fa-star"></span>
                       			<span class="fa fa-star"></span>
                       			<span class="fa fa-star"></span>
                       			<span class="fa fa-star"></span>
                       			<span class="fa fa-star"></span>
                       			<span class="fa align-right"> ${ store.star } </span>
                                </div>
	                   		</c:when>			
	                   		<c:when test="${ star eq 1 }">
                                <div class="coupon-price">
                       			<span class="fa fa-star checked"></span>
                       			<span class="fa fa-star"></span>
                       			<span class="fa fa-star"></span>
                       			<span class="fa fa-star"></span>
                       			<span class="fa fa-star"></span>
                       			<span class="fa align-right">${ store.star } </span>
                                </div>
	                   		</c:when>			
	                   		<c:when test="${ star eq 2 }">
                                <div class="coupon-price">
                       			<span class="fa fa-star checked"></span>
                       			<span class="fa fa-star checked"></span>
                       			<span class="fa fa-star"></span>
                       			<span class="fa fa-star"></span>
                       			<span class="fa fa-star"></span>
                       			<span class="fa align-right">${ store.star }  </span>
                                </div>
	                   		</c:when>			
	                   		<c:when test="${ star eq 3 }">
                                <div class="coupon-price">
                       			<span class="fa fa-star checked"></span>
                       			<span class="fa fa-star checked"></span>
                       			<span class="fa fa-star checked"></span>
                       			<span class="fa fa-star"></span>
                       			<span class="fa fa-star"></span>
                       			<span class="fa align-right">${ store.star }  </span>
                                </div>
	                   		</c:when>			
	                   		<c:when test="${ star eq 4 }">
                                <div class="coupon-price">
                       			<span class="fa fa-star checked"></span>
                       			<span class="fa fa-star checked"></span>
                       			<span class="fa fa-star checked"></span>
                       			<span class="fa fa-star checked"></span>
                       			<span class="fa fa-star"></span>
                       			<span class="fa align-right">${ store.star }  </span>
                                </div>
	                   		</c:when>
	                   		<c:otherwise>
                                <div class="coupon-price">
                       			<span class="fa fa-star checked"></span>
                       			<span class="fa fa-star checked"></span>
                       			<span class="fa fa-star checked"></span>
                       			<span class="fa fa-star checked"></span>
                       			<span class="fa fa-star checked"></span>
                       			<span class="fa align-right">${ store.star }  </span>
                                </div>
	                   		</c:otherwise>			
	                   		</c:choose>
						<!-- rank-box -->
					</li>
					
					<li>
						<label>전화번호</label>
						${ store.phone }
					</li>
					
					<li>
						<label>주소</label>
						${ store.address }
					</li>
					
					<li>
						<label>영업시간</label>
						${ store.sHours }
					</li>
					
					<li>
						<label>휴무일</label>
						${ store.dayoff }
					</li>
					
					<li>
						<label>예산(2인 기준)</label>
						${ store.budget }
					</li>
					
					<li><button type="button" class="asap-reservation">즉시 예약하기</button></li>
				</ul>
				
			</div>
			<!-- banner -->
		</div>
		<!-- inner_wrap -->
		</c:if>
		
	</div>
	<!-- banner-wrap -->


	<div class="detail-wrap">
		<div class="detail-content">
			<!-- 탭메뉴 버튼 -->
			<ul class="tab">
				<li class="tablinks active" onclick="openTab(event, 'tabInfo')">정보</li>
				<!-- <li class="tablinks" onclick="openTab(event, 'tabPhoto')">포토</li> -->
				<li id="reviewBtn"class="tablinks" onclick="openTab(event, 'tabReview')">리뷰</li>
				<!-- <li class="tablinks" onclick="openTab(event, 'tabMenu')">메뉴</li> -->
				<li class="tablinks" onclick="openTab(event, 'tabCoupon')">쿠폰</li>
				<!-- <li class="tablinks" onclick="openTab(event, 'tabMap')">지도</li> -->
			</ul>
			<!-- tab -->
			
			<div id="tabInfo" class="tabcontent" style="display:block">
				<jsp:include page="tab/tabInfo.jsp"/>
			</div>
			<!-- tabInfo -->
			
			<%-- <div id="tabPhoto" class="tabcontent">
				<jsp:include page="tab/tabPhoto.jsp"/>
			</div> --%>
			<!-- tabPhoto -->
			
			<div id="tabReview" class="tabcontent tabReview">
				<!-- 리뷰 작성 폼 (탭 메뉴 상단에 위치) -->
				<jsp:include page="tab/tabReviewForm.jsp"/>
			</div>
			<!-- tabReview -->
			
			<!-- 리뷰가 있을 때 없을 때 보여지는 곳 -->
			<jsp:include page="tab/tabReviews.jsp"/>
			
		
			
			<div id="tabMenu" class="tabcontent">
				<jsp:include page="tab/tabMenu.jsp"/>
			</div>
			<!-- tabMenu -->
			
			<div id="tabCoupon" class="tabcontent">
				<jsp:include page="tab/tabCoupon.jsp"/>
			</div>
			<!-- tabCoupon -->
			
			<div id="tabMap" class="tabcontent">
				<jsp:include page="tab/tabMap.jsp"/>
			</div>
			<!-- tabMap -->
		</div>
		<!-- detail-content -->
	</div>
	<!-- content-wrap -->
</div>
<!-- container -->




<!-- footer -->
<jsp:include page="/WEB-INF/views/common/footer.jsp"/>
