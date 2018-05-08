<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<script>
function renewReview(){
	var sid= '${store.sid}'
	console.log(sid);
	
	$.ajax({
		type:'post',
		url:'selectReview.re',
		data:{sid:sid},
		dataType:'json',
		success:function(data){
			var $reviews = $("#reviews");
			$reviews.nextAll("div").remove();
			
			console.log(data);
			console.log(data.rList);
			
			for(var i=0;i <data.rList.length;i++){
				
				$reviews.append("<div class='showReview'> <div class='review-info'><div class='re-info'> <span class='writerId'>"+data.rList[i].writer+"</span><br><span class='writeDate'>"+data.rList[i].enrollDate+"</span></div></div>");
					if(data.rList[i].star >= 4.5){
						$(".showReview").last().append("<div class='rank'><i class='iconRank'></i><i class='iconRank'></i><i class='iconRank'></i><i class='iconRank'></i><i class='iconRank'></i> <span class='rank-discript'>"+data.rList[i].star+"</span>");
					}else if(data.rList[i].star >= 3.5){
						$(".showReview").last().append("<div class='rank'><i class='iconRank'></i><i class='iconRank'></i><i class='iconRank'></i><i class='iconRank'></i><i class='iconRank rankOff'></i><span class='rank-discript'>"+data.rList[i].star+"</span>");
					}else if(data.rList[i].star >= 2.5){
						$(".showReview").last().append("<div class='rank'><i class='iconRank'></i><i class='iconRank'></i><i class='iconRank'></i><i class='iconRank rankOff'></i><i class='iconRank rankOff'></i><span class='rank-discript'>"+data.rList[i].star+"</span>");
					}else if(data.rList[i].star >= 1.5){
						$(".showReview").last().append("<div class='rank'><i class='iconRank'></i><i class='iconRank'></i><i class='iconRank rankOff'></i><i class='iconRank rankOff'></i><i class='iconRank rankOff'></i><span class='rank-discript'>"+data.rList[i].star+"</span>");
					}else if(data.rList[i].star >= 0.5){
						$(".showReview").last().append("<div class='rank'><i class='iconRank'></i><i class='iconRank rankOff'></i><i class='iconRank rankOff'></i><i class='iconRank rankOff'></i><i class='iconRank rankOff'></i><span class='rank-discript'>"+data.rList[i].star+"</span>");
					}else{
						$(".showReview").last().append("<div class='rank'><i class='iconRank rankOff'></i><i class='iconRank rankOff'></i><i class='iconRank rankOff'></i><i class='iconRank rankOff'></i><i class='iconRank rankOff'></i><span class='rank-discript'>"+data.rList[i].star+"</span>");
					};
					
				$(".rank").last().append("<p>"+ data.rList[i].rContent +"</p></div></div>");
				$(".showReview").last().append("<div><img src='/fooding/resources/reviewFiles/"+data.rList[i].mainPhoto+"' class='reviewImg'></div>");
			}
		},
		error:function(msg){
			alert(msg);
		}
		
	});
}
</script>
<div id="reviews" class="reviews">
	<%-- <h4>리뷰</h4>
	<c:if test="${ review == null}">
	<!-- 리뷰 無 -->
	<div class="noReview">
		<i class="iconReview"></i>
		&quot;식당이름&quot; 매장의 첫번째 리뷰를 작성해 보세요!
	</div>
	<!-- no-review -->
	</c:if> --%>
	
	<!-- 리뷰 有 -->
	<!-- <div class="showReview">
		<div class="review-info">
			<div class="re-info">
				<span class="writerId">작성자</span><br>
				<span class="writeDate">2018-04-10 17:20</span>
			</div>
			re-info
		</div>
		review-info
		
		<div class="rank">
			<i class="iconRank"></i>
			<i class="iconRank"></i>
			<i class="iconRank"></i>
			<i class="iconRank rankOff"></i>
			<i class="iconRank rankOff"></i>
			
			<span class="rank-discript">3.0 / 보통이에요. 이 정도면 괜찮네요.</span>
			
			<p>
				항상 아쉬워도 대안이 없다.<br>
				현상 유지만 해줘도 찾을 곳.
			</p>
		</div>
		rank
	</div> -->
	<!-- showReview -->
</div> 
<!-- reviews -->	