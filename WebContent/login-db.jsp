<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@page import="java.sql.*,java.util.*"%>
<%
   request.setCharacterEncoding("utf-8");
%>
<html>
<head>
<style>
body {
	background-color: #f8f9fa;
	margin: 100px 170px 100px 170px;
	position: relative;
}
</style>
</head>
<body>
	<header id="header" align="center">
					<h1>
					<a href="#"> 
                    	<em>
                     	<img src="assets/img/teamlogo_made.png" alt="teamlogo" width="200px">
                     	<hr>
                     	</em>
                  	</a>
					</h1>
	</header>
	<br><br>
   <%
   Connection conn = null;
   Statement stmt = null;
   ResultSet rs = null;

   String id = request.getParameter("id");
   String pw = request.getParameter("pw");
   
   String save = request.getParameter("save");
   
   try {
      Class.forName("com.mysql.jdbc.Driver");
      String url = "jdbc:mysql://localhost:3306/web?serverTimezone=UTC";
      conn = DriverManager.getConnection(url, "root", "0000");

      stmt = conn.createStatement();

      String sql = "select * from members where id = '" + id + "'";
      
      rs = stmt.executeQuery(sql);
      if (rs != null) {
         while (rs.next()) {
      if (pw.equals(rs.getString("pw"))) {
         session.setAttribute("id", rs.getString("id"));
         session.setMaxInactiveInterval(60*60);	// 세션 유지시간 1시간;
         
         if(save != null){         	
         	response.addCookie(new Cookie("ID", id));
         	response.addCookie(new Cookie("PW", pw));
         }
   %>
   <div style="text-align: center;">
      <script type="text/javascript">
         alert("로그인 성공");
      </script>
      <h1><%=rs.getString("name")%>님 반갑습니다.
      </h1>
      <br> <br> <a href="main.jsp">메인 페이지로 이동하기</a>
   </div>
   <%
      break;
   } else {
   %>
   <div style="text-align: center;">
      <script type="text/javascript">
         alert("로그인 실패");
      </script>
      <h1>아이디나 비밀번호가 일치하지 않습니다</h1>
      <br> <br> <a href="login.jsp">로그인 페이지로 이동하기</a>
   </div>
   <%
      }
   } // end of While
   %>
   <%
      }
      else{
    	  %>
    	  <div style="text-align: center;">
      <script type="text/javascript">
         alert("로그인 실패");
      </script>
      <h1>아이디가 존재하지 않습니다.</h1>
      <br> <br> <a href="login.jsp">로그인 페이지로 이동하기</a>
   </div>
   <% 
      }
   } catch (Exception e) {
   out.println("DB연동오류입니다.:" + e.getMessage());
   } // end of try-catch
   %>
</body>
</html>