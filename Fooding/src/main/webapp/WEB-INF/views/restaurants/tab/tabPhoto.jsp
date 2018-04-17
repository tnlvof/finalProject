<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<div class="photo-container">
	<div class="mySlides">
    	<div class="numbertext">1 / 6</div>
    	<img src="resources/images/restaurants/restaurant-photo01.jpeg" style="width:100%">
	</div>

	<div class="mySlides">
		<div class="numbertext">2 / 6</div>
    	<img src="resources/images/restaurants/restaurant-photo02.jpeg" style="width:100%">
	</div>

	<div class="mySlides">
    	<div class="numbertext">3 / 6</div>
    	<img src="resources/images/restaurants/restaurant-photo03.jpeg" style="width:100%">
	</div>
    
	<div class="mySlides">
    	<div class="numbertext">4 / 6</div>
    	<img src="resources/images/restaurants/restaurant-photo04.jpeg" style="width:100%">
	</div>

  	<div class="mySlides">
    	<div class="numbertext">5 / 6</div>
    	<img src="resources/images/restaurants/restaurant-photo05.jpeg" style="width:100%">
	</div>
    
	<div class="mySlides">
		<div class="numbertext">6 / 6</div>
		<img src="resources/images/restaurants/restaurant-photo06.jpeg" style="width:100%">
  	</div>
    
	<a class="prev" onclick="plusSlides(-1)">❮</a>
	<a class="next" onclick="plusSlides(1)">❯</a>

	<div class="caption-container"><p id="caption"></p></div>

	<div class="row">
		<div class="column">
			<img class="demo cursor" src="resources/images/restaurants/restaurant-photo01.jpeg" style="width:100%" onclick="currentSlide(1)">
		</div>
    	<div class="column">
      		<img class="demo cursor" src="resources/images/restaurants/restaurant-photo02.jpeg" style="width:100%" onclick="currentSlide(2)">
    	</div>
    	<div class="column">
      		<img class="demo cursor" src="resources/images/restaurants/restaurant-photo03.jpeg" style="width:100%" onclick="currentSlide(3)">
    	</div>
    	<div class="column">
      		<img class="demo cursor" src="resources/images/restaurants/restaurant-photo04.jpeg" style="width:100%" onclick="currentSlide(4)">
    	</div>
    	<div class="column">
      		<img class="demo cursor" src="resources/images/restaurants/restaurant-photo05.jpeg" style="width:100%" onclick="currentSlide(5)">
  		</div>    
    	<div class="column">
      		<img class="demo cursor" src="resources/images/restaurants/restaurant-photo06.jpeg" style="width:100%" onclick="currentSlide(6)">
    	</div>
	</div><!-- row -->
</div><!-- photo-container -->