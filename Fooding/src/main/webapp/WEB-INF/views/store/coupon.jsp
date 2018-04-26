<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>


<jsp:include page="/WEB-INF/views/common/header.jsp"></jsp:include>
<link rel="stylesheet" href="/fooding/resources/css/couponList.css">



<div class="title-box">
	<div class="bg-black">
		<p>
			푸딩 다이닝 티켓을 통해 최고의 레스토랑들을<br>
			합리적인 가격에 만나보세요.
		</p>
		<span>Curated by Fooding</span>
	</div>
</div>


신규 쿠폰
추천쿠폰
기간 임박 쿠폰





<div class="container">



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
<!-- container -->


</body>
</html>