<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ page import="java.util.*" %>
<%request.setCharacterEncoding("utf-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
</head>
<body>
<%
	int code = (int)(10.0 * Math.random());
	String name = request.getParameter("name");
	String birth = request.getParameter("birth");
	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	String email = request.getParameter("email");
	int marketing = 0;
	
	String checkBoxes[] = request.getParameterValues("agrees");
	if (checkBoxes != null){	
		for (int i = 0; i < checkBoxes.length; i++){			
			if(checkBoxes[i].equals("marketing")){
				marketing = 1;
			}
		}
	}
	
	Connection conn = null;
	Statement stmt = null;
	ResultSet rs = null;
	try{
	    Class.forName("com.mysql.jdbc.Driver");
	    String jdbcurl = "jdbc:mysql://localhost:3306/web?serverTimezone=UTC";
		conn  = DriverManager.getConnection(jdbcurl, "root", "0000");
	    stmt = conn.createStatement();
		// code(int), name, birth, id, pw, email, marketing(int)
		stmt.executeUpdate("insert into members values("+ code +",'"+name+"','"+birth+"','"
								+id +"','"+pw+"','"+email+"',"+ marketing +")");
		
		response.sendRedirect("main.jsp");
	}
	catch(Exception e){
		System.out.println("DB 연동 오류입니다 : " + e.getMessage());
		e.printStackTrace();
	}
%>
</body>
</html>