<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="utf-8"%>
<%@ page import="java.sql.*"%>
<%
	request.setCharacterEncoding("utf-8");
%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
<meta name="description" content="">
<meta name="author" content="">
<link rel="icon" href="../../favicon.ico">

<title>빠른예매</title>

<!-- Bootstrap core CSS -->
<link href="board/css/bootstrap.min.css" rel="stylesheet" media="screen">
<!-- Bootstrap theme -->
<link href="board/css/bootstrap-theme.min.css" rel="stylesheet">
<!-- CSS -->
<link rel="stylesheet" href="assets/css/reset13.css">
<link rel="stylesheet" href="assets/css/style13.css">
<link rel="stylesheet" href="assets/css/swiper.css">
<link rel="stylesheet" href="assets/css/font-awesome.css">

<!-- Custom styles for this template -->
<link href="theme.css" rel="stylesheet">
<link href="assets/css/movieChoice.css" type="text/css" rel="stylesheet">
<script src="https://code.jquery.com/jQuery-3.5.1.js"></script>
<script src="board/js/bootstrap.min.js"></script>
<script>
	$(document)
			.ready(
					function() {
						$("button")
								.on(
										'click',
										function() {
											$(this).addClass("onButton");
											$(this).siblings("button")
													.removeClass("onButton");
											if (($(".day"))&& ($(".moviebutton")
													.hasClass("onButton"))
													&& ($(".theaterbutton")
															.hasClass("onButton"))
													&& ($(".timebutton")
															.hasClass("onButton"))) {
												var movie = $(".moviebutton").html();
												var theater = $(".theaterbutton").html();
												var time = $(".timebutton").html();
												$(".modal-movie").html(movie);
												$(".modal-theater").html(theater);
												$(".modal-time").html(time);
												$('#myModal').modal('show');
											}
										});
					});
</script>
</head>

<body role="document">
	<!-- Fixed navbar -->
	<header id="header">
		<div class="container">
			<div class="row">
				<div class="header clearfix">
					<h1>
						<a href="#"> <em><img src="assets/img/teamlogo.png"
								alt="teamlogo" onclick="location.href='mega292_13.html'"></em><br>
							<strong><img src="assets/img/logo-sub.png"
								alt="LIFE THEATER"></strong>
						</a>
					</h1>

				</div>
			</div>
		</div>
	</header>
	<!-- //header -->
	<!-- Modal -->
	<div class="modal fade" id="myModal" tabindex="-1" role="dialog"
		aria-labelledby="myModalLabel">
		<div class="modal-dialog" role="document"
			style="text-align: center; width: 30%;">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
					<h4 class="modal-title" id="myModalLabel"
						style="font-size: 20px; font-weight: bold; margin-left: 7px;">예약정보확인</h4>
				</div>
				<div class="modal-body">
					<div class="modal-movie"
						style="font-size: 15px; font-weight: bold;"></div>
					<br>
					<div class="modal-theater"
						style="font-size: 15px; font-weight: bold;"></div>
					<br>
					<div class="modal-time"></div>
					<br>
				</div>
				<div class="modal-footer"
					style="display: flex; flex-direction: row; justify-content: center">
					<button type="button" class="btn btn-primary" data-dismiss="modal"
						onclick="location.href='booking.html'">예매</button>
					<button type="button" class="btn btn-default" data-dismiss="modal">취소</button>
				</div>
			</div>
		</div>
	</div>
	<section id="banner">
		<!-- Main jumbotron for a primary marketing message or call to action -->
		<div class="maindiv">
			<h1 style="padding-bottom: 15px; font-weight: bold; font-size: 30px;">
				빠른예매
				</h3>
				<div class="wrap">
					<button class="day">11/5 일</button>
					<button class="day">11/6 월</button>
					<button class="day">11/7 화</button>
					<button class="day">11/8 수</button>
					<button class="day">11/9 목</button>
					<button class="day">11/10 금</button>
					<button class="day">11/11 토</button>
					<button class="day">11/12 일</button>
				</div>
				<div class="quick-reserve-area">
					<div class="movie-choice">
						<p>영화</p>
						<div class="list-area">
							<button type="button" class="moviebutton">영화이름</button>
							<button type="button" class="moviebutton">영화이름</button>
							<button type="button" class="moviebutton">영화이름</button>
							<button type="button" class="moviebutton">영화이름</button>
							<button type="button" class="moviebutton">영화이름</button>
							<button type="button" class="moviebutton">영화이름</button>
							<button type="button" class="moviebutton">영화이름</button>

						</div>
					</div>
					<div class="theater-choice">
						<p>극장</p>
						<div class="list-area">
							<button class="theaterbutton">극장이름</button>
							<button class="theaterbutton">극장이름</button>
							<button class="theaterbutton">극장이름</button>
							<button class="theaterbutton">극장이름</button>
							<button class="theaterbutton">극장이름</button>
							<button class="theaterbutton">극장이름</button>
							<button class="theaterbutton">극장이름</button>
						</div>
					</div>
					<div class="time-choice">
						<p>시간</p>
						<div class="time-area">
							<button class="timebutton">
								<p>1:00</p>
								영화이름
							</button>
							<button class="timebutton">
								<p>2:00</p>
								영화이름 영화정보
							</button>
							<button class="timebutton">
								<p>3:00</p>
								영화정보
							</button>
						</div>
					</div>
				</div>
		</div>
	</section>
	<!-- Bootstrap core JavaScript
    ================================================== -->
	<!-- Placed at the end of the document so the pages load faster -->
	<script src="../../dist/js/bootstrap.min.js"></script>
	<script src="../../assets/js/docs.min.js"></script>
	<!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
	<script src="../../assets/js/ie10-viewport-bug-workaround.js"></script>
</body>
</html>