<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ page import="java.text.*" %>
<%request.setCharacterEncoding("utf-8"); %>
<html>
<head>
</head>
<body>
<%
String id, pw;

Connection conn = null;
Statement stmt = null; 
ResultSet rs = null;

String sql = null;

id = request.getParameter("id");
pw = request.getParameter("pw");

try{
	Class.forName("com.sql.jdbc.Driver");
	String jdbcurl = "jdbc:mysql://localhost:3306/teamproject?serverTimeZone=UTC";
	conn = DriverManager.getConnection(jdbcurl, "root", "ohj1018");
	stmt = conn.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_UPDATABLE);
	rs = stmt.executeQuery("select * from members");
}
catch(Exception e){
	out.println("DB 연동 오류입니다 : " + e.getMessage());
}

while(rs.next()){
	if(id.equals(rs.getString("id")) && pw.equals(rs.getString("pw"))){
		// 로그인 성공
		// 로그인화면 창 닫히기
		// 로그인 완료 후에는 메인에 "000"님 안녕하세요
		// 로그인 상자 -> 로그아웃 상자
	}
}
%>

</body>
</html>
