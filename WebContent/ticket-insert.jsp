<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="utf-8"%>
<%@ page import="java.sql.*"%>
<%
	request.setCharacterEncoding("utf-8");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>예매완료</title>

<link rel="stylesheet" href="assets/css/reset13.css">
<link rel="stylesheet" href="assets/css/style13.css">
<link rel="stylesheet" href="assets/css/swiper.css">
<link rel="stylesheet" href="assets/css/font-awesome.css">
<!-- Custom styles for this template -->
<script src="https://code.jquery.com/jQuery-3.5.1.js"></script>
<script src="board/js/bootstrap.min.js"></script>
<!------ Include the above in your HEAD tag ---------->
</head>
<%
int temp = 0, cnt;
int new_id = 0;
int movieid, theaterid, timeid = 0;
String seatinfo=null, seat=null;
Connection conn = null;
Statement stmt = null;
ResultSet rs = null;
String sql_update, seat_check;

try{
	Class.forName("com.mysql.jdbc.Driver");
	String url = "jdbc:mysql://localhost:3306/web?serverTimezone=UTC";
	conn = DriverManager.getConnection(url,"root","0000");
	stmt = conn.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE,ResultSet.CONCUR_UPDATABLE);
	sql_update="select count(ticketid) as cnt, max(ticketid) as max_id from ticket";
	rs=stmt.executeQuery(sql_update);
}
catch(Exception e){
	out.println("DB 연동 오류 입니다.:" + e.getMessage());
}
if(rs!= null){
while(rs.next()){
	cnt = Integer.parseInt(rs.getString("cnt"));
	if(cnt!=0)
		new_id = Integer.parseInt(rs.getString("max_id"));
}}
new_id++;
movieid = Integer.parseInt(request.getParameter("movieid"));
theaterid = Integer.parseInt(request.getParameter("theaterid"));
timeid = Integer.parseInt(request.getParameter("timeid"));
seat = request.getParameter("seatinfo");
seatinfo = seat.substring(4,6);

sql_update = "INSERT INTO ticket (ticketid, timeid, movieid, theaterid, seatinfo) VALUES ('"+new_id+"','"+timeid+"','"+movieid+"','"+theaterid+"','"+seatinfo+"')";

try{
	stmt.executeUpdate(sql_update);
}
catch(Exception e){
	out.println("DB연동 오류입니다2:" + e.getMessage());
}
%>
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
	<section id="banner">
		<div class="maindiv" style="margin: 100px">
				<div style="display:flex; flex-direction:column; text-align:center; justify-content:center; align-content:center;">
					<h1 class="cover-heading" style="font-size:50px; font-weight:bold;">예매완료</h1>
					<p class="lead" style="font-size: 30px; font-weight:bold; margin-top:30px;">
					이용해 주셔서 감사합니다.</p>
						<a href="#" onclick="location.href='main.html'"style="font-size: 30px; font-weight:bold; margin-top:30px;">Home</a>
				</div>
		</div>
	</section>
</body>
</html>