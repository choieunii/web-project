<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@page import="java.sql.*,java.util.*"%>
<%request.setCharacterEncoding("utf-8");%>
<html>
<head>
</head>
<body>
<h4>로그인 페이지</h4>
<%
   Connection conn = null;
   Statement stmt = null;
   ResultSet rs = null;

   String id = request.getParameter("id");
   String pw = request.getParameter("pw");
   
   try {
      Class.forName("com.mysql.jdbc.Driver");
      String url = "jdbc:mysql://localhost:3306/teamproject?serverTimezone=UTC";
      conn = DriverManager.getConnection(url, "root", "0000");

      stmt = conn.createStatement();
      
      String sql = "select * from members where id = ' "+ id + "'";
      rs = stmt.executeQuery(sql);
      while(rs.next()){	// 이 라인에서 문제가 생기는 것 같음
    	  if(id == rs.getString("id") && pw == rs.getString("pw")){
			session.setAttribute("name", rs.getString("name"));
			%>
			<div style="text-align: center;">
	  			<script type="text/javascript">alert("로그인 성공");</script>
	  			<h1><%=rs.getString("name")%>님 반갑습니다.</h1><br><br>
	  			<a href="main.jsp">메인 페이지로 이동하기</a>
	  		</div>
			<%
	  	} // end of if
	  	else{
	  		%>
			<div style="text-align: center;">
	  			<script type="text/javascript">alert("로그인 실패");</script>
	  			<h1><%="아이디나 비밀번호가 일치하지 않습니다"%></h1><br><br>
	  			<a href="login.jsp">로그인 페이지로 이동하기</a>
	  		</div>
			<%
	  	}
      } // end of while      
   	}catch(Exception e){ out.println("DB연동오류입니다.:"+e.getMessage()); } // end of try-catch
%>
</body>
</html>