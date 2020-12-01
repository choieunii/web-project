<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@page import="java.sql.*,java.util.*"%>
<%request.setCharacterEncoding("utf-8");%>
<html>
<head>
</head>
<body>
<%
   Connection conn = null;
   Statement stmt = null;
   ResultSet rs = null;

   String name = request.getParameter("name");
   String birth = request.getParameter("birth");
   String email = request.getParameter("email");
   
   try {
      Class.forName("com.mysql.jdbc.Driver");
      String url = "jdbc:mysql://localhost:3306/web?serverTimezone=UTC";
      conn = DriverManager.getConnection(url, "root", "0000");

      stmt = conn.createStatement();
      
      String sql = "select * from members where name ='"+ name + "'";
      rs = stmt.executeQuery(sql);
      
      if (rs.next()) {
    	  System.out.println("not null");
    	  if(birth.equals(rs.getString("birth")) && email.equals(rs.getString("email"))){	  
   %>
   			<script type="text/javascript">
   				alert("아이디: <%=rs.getString("id")%> \n패스워드: <%=rs.getString("pw")%>");
				location.href="./main.jsp";
   			</script>
   <%
      		} else {
   %>
   			<script type="text/javascript">
   				alert("입력하신 정보를 다시 확인해주세요.");
   				history.go(-1);
   			</script>
   <%
      		}
      }
      else{
    %>
  			<script type="text/javascript">
  				alert("가입된 아이디(비밀번호)가 없습니다.");
				location.href="./main.jsp";
  			</script>
    <%
      }
   } catch (Exception e) {
   		out.println("DB 연동 오류입니다 : " + e.getMessage());
   }
   %>
</body>
</html>