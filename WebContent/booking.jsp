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

<title>좌석선택</title>

<!-- Bootstrap core CSS -->
<link href="board/css/bootstrap.min.css" rel="stylesheet">
<!-- Bootstrap theme -->
<link href="board/css/bootstrap-theme.min.css" rel="stylesheet">
<!-- CSS -->
<link rel="stylesheet" href="assets/css/reset13.css">
<link rel="stylesheet" href="assets/css/style13.css">
<link rel="stylesheet" href="assets/css/swiper.css">
<link rel="stylesheet" href="assets/css/font-awesome.css">
<!-- Custom styles for this template -->
<link href="theme.css" rel="stylesheet">
<link href="assets/css/booking.css" type="text/css" rel="stylesheet">
<script src="https://code.jquery.com/jQuery-3.5.1.js"></script>
<script src="board/js/bootstrap.min.js"></script>
<script>
	$(document).ready(function() {
		$("button").on('click', function() {
			$(this).addClass("onButton");
			$(this).siblings("button").removeClass("onButton");
			var htmlStr = $(this).attr("id");
			console.log(this);
			$(".chooseseatinfo").html(htmlStr);
		});
		$(".yes").on('click', function() {
			$('#myModal').modal('show');
		});
		$(".clearbutton").on('click', function() {
			$("button").removeClass("onButton");
		});
	});
</script>
</head>

<body role="document">
	<!-- //header -->
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
						style="font-size: 20px; font-weight: bold;">예매정보</h4>
				</div>
				<div class="modal-body">
					영화이름: <br> 극장이름: <br> 시간:<br> 좌석:<br> <br>
					영화시작 10분전에 입장해주시길 바랍니다.<br>
				</div>
				<div class="modal-footer"
					style="display: flex; flex-direction: row; justify-content: center">
					<button type="button" class="btn btn-primary" data-dismiss="modal"
						onclick="location.href='mega292_13.html'">예매</button>
					<button type="button" class="btn btn-default" data-dismiss="modal">취소</button>
				</div>
			</div>
		</div>
	</div>

	<section id="banner">
		<div class="maindiv">
			<h1 style="padding-bottom: 15px; font-weight: bold; font-size: 30px;">
				빠른예매</h1>
			<div class="selectbox">
				<div class="movieinfo">
					<div style="padding: 15px 20px 0 0;">
						<span class="glyphicon glyphicon-heart"
							style="display: absolute; left: 20px; top: 15px; color: purple;"></span>
						<div class="infoone">
							<p class="innermovie">영화이름</p>
							<p class="moreinfo">영화정보</p>
						</div>
						<div class="infotwo">
							<p class="theatername">영화관이름</p>
							<p class="movieday">2020-11-07(토)</p>
							<p class="movietime">1:00 ~ 3:00</p>
							<img class="movieimg" src="img/1.jpg"></img>
						</div>
						<div class="choiceseatbox">
							<div class="seatdefault">
								<div
									style="width: 15px; height: 15px; background-color: purple; position: static"></div>
								<p class="chooseseat">선택</p>
								<div
									style="width: 15px; height: 15px; background-color: black; position: static"></div>
								<p class="chooseseat">예매완료</p>
								<div
									style="width: 15px; height: 15px; background-color: #e9ecef; position: static"></div>
								<p class="chooseseat">가능한좌석</p>
							</div>
							<div class="myseatinfo">
								<p class="moreinfo" style="text-align: center">선택좌석</p>
								<p class="chooseseatinfo" style="font-size: 20px"></p>
							</div>
						</div>
					</div>
					<div class="finishbutton">
						<a class="no">취소</a> <a class="yes">완료</a>
					</div>
				</div>
				<div class="seconddiv">
					<div class="seatclear">
						<p class="seatask">좌석을 선택해주세요</p>
						<button class="clearbutton">clear</button>
					</div>
					<div class="seatchoice">
						<h1 style="text-align: center; margin-top: 60px">
							SCREEN
							</h3>
							<div class="seatlayout">
								A
								<button class="seat" id="A1"></button>
								<button class="seat" id="A2"></button>
								<button class="seat" id="A3"></button>
								<button class="seat" id="A4"></button>
								<button class="seat" id="A5"></button>
								<button class="seat" id="A6"></button>
								<button class="seat" id="A7"></button>
								<button class="seat" id="A8"></button>
								<button class="seat" id="A9"></button>
								<br> B
								<button class="seat" id="B1"></button>
								<button class="seat" id="B2"></button>
								<button class="seat" id="B3"></button>
								<button class="seat" id="B4"></button>
								<button class="seat" id="B5"></button>
								<button class="seat" id="B6"></button>
								<button class="seat" id="B7"></button>
								<button class="seat" id="B8"></button>
								<button class="seat" id="B9"></button>
								<br> C
								<button class="seat" id="C1"></button>
								<button class="seat" id="C2"></button>
								<button class="seat" id="C3"></button>
								<button class="seat" id="C4"></button>
								<button class="seat" id="C5"></button>
								<button class="seat" id="C6"></button>
								<button class="seat" id="C7"></button>
								<button class="seat" id="C8"></button>
								<button class="seat" id="C9"></button>
								<br> D
								<button class="seat" id="D1"></button>
								<button class="seat" id="D2"></button>
								<button class="seat" id="D3"></button>
								<button class="seat" id="D4"></button>
								<button class="seat" id="D5"></button>
								<button class="seat" id="D6"></button>
								<button class="seat" id="D7"></button>
								<button class="seat" id="D8"></button>
								<button class="seat" id="D9"></button>
								<br> E
								<button class="seat" id="E1"></button>
								<button class="seat" id="E2"></button>
								<button class="seat" id="E3"></button>
								<button class="seat" id="E4"></button>
								<button class="seat" id="E5"></button>
								<button class="seat" id="E6"></button>
								<button class="seat" id="E7"></button>
								<button class="seat" id="E8"></button>
								<button class="seat" id="E9"></button>
								<br> F
								<button class="seat" id="F1"></button>
								<button class="seat" id="F2"></button>
								<button class="seat" id="F3"></button>
								<button class="seat" id="F4"></button>
								<button class="seat" id="F5"></button>
								<button class="seat" id="F6"></button>
								<button class="seat" id="F7"></button>
								<button class="seat" id="F8"></button>
								<button class="seat" id="F9"></button>
								<br>
							</div>
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
