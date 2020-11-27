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
<meta name="description" content="">
<meta name="author" content="">
<link rel="icon" href="../../favicon.ico">
<title>빠른예매</title>
<!-- Bootstrap core CSS -->
<link href="board/css/bootstrap.min.css" rel="stylesheet" media="screen">
<!-- Bootstrap theme -->
<!-- 부트스트랩을 쓰고싶었는데 어쩌다보니 css 디자인을 다해버린...ㅠㅠ -->
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
											if (($(".day").hasClass("onButton"))
													&& ($(".moviebutton")
															.hasClass("onButton"))
													&& ($(".theaterbutton")
															.hasClass("onButton"))
													&& ($(".timebutton")
															.hasClass("onButton"))) {
												var date = $(".day.onButton").html();
											    var movie = $(".moviebutton.onButton").html();
												var theater = $(".theaterbutton.onButton").html();
												var time = $(".timebutton.onButton").html();
												$(".modal-date").html(date);
												$(".modal-movie").html(movie);
												$(".modal-theater").html(theater);
												$(".modal-time").html(time);
												$('#myModal').modal('show');
											}
										});
					});
	function submitaction(){
		var movie = $(".modal-movie").html();
		var theater = $(".modal-theater").html();
		var time = $(".modal-time").html();
		var date = $(".modal-date").html();
		$("#inputdate").val(date);
		$("#inputmovie").val(movie);
		$("#inputtheater").val(theater);
		$("#inputtime").val(time);
		var movieid= $(".moviebutton.onButton").attr("id");
		var theaterid= $(".theaterbutton.onButton").attr("id");
		var timeid= $(".timebutton.onButton").attr("id");
		$("#inputid").val(movieid);
		$("#inputid2").val(theaterid);
		$("#inputid3").val(timeid);
		$("#ticket").submit();
	}
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
								alt="teamlogo" onclick="location.href='main.html'"></em><br>
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
	<form action ="ticket.jsp" method="post" name="ticket" id="ticket">
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
				<div class="modal-date"
						style="font-size: 15px; font-weight: bold;"></div>
					<br>
					<div class="modal-movie"
						style="font-size: 15px; font-weight: bold;"></div>
					<br>
					<div class="modal-theater"
						style="font-size: 15px; font-weight: bold;"></div>
					<br>
					<div class="modal-time"></div>
					<br>
					<input id="inputdate" name="date" type="hidden"/>
					<input id="inputmovie" name="movie" type="hidden"/>
					<input id="inputtheater" name="theater" type="hidden"/>
					<input id="inputtime" name="time" type="hidden"/> 
					<input id="inputid" name="movieid" type="hidden"/>
					<input id="inputid2" name="theaterid" type="hidden"/>
					<input id="inputid3" name="timeid" type="hidden"/>
					선택하신 정보가 맞습니까?
				</div>
				<div class="modal-footer"
					style="display: flex; flex-direction: row; justify-content: center">
					<input type="submit" class="btn btn-primary" data-dismiss="modal" onclick="submitaction()" value="예매"></button>
					<button type="button" class="btn btn-default" data-dismiss="modal">취소</button>
				</div>
			</div>
		</div>
	</div>
	</form>
	<section id="banner">
		<%
			int id, ref;
		int m_rownum, t_rownum, ti_rownum = 0;
		String moviename;
		String theatername;
		String time;
		String i=null, j=null, k = null;
		Connection conn = null;
		Statement stmt1 = null;
		Statement stmt2 = null;
		Statement stmt3 = null;
		String sql_movie = null;
		String sql_theater = null;
		String sql_time = null;
		ResultSet movie_rs = null;
		ResultSet theater_rs = null;
		ResultSet time_rs = null;

		try {
			Class.forName("com.mysql.jdbc.Driver");
			String url = "jdbc:mysql://localhost:3306/web?serverTimezone=UTC";
			conn = DriverManager.getConnection(url, "root", "0000");
			stmt1 = conn.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_UPDATABLE);
			stmt2 = conn.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_UPDATABLE);
			stmt3 = conn.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_UPDATABLE);
			sql_movie = "select * from movie";
			sql_theater = "select * from theater";
			sql_time = "select * from time";
			movie_rs = stmt1.executeQuery(sql_movie);
			theater_rs = stmt2.executeQuery(sql_theater);
			time_rs = stmt3.executeQuery(sql_time);
		} catch (Exception e) {
			out.println("DB연동 오류입니다." + e.getMessage());
		}
		movie_rs.last();
		m_rownum = movie_rs.getRow();
		theater_rs.last();
		t_rownum = theater_rs.getRow();
		time_rs.last();
		ti_rownum = time_rs.getRow();
		movie_rs.beforeFirst();
		theater_rs.beforeFirst();
		time_rs.beforeFirst();
		%>
		<div class="maindiv">
			<h1 style="padding-bottom: 15px; font-weight: bold; font-size: 30px;">
				빠른예매
				</h3>
				<div class="wrap">
					<button class="day">12/1 화</button>
					<button class="day">12/2 수</button>
					<button class="day">12/3 목</button>
					<button class="day">12/4 금</button>
					<button class="day">12/5 토</button>
					<button class="day">12/6 일</button>
					<button class="day">12/7 월</button>
					<button class="day">12/8 화</button>
				</div>
				<div class="quick-reserve-area">
					<div class="movie-choice">
						<p>영화</p>
						<div class="list-area">
							<%
								while (movie_rs.next()) {
								moviename = movie_rs.getString("moviename");
								i=movie_rs.getString("movieid");
							%>
							<button type="button" class="moviebutton" id="<%=i%>"><%=moviename%></button>
							<%
							}
							%>
						</div>
					</div>
					<div class="theater-choice">
						<p>극장</p>
						<div class="list-area">
							<%
								while (theater_rs.next()) {
								theatername = theater_rs.getString("theatername");
								j=theater_rs.getString("theaterid");
							%>
							<button type="button" class="theaterbutton" id="<%=j %>"><%=theatername%></button>
							<%
							}
							%>
						</div>
					</div>
					<div class="time-choice">
						<p>시간</p>
						<div class="time-area">
							<div class="list-area">
								<%
									String DBstart;
								String DBfinish;
								while (time_rs.next()) {
									DBstart = time_rs.getString("time");
									DBfinish = time_rs.getString("finishtime");
									time = DBstart.substring(0, 5)+"~"+ DBfinish.substring(0,5);
									k=time_rs.getString("timeid");
								%>
								<button type="button" class="timebutton" id="<%=k%>">
									<p><%=time%></p>
								</button>
								<%
								}
								%>
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