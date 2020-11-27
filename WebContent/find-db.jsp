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
   int code; 
   
   try {
      Class.forName("com.mysql.jdbc.Driver");
      String url = "jdbc:mysql://localhost:3306/teamproject?serverTimezone=UTC";
      conn = DriverManager.getConnection(url, "root", "0000");

      stmt = conn.createStatement();
      
      String sql = "select * from members where name ='"+ name + "'";
      rs = stmt.executeQuery(sql);
     if(rs != null){
         while (rs.next()) { // 이 라인에서 문제가 생기는 것 같음
    		if(birth.equals(rs.getString("birth")) && email.equals(rs.getString("email"))){
    			System.out.println(rs.getString("name"));      		
             	System.out.println(rs.getString("birth"));
          		System.out.println(rs.getString("email"));
          		System.out.println(rs.getString("code"));
			%>
			<div style="text-align: center;">
	  			<script type="text/javascript">
	  				alert("찾기");
	  				var value = prompt("코드를 입력하세요" + rs.getString("code"));
	  				if(value.equals(rs.getString("code"))){
	  					alert("아이디: " + rs.getString("id")+(" 패스워드: " + rs.getString("pw"));
		  				response.sendRedirect("./main.jsp");
	  				}else{
	  					alert("다시 시도해주세요.");
		  				response.sendRedirect("./findIdPw.jsp");
	  				}
	  			</script>
	  		</div>
			<%
            }
         }	// end of while
	  } // end of if
	  	else{
	  		%>
			<div style="text-align: center;">
	  			<script type="text/javascript">
	  				alert("정보를 다시 입력해주세요.");
	  				response.sendRedirect("./findIdPw.jsp");
	  			</script>
	  		</div>
			<%
	  	}// end of try    
   	}catch(Exception e){ out.println("DB연동오류입니다.:"+e.getMessage()); } // end of try-catch
%>
</body>
</html>