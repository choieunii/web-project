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
<%
	int finish = 0, i = 0;
String finishtime = "";
String movie = request.getParameter("movie");
String theater = request.getParameter("theater");
String time = request.getParameter("time");
String getdate = request.getParameter("date");
int movieid = Integer.parseInt(request.getParameter("movieid"));
int theaterid = Integer.parseInt(request.getParameter("theaterid"));
int timeid = Integer.parseInt(request.getParameter("timeid"));
String userid = request.getParameter("userid");
System.out.print(userid + "유저아이디");
String month = getdate.substring(0, 2);
String day = getdate.substring(3, 5);
String wday = getdate.substring(5, 6);
String date = "2020-" + month + "-" + day + wday;
String img = "";
String seat = "", tmp = "";
%>
<%
	Connection conn = null;
Statement stmt = null;
Statement stmt2 = null;
ResultSet rs = null;
ResultSet rs2 = null;
String sql_img, sql_seat;

try {
	Class.forName("com.mysql.jdbc.Driver");
	String url = "jdbc:mysql://localhost:3306/web?serverTimezone=UTC";
	conn = DriverManager.getConnection(url, "root", "0000");
	stmt = conn.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_UPDATABLE);
	stmt2 = conn.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_UPDATABLE);
	sql_img = "select img from movie where movieid=" + movieid;
	sql_seat = "select seatinfo from ticket where movieid='" + movieid + "' and theaterid='" + theaterid
	+ "' and timeid='" + timeid + "'";
	rs = stmt.executeQuery(sql_img);
	rs2 = stmt2.executeQuery(sql_seat);
} catch (Exception e) {
	out.println("DB 연동 오류 입니다.:" + e.getMessage());
}

while (rs.next()) {
	img = rs.getString("img");
}
if (rs2 != null) {
	while (rs2.next()) {
		tmp = rs2.getString("seatinfo");
		seat = seat + "," + tmp;
		System.out.println(seat);
	}
}
%>
<script>
	$(document).ready(function() {
		var seat = "<%=seat%>";
		var change = seat.split(",");
		console.log(change[2]);
		change.map(function(index){
			if(index!=null){
			$('#seat' + index).addClass("noButton");
			console.log(index);
			}
		})
		$("button").on('click', function() {
			$(this).addClass("onButton");
			$(this).siblings("button").removeClass("onButton");
			var htmlStr = $(this).attr("id");
			$(".chooseseatinfo").html(htmlStr);
		});
		$(".yes").on('click', function() {
			var seat = $(".seat.onButton").attr("id");
			$(".modal-seat-info").html(seat);
			if(seat==undefined){
				alert("좌석을 선택해주세요");
			}
			else{
			$('#myModal').modal('show');
			}
		});
		$(".clearbutton").on('click', function() {
			$("button").removeClass("onButton");
		});
	});
	function submitaction() {
		var seatinfo = $(".modal-seat-info").html();
		$("#ticketseat").val(seatinfo);
		$("#userid").val("<%=userid%>");
		$("#ticket-insert").submit();
	}
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
								alt="teamlogo" onclick="location.href='main.jsp'"></em><br>
							<strong><img src="assets/img/logo-sub.png"
								alt="LIFE THEATER"></strong>
						</a>
					</h1>

				</div>
			</div>
		</div>
	</header>
	<!-- Modal -->
	<form action="ticket-insert.jsp" method="post" name="ticket-insert"
		id="ticket-insert">
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
						영화이름:
						<%=movie%>
						<br> 극장이름:
						<%=theater%>
						<br> <br>
						<%=time%><br>
						<div class="modal-seat-info"></div>
						<br> <input id="ticketmovie" name="movieid" type="hidden"
							value="<%=movieid%>" /> <input id="tickettheater"
							name="theaterid" type="hidden" value="<%=theaterid%>" /> <input
							id="tickettime" name="timeid" type="hidden" value="<%=timeid%>" />
						<input id="ticketseat" name="seatinfo" type="hidden" /> <input
							id="userid" name="userid" type="hidden" /> 영화시작 10분전에 입장해주시길
						바랍니다.<br>
					</div>
					<div class="modal-footer"
						style="display: flex; flex-direction: row; justify-content: center">
						<button type="submit" class="btn btn-primary" data-dismiss="modal"
							onclick="submitaction()">예매</button>
						<button type="button" class="btn btn-default" data-dismiss="modal">취소</button>
					</div>
				</div>
			</div>
		</div>
	</form>

	<section id="banner">
		<div class="maindiv">
			<div class="selectbox">
				<div class="flexcol">
					<div
						style="margin-left: 10px; padding-bottom: 15px; font-weight: bold; font-size: 30px;">
						빠른예매</div>
					<div class="seconddiv">
						<div class="seatclear">
							<p class="seatask">좌석을 선택해주세요</p>
							<button class="clearbutton">clear</button>
						</div>
						<div class="seatchoice">
							<h1 style="text-align: center; margin-top: 60px">SCREEN</h1>
							<div class="seatlayout">
								A
								<button class="seat" id="seatA1"></button>
								<button class="seat" id="seatA2"></button>
								<button class="seat" id="seatA3"></button>
								<button class="seat" id="seatA4"></button>
								<button class="seat" id="seatA5"></button>
								<button class="seat" id="seatA6"></button>
								<button class="seat" id="seatA7"></button>
								<button class="seat" id="seatA8"></button>
								<button class="seat" id="seatA9"></button>
								<br> B
								<button class="seat" id="seatB1"></button>
								<button class="seat" id="seatB2"></button>
								<button class="seat" id="seatB3"></button>
								<button class="seat" id="seatB4"></button>
								<button class="seat" id="seatB5"></button>
								<button class="seat" id="seatB6"></button>
								<button class="seat" id="seatB7"></button>
								<button class="seat" id="seatB8"></button>
								<button class="seat" id="seatB9"></button>
								<br> C
								<button class="seat" id="seatC1"></button>
								<button class="seat" id="seatC2"></button>
								<button class="seat" id="seatC3"></button>
								<button class="seat" id="seatC4"></button>
								<button class="seat" id="seatC5"></button>
								<button class="seat" id="seatC6"></button>
								<button class="seat" id="seatC7"></button>
								<button class="seat" id="seatC8"></button>
								<button class="seat" id="seatC9"></button>
								<br> D
								<button class="seat" id="seatD1"></button>
								<button class="seat" id="seatD2"></button>
								<button class="seat" id="seatD3"></button>
								<button class="seat" id="seatD4"></button>
								<button class="seat" id="seatD5"></button>
								<button class="seat" id="seatD6"></button>
								<button class="seat" id="seatD7"></button>
								<button class="seat" id="seatD8"></button>
								<button class="seat" id="seatD9"></button>
								<br> E
								<button class="seat" id="seatE1"></button>
								<button class="seat" id="seatE2"></button>
								<button class="seat" id="seatE3"></button>
								<button class="seat" id="seatE4"></button>
								<button class="seat" id="seatE5"></button>
								<button class="seat" id="seatE6"></button>
								<button class="seat" id="seatE7"></button>
								<button class="seat" id="seatE8"></button>
								<button class="seat" id="seatE9"></button>
								<br> F
								<button class="seat" id="seatF1"></button>
								<button class="seat" id="seatF2"></button>
								<button class="seat" id="seatF3"></button>
								<button class="seat" id="seatF4"></button>
								<button class="seat" id="seatF5"></button>
								<button class="seat" id="seatF6"></button>
								<button class="seat" id="seatF7"></button>
								<button class="seat" id="seatF8"></button>
								<button class="seat" id="seatF9"></button>
								<br>
							</div>
						</div>
					</div>
				</div>
				<div class="movieinfo">
					<div style="padding: 15px 20px 0 0;">
						<div class="flexrow">
							<div class="movietext">
								<span class="glyphicon glyphicon-heart"
									style="display: absolute; right: 54px; top: 23px; color: purple;"></span>
								<div class="infoone">
									<div class="innermovie"><%=movie%></div>
									<p class="moreinfo">2D 상영관 B145</p>
								</div>
								<div class="infotwo">
									<br> <span class="theatername"><%=theater%></span><br>
									<br> <span class="movieday"><%=date%></span><br>
									<div class="timelayout">
										<span class="movietime"><%=time%></span><br>
									</div>
								</div>
							</div>
							<div class="movieimgbox">
								<img class="movieimg" src="assets/img/<%=img%>.jpg"></img>
							</div>
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
								<p class="chooseseatinfo"
									style="font-size: 20px; margin-left: 20px;"></p>
							</div>
						</div>
					</div>
					<div class="finishbutton">
						<a class="no">취소</a> <a class="yes">완료</a>
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
