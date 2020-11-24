<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%request.setCharacterEncoding("utf-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
</head>
<body>
<%
	String name = request.getParameter("name");
	String birth = request.getParameter("birth");
	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	String email = request.getParameter("email");

	Connection conn = null;
	Statement stmt = null;
	ResultSet rs = null;
	try{
		Class.forName("com.sql.jdbc.Driver");
		String jdbcurl = "jdbc:mysql://localhost:3306/teamproject?serverTimeZone=UTC";
		conn  = DriverManager.getConnection(jdbcurl, "root", "0000");
		rs = stmt.executeQuery("insert into members values('"+name+"','"+birth+"','"+id +"','"+pw+"','"+email+"')");
		
		response.sendRedirect("movie_board_main.html");
	}
	catch(Exception e){
		System.out.println("DB 연동 오류입니다 : " + e.getMessage());
		e.printStackTrace();
	}
%>
</body>
</html>