<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
		<div id="banner_wrap">
			<div id="banner" class="user">
				<div class="inner_wrap">
					<div class="inner">
						<div id="change_user_image" class="user_image i_wrap">
							<div class="image border_radius circle profile_image" id="btn-upload">
							<!-- <button type="button" id="btn-upload"></button> -->
							</div>
							<input type="file" id="file" name="file" onchange="changeValue(this)"/>
							<div class="border_radius circle"></div>
						</div>
						<script type="text/javascript">
						$(function() {
							$('#btn-upload').click(function(e) {
								e.preventDefault();
								$('#file').click();
							});
						});

						function changeValue(obj) {
							alert(obj.value);
						}		
					</script>
					<div class="name">
							<span>Fooding</span>
						</div>
						<div class="intro">맛있는 발견의 즐거움 - Fooding</div>
						<div class="info">
							<a>예약 0</a> &nbsp;
							<a>리뷰 0</a>
						</div>
					</div>
				</div>
			</div>
		</div>