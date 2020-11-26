<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@page import="java.sql.*,java.util.*"%>
<%
   request.setCharacterEncoding("utf-8");
%>
<html>
<head>
<script src="https://code.jquery.com/jQuery-3.5.1.js"></script>
</head>
<body>
<%
   Connection conn = null;
   Statement stmt = null;
   ResultSet rs = null;

   String id = request.getParameter("id");
   String pw = request.getParameter("pw");
   
   String redirectUrl="";
   
   try {
      Class.forName("com.mysql.jdbc.Driver");
      String url = "jdbc:mysql://localhost:3306/teamproject?serverTimezone=UTC";
      conn = DriverManager.getConnection(url, "root", "0000");

      stmt = conn.createStatement();
      
      String sql = "select * from members where id = ' "+ id + "'";
      rs = stmt.executeQuery(sql);
      
      while(rs.next()){
	  if(id == rs.getString("id") && pw == rs.getString("pw")){
		  session.setAttribute("id", id);%>
			<script>
		  		alert(rs.getString("name")+"님 환영합니다!");
			</script><%
			redirectUrl = "main.html";
		}else{%>
			<script>
				alert("아이디와 비밀번호를 확인해주세요!");
			</script><%
			redirectUrl = "login.jsp";
			}
      }
      response.sendRedirect(redirectUrl);
	}
	catch(Exception e){
		out.println("DB연동오류입니다.:"+e.getMessage());
	}
%>
</body>
</html>