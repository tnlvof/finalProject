<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<meta charset="UTF-8">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">

<!-- header -->
<jsp:include page="/WEB-INF/views/common/header.jsp"/>

<!-- css or js파일 연결 시키는 곳 -->
<link rel="stylesheet" href="/fooding/resources/css/myPage.css">

<div class="container" id="container">
	<jsp:include page="/WEB-INF/views/myPage/myPageBanner.jsp" />
	<div id="content_wrap">
		<div id="content" class="mypage">
			<ul class="tab">
				<li class="item" onclick="location.href='goMyPage.me'">예약</li>
				<li class="item" onclick="location.href='goMyPageReview.me'">리뷰</li>
				<li class="item" onclick="location.href='goMyPageQuestions.me'">1:1 문의</li>
			</ul>
			<div id="reservation" class="body empty">
				<div class="filter">
					<a href="#" class="">방문 예정 예약</a> <a
						href="#" class="">지나간 예약</a>
				</div>
				<!-- 예약이 없을 때 화면 -->
				<div class="blank">
					<div class="message">
						예약이 없습니다.<br>지금 레스토랑에 예약해보시겠어요?
					</div>
					<button class="disable" onclick="" tabindex="-1"></button>
				</div>

				<!-- 예약화면 -->
				<div class="list">
					<div class="reservation">
						<div class="i_wrap image">
							<div class="image border_radius hard"
								style="background-image: url(&quot;http://c2.poing.co.kr/PIMAGE-default/5746a03f668a484de2000044.png&quot;);"></div>
						</div>
						<div class="info">
							<div class="name">
								<a href="#">브릭오븐</a> <span
									class="label blue border_radius soft">예약 대기</span> <span
									class="label green border_radius soft">예약 확정</span> <span
									class="label blue border_radius soft">변경 대기</span>
							</div>
							<div class="date">예약정보: 2018.5.2 (수) 오후 12:00</div>
							<div class="party_size">인원: 6명</div>
						</div>

						<button class="red border_radius soft" tabindex="-1" onclick="document.getElementById('changeCancel').style.display='block'">변경
							/ 취소</button>
						<!-- Modal -->
						<div id="changeCancel" class="w3-modal">
							<div class="w3-modal-content">
								<div class="w3-container">									
									<div id="pre-reserve" class="reserve-popup"
										style="width: 599px; height: 390px; margin-top: -203px; display: block;">
										<img
										src="${contextPath }/resources/images/common/closeButton.png"
										width="15" height="15" align="right" class="xBtn"
										onclick="document.getElementById('changeCancel').style.display='none'" style="position: absolute; top: 7px; right: 6px;">
										<div class="popup-title">예약변경/취소</div>
										<div class="popup-row box_list">
											<div class="box">
												<i class="icon personnel"></i>
												<div class="box_text">인원</div>
												<div class="person_count">
													<input value="-" count_range="m" type="button" id="mBtn">
													<i class="icon minus" for="mBtn"></i>
													<!-- <span id="reserve_person_count" class="count">6</span> -->
													<input class="count" value="1" readonly>
													<input value="+" count_range="p" type="button" id="pBtn">
													<i class="icon plus" for="pBtn"></i>
												</div>
												<!-- <div class="__count_range">
													<input value="-" count_range="m" type="button">
													<input class="count" value="1" readonly>
													<input value="+" count_range="p" type="button">
												</div> -->
												<script>
												$(document).ready(function(){
												    $('.person_count input[count_range]').click(function(e){
												        e.preventDefault();
												        var type = $(this).attr('count_range');
												        var $count = $(this).parent().children('input.count');
												        var count_val = $count.val(); // min 1
												        if(type=='m'){
												            if(count_val<1){
												                return;
												            }
												            $count.val(parseInt(count_val)-1);
												        }else if(type=='p'){
												            $count.val(parseInt(count_val)+1);
												        }
												    });
												});
												</script>
											</div>
											<div class="box pointer">
												<div id="calendar"
													class="sidemenu-content sub_popup hasDatepicker"
													style="display: none;">
													<div
														class="ui-datepicker-inline ui-datepicker ui-widget ui-widget-content ui-helper-clearfix ui-corner-all"
														style="display: block;">
														
													</div>
												</div>

												<i class="icon calendar"></i>
												<div class="box_text">날짜</div>
												<span id="reserve_date" class="date first">2018.5.2</span> <i
													class="icon arrow red"></i>
											</div>
											<div class="box pointer" style="margin: 0;">
												<div id="timetable" class="sidemenu-content sub_popup"
													style="display: none;">
													<ul>
														<li class="disable-block" data-time="12:00">오후 12:00</li>
														<li class="disable-block" data-time="12:30">오후 12:30</li>
														<li class="disable-block" data-time="13:00">오후 1:00</li>
														<li class="disable-block" data-time="13:30">오후 1:30</li>
														<li class="disable-block" data-time="14:00">오후 2:00</li>
														<li class="disable-block" data-time="14:30">오후 2:30</li>
														<li class="disable-block" data-time="15:00">오후 3:00</li>
														<li class="disable-block" data-time="15:30">오후 3:30</li>
														<li class="disable-block" data-time="16:00">오후 4:00</li>
														<li class="disable-block" data-time="16:30">오후 4:30</li>
														<li class="disable-block" data-time="17:00">오후 5:00</li>
														<li class="disable-block" data-time="17:30">오후 5:30</li>
														<li class="disable-block" data-time="18:00">오후 6:00</li>
														<li class="disable-block" data-time="18:30">오후 6:30</li>
														<li class="disable-block" data-time="19:00">오후 7:00</li>
														<li class="disable-block" data-time="19:30">오후 7:30</li>
														<li class="disable-block" data-time="20:00">오후 8:00</li>
														<li class="disable-block" data-time="20:30">오후 8:30</li>
														<li class="disable-block" data-time="21:00">오후 9:00</li>
													</ul>
												</div>

												<i class="icon clock"></i>
												<div class="box_text">시간</div>
												<span id="reserve_time" class="time first" time="12:00">오후
													12:00</span> <i class="icon arrow red"></i>
											</div>
										</div>

										<div class="popup-row comment result">
											<span class="date">18년 5월 2일 (수)</span> <span class="time">오후
												12:00</span> <span class="count">6명</span>
										</div>

										<div class="popup-row comment">
											<textarea id="reserve_comment" rows="5"
												placeholder="요청사항을 적어주세요." maxlength="50"></textarea>
											<p>
												(<span id="counter">0</span>/50자)
											</p>
											<script>
											$(function() {
											      $('#reserve_comment').keyup(function (e){
											          var comment = $(this).val();
											          $(this).height(((comment.split('\n').length + 1) * 1.5) + 'em');
											          $('#counter').html(comment.length);
											      });
											      $('#reserve_comment').keyup();
											});
											</script>
										</div>
										<div class="popup-row notice">
											<div>*예약 취소는 예약 시간 30분 전까지만 가능합니다.</div>
											<div>*No-Show(노쇼:예약을 하고 나타나지 않은 행위)는 외식업계를 아프게합니다.</div>
										</div>
										<div class="confirm-btn">
											<button type="text" class="reserve" tabindex="-1"
												style="display: none;">예약 접수</button>
											<button type="text" class="cancel" tabindex="-1"
												style="display: inline-block;" onclick="document.getElementById('reservCancel').style.display='block'">예약 취소</button>
											<button type="text" class="edit" tabindex="-1"
												style="display: inline-block;" onclick="document.getElementById('reservChange').style.display='block'">변경</button>
											<div id="reservCancel" class="w3-modal">
												<div class="w3-modal-content">
													<div class="w3-container">
														<div class="confirmBackground" style="display: block;"></div>
														<div id="default" class="confirmPopup"
															style="padding: 20px 40px; margin-left: -110.5px; margin-top: -26.5px; display: block;">
															<div class="confirmMessage">예약을 취소하시겠습니까?</div>
														</div>
														<div class="confirmNo"
															style="margin-left: -110.5px; margin-top: 28.5px; width: 108.5px; display: block;" onclick="document.getElementById('reservCancel').style.display='none'">아니오</div>
														<div class="confirmOk"
															style="margin-left: 1px; margin-top: 28.5px; width: 108.5px; display: block;">예</div>
														
													</div>
												</div>
											</div>
											<div id="reservChange" class="w3-modal">
												<div class="w3-modal-content">
													<div class="w3-container">
														<div class="confirmBackground" style="display: block;"></div>
														<div id="default" class="confirmPopup"
															style="padding: 20px 40px; margin-left: -110.5px; margin-top: -26.5px; display: block;">
															<div class="confirmMessage">예약을 변경하시겠습니까?</div>
														</div>
														<div class="confirmNo"
															style="margin-left: -110.5px; margin-top: 28.5px; width: 108.5px; display: block;" onclick="document.getElementById('reservChange').style.display='none'">아니오</div>
														<div class="confirmOk"
															style="margin-left: 1px; margin-top: 28.5px; width: 108.5px; display: block;">예</div>
														
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<jsp:include page="/WEB-INF/views/myPage/myPageSidebar.jsp" />
	</div>
</div>
<!-- container -->

<!-- footer -->
<jsp:include page="/WEB-INF/views/common/footer.jsp"/>
