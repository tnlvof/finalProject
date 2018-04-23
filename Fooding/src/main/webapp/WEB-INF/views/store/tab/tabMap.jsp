<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>


<style>
.customoverlay {
	position: relative;
	bottom: 85px;
	border-radius: 6px;
	border: 1px solid #ccc;
	border-bottom: 2px solid #ddd;
	float: left;
}

.customoverlay:nth-of-type(n) {
	border: 0;
	box-shadow: 0px 1px 2px #888;
}

.customoverlay a {
	display: block;
	text-decoration: none;
	color: #000;
	text-align: center;
	border-radius: 6px;
	font-size: 14px;
	font-weight: bold;
	overflow: hidden;
	background: #d95050;
	background: #d95050
		url(http://t1.daumcdn.net/localimg/localimages/07/mapapidoc/arrow_white.png)
		no-repeat right 14px center;
}

.customoverlay .title {
	display: block;
	text-align: center;
	background: #fff;
	margin-right: 35px;
	padding: 10px 15px;
	font-size: 14px;
	font-weight: bold;
}

.customoverlay:after {
	content: '';
	position: absolute;
	margin-left: -12px;
	left: 50%;
	bottom: -12px;
	width: 22px;
	height: 12px;
	background:
		url('http://t1.daumcdn.net/localimg/localimages/07/mapapidoc/vertex_white.png')
}
</style>


<div id="map" style="width: 100%; height: 400px;"></div>


<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=82eb499cd9c011a78d1f32d273f9d2bd&libraries=services"></script>
<script>
	var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
	mapOption = {
		center : new daum.maps.LatLng(37.54699, 127.09598), // 지도의 중심좌표
		level : 4
	// 지도의 확대 레벨
	};

	var map = new daum.maps.Map(mapContainer, mapOption);

	var imageSrc = '/fooding/resources/images/restaurants/icon-marker.png', // 마커이미지의 주소입니다    
	imageSize = new daum.maps.Size(64, 69), // 마커이미지의 크기입니다
	imageOption = {
		offset : new daum.maps.Point(27, 69)
	}; // 마커이미지의 옵션입니다. 마커의 좌표와 일치시킬 이미지 안에서의 좌표를 설정합니다.

	// 마커의 이미지정보를 가지고 있는 마커이미지를 생성합니다
	var markerImage = new daum.maps.MarkerImage(imageSrc, imageSize,
			imageOption), markerPosition = new daum.maps.LatLng(37.54699,
			127.09598); // 마커가 표시될 위치입니다

	// 마커를 생성합니다
	var marker = new daum.maps.Marker({
		position : markerPosition,
		image : markerImage
	// 마커이미지 설정 
	});

	// 마커가 지도 위에 표시되도록 설정합니다
	marker.setMap(map);

	// 커스텀 오버레이에 표출될 내용으로 HTML 문자열이나 document element가 가능합니다
	var content = '<div class="customoverlay">'
			+ '  <a href="http://map.daum.net/link/map/11394059" target="_blank">'
			+ '    <span class="title">구의야구공원</span>' + '  </a>' + '</div>';

	// 커스텀 오버레이가 표시될 위치입니다 
	var position = new daum.maps.LatLng(37.54699, 127.09598);

	// 커스텀 오버레이를 생성합니다
	var customOverlay = new daum.maps.CustomOverlay({
		map : map,
		position : position,
		content : content,
		yAnchor : 1
	});
</script>