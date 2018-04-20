<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<h4>리뷰 작성하기</h4>

<form action="" method="post">
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
			<script>
				function rankCheck(){
					var rank = $("#checkRank > option:selected").val();
					
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
			<textarea placeholder="매장에 대한 리뷰를 30자 이상 작성해주세요. 매장과 관계 없는 글, 광고성, 욕설, 비방, 도배 등의 글은 예고 없이 삭제됩니다."></textarea>
		</li>
		
		<li>
			<label>사진 등록</label>
			<div class="filebox bs3-primary preview-image">
				<input class="upload-name" value="" disabled="disabled" style="width: 200px;">
	
				<label for="input_file">사진 등록하기</label> 
				<input type="file" id="input_file" class="upload-hidden"><br> 
			</div>
			<!-- filebox -->
		</li>
	</ul>

	<button type="submit">리뷰 올리기</button>
</form>