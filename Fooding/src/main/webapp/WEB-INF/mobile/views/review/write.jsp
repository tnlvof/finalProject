<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!-- header -->
<jsp:include page="/WEB-INF/mobile/views/common/header.jsp"/>

<link rel="stylesheet" href="/fooding/resources/css/m/review/list.css" />

<header data-role="header" class="header">
	<button type="button" id="go-back">&lt;</button>
	<h2>리뷰 작성</h2>
</header>

<form action="" method="post" class="writeForm">
	<div class="srchArea">
		<input type="search" class="find-restaurant" placeholder="리뷰를 작성할 매장을 검색하세요."/>
		<button class="find-btn">검색</button>
	</div>
	<!-- srch-area -->
	
	<div class="giveScore" data-role="fieldcontain">
		<p class="score">0점</p>
		<p class="rankResult"></p>
			<select id="checkRank" class="checkRank" onChange="rankCheck()">
				<option selected> 별점 입력</option>
				<option value="1">★☆☆☆☆</option>
				<option value="2">★★☆☆☆</option>
				<option value="3">★★★☆☆</option>
				<option value="4">★★★★☆</option>
				<option value="5">★★★★★</option>
			</select>
			<script>
				function rankCheck(){
					var rank = $("#checkRank > option:selected").val();
					
					if(rank == 1){
						$(".score").text("1점");
						$(".rankResult").text("실망이예요. 집에서 먹는게 나을 뻔 했어요.");
					} else if(rank == 2){
						$(".score").text("2점");
						$(".rankResult").text("평균 이하! 이 정도 레스토랑은 어디에나 있죠.");
					} else if(rank == 3){
						$(".score").text("3점");
						$(".rankResult").text("보통이에요. 이 정도면 괜찮네요.");
					} else if(rank == 4){
						$(".score").text("4점");
						$(".rankResult").text("인상적이네요. 꼭 추천하고 싶어요.");
					} else {
						$(".score").text("5점");
						$(".rankResult").text("완벽 그 자체! 환상적이에요.");
					}
					console.log(rank);
				}
			</script>
	</div>
	<!-- give-score -->
	
	<div class="writeArea">
		<textarea id="writeReview" rows="10"></textarea>
		<span id="counter"></span>
	</div>
	<!-- write-area -->

	<div class="photoArea">
			<div class="filebox bs3-primary preview-image">
				<label for="input_file">
					<span class="addPhoto">+</span>
					<br>
					사진
				</label> 
				<input type="file" id="input_file" class="upload-hidden">
			</div>
			<!-- filebox -->
	</div>
	<!-- photo-area -->

	<button type="submit" class="update-review">리뷰 올리기</button>
</form>


<script>
//Review textarea placeholder
document.getElementById("writeReview").placeholder = "매장에 대한 상세한 리뷰를 30자 이상 작성해주세요. \n \n"
+ "매장과 관계없는 글, 광고성, 욕설, 비방, 도배 등의 글은 예고없이 삭제 됩니다.";


//글자수 세기
$(function(){
	$('#writeReview').keyup(function (e){
    	var review = $(this).val();
    	$('#counter').html(review.length + ' 자');
    });
	
	$('#writeReview').keyup();
});



//사진 업로드
$(document).ready(function(){
   var fileTarget = $('.filebox .upload-hidden');

    fileTarget.on('change', function(){
        if(window.FileReader){
            // 파일명 추출
            var filename = $(this)[0].files[0].name;
        } 

        else {
            // Old IE 파일명 추출
            var filename = $(this).val().split('/').pop().split('\\').pop();
        };

        $(this).siblings('.upload-name').val(filename);
    });

    //preview image 
    var imgTarget = $('.preview-image .upload-hidden');

    imgTarget.on('change', function(){
        var parent = $(this).parent();
        parent.children('.upload-display').remove();

        if(window.FileReader){
            //image 파일만
            if (!$(this)[0].files[0].type.match(/image\//)) return;
            
            var reader = new FileReader();
            reader.onload = function(e){
                var src = e.target.result;
                parent.append('<div class="upload-display"><div class="upload-thumb-wrap"><img src="'+src+'" class="upload-thumb"></div></div>');
            }
            reader.readAsDataURL($(this)[0].files[0]);
        }

        else {
            $(this)[0].select();
            $(this)[0].blur();
            var imgSrc = document.selection.createRange().text;
            parent.append('<div class="upload-display"><div class="upload-thumb-wrap"><img class="upload-thumb"></div></div>');

            var img = $(this).siblings('.upload-display').find('img');
            img[0].style.filter = "progid:DXImageTransform.Microsoft.AlphaImageLoader(enable='true',sizingMethod='scale',src=\""+imgSrc+"\")";        
        }
    });
});

//뒤로가기
$(document).ready(function() {
	$('#go-back').click(function() {
		parent.history.back();
		return false;
	});
});
</script>
<!-- footer -->
<jsp:include page="/WEB-INF/mobile/views/common/gnb.jsp"/>