<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%request.setCharacterEncoding("utf-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<style>
#back {
	border: 1px solid grey;
	border-radius: 6px;
	padding: 10px;
	text-align: center;
	font-size: 12px;
	margin-top: 20px;
	margin-left: 40%;
	top: 100px;
}
</style>
</head>
<body>
<%
String id = request.getParameter("id");
Connection conn;
Statement stmt;
ResultSet rs;

try{
    Class.forName("com.mysql.jdbc.Driver");
    String jdbcurl = "jdbc:mysql://localhost:3306/teamproject?serverTimezone=UTC";
	conn  = DriverManager.getConnection(jdbcurl, "root", "0000");
    stmt = conn.createStatement();
	// code(int), name, birth, id, pw, email, marketing(int)
	rs = stmt.executeQuery("select id from members where id='"+id+"'");
	
	if (rs != null) {
        while (rs.next()) { 
		%>
		<center>
			<br>
			<h4>이미 사용중인 ID 입니다.</h4>
		</center>		
	<%
        break;
		}
    }// end of if
	else{
		%>
		<center>
			<br><br>
			<h4>입력하신 '<%=id%>'는 사용가능 합니다.</h4>
		</center>
		<%	
	}
}// end of try
catch(Exception e){
	System.out.println("DB 연동 오류입니다 : " + e.getMessage());
	e.printStackTrace();
}
%>
	
<button id="back" onclick="window.close()">확인</button>
</body>
</html>