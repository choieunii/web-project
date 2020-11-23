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
PreparedStatement pstmt = null;
ResultSet rs = null;
try{
	Class.forName("com.sql.jdbc.Driver");
	String jdbcurl = "jdbc:mysql://localhost:3306/teamproject?serverTimeZone=UTC";
	conn  = DriverManager.getConnection(jdbcurl, "root", "ohj1018");
	String sql = "insert into members(name, birth, id, pw, email) values(?, ?, ?, ?, ?)";
	pstmt = conn.prepareStatement("sql");

	pstmt.setString(1, name);
	pstmt.setString(2, birth);
	pstmt.setString(3, id);
	pstmt.setString(4, pw);
	pstmt.setString(5, email);

}
catch(Exception e){
	System.out.println("DB 연동 오류입니다 : " + e.getMessage());
}

pstmt.close();
conn.close();

response.sendRedirect("movie_board_main.html");
%>
</body>
</html>