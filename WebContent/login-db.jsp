<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="java.sql.*,java.util.*"%>
<%
	request.setCharacterEncoding("utf-8");
%>
<html>
<head>
</head>
<body>
<%
	Connection conn = null;
	Statement stmt = null;
	ResultSet rs = null;

	String id = request.getParameter("id");
	String pw = request.getParameter("pw");

	/* session.putValue("id", id);*/
	try{
	Class.forName("com.sql.jdbc.Driver");
	String jdbcurl = "jdbc:mysql://localhost:3306/teamproject?serverTimeZone=UTC";
	conn = DriverManager.getConnection(jdbcurl, "root", "ohj1018");

	stmt = conn.createStatement();
	rs = stmt.executeQuery("select * from users where userid='" + id + "' and password='" + pw + "'");
	}
	catch(Exception e){
		out.println("오류: "+ e.getMessage());
	}
	
	try {
		rs.next();
		if (rs.getString("pw").equals(pw) && rs.getString("id").equals(id)) {
			response.sendRedirect("movie_board_main.html");
		} else {
			request.setAttribute("errMsg", "아이디 또는 비밀번호가 일치않습니다.");
			RequestDispatcher rd = request.getRequestDispatcher("login.html");
			rd.forward(request, response);
		}
	} catch (Exception e) {
		e.printStackTrace();
	}
%>

</body>
</html>
