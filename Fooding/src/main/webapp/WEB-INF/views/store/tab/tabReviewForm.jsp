<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<script>
//파일 업로드
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
</script>

<c:if test="${ !empty loginUser }">
<h4>리뷰 작성하기</h4>

<form action="insertReview.rv" method="post" enctype="multipart/form-data">
	<ul>
		<li>
			<label>별점</label>
			<select id="checkRank" onChange="rankCheck()">
				<option selected> 평점을 매겨주세요! </option>
				<option value="1">★☆☆☆☆</option>
				<option value="2">★★☆☆☆</option>
				<option value="3">★★★☆☆</option>
				<option value="4">★★★★☆</option>
				<option value="5">★★★★★</option>
			</select>
			<span class="rankResult"></span>
			<input type="hidden" name="star" class="inputStar">
			<script>
				function rankCheck(){
					var rank = $("#checkRank > option:selected").val();
					
					$(".inputStar").val(rank);
					
					if(rank == 1){
						$(".rankResult").text("1점 - 실망이예요. 집에서 먹는게 나을 뻔 했어요.");
					} else if(rank == 2){
						$(".rankResult").text("2점 - 평균 이하! 이 정도 레스토랑은 어디에나 있죠.");
					} else if(rank == 3){
						$(".rankResult").text("3점 - 보통이에요. 이 정도면 괜찮네요.");
					} else if(rank == 4){
						$(".rankResult").text("4점 - 인상적이네요. 꼭 추천하고 싶어요.");
					} else {
						$(".rankResult").text("5점 - 완벽 그 자체! 환상적이에요.");
					}
					console.log(rank);
				}
			</script>
		</li>
		
		<li>
			<label>리뷰</label>
			<textarea name="rContent" placeholder="매장에 대한 리뷰를 30자 이상 작성해주세요. 매장과 관계 없는 글, 광고성, 욕설, 비방, 도배 등의 글은 예고 없이 삭제됩니다."></textarea>
		</li>
		
		<li>
			<label>사진 등록</label>
			
			<!-- <div class="filebox preview-image"> 
	            	<input class="upload-name" value="파일선택" disabled="disabled"> 
	                <label for="input-file">사진 등록하기</label> 
	                <input type="file" id="input-file" class="upload-hidden" name="Photo"> 
	            </div> -->
			<div class="filebox bs3-primary preview-image">
				<input class="upload-name" value="" disabled="disabled" style="width: 200px;">
	
				<label for="input_file">사진 등록하기</label> 
				<input type="file" id="input_file" name="Photo" class="upload-hidden"><br> 
				
				
			</div>
			<!-- filebox -->
		</li>
	</ul>
	<input type="hidden" name="storeId" value="${ store.sid }">
	
	<button type="submit">리뷰 올리기</button>
</form>
</c:if>