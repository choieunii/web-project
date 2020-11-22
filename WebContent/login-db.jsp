<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<%
	request.setCharacterEncoding("utf-8");
%>
<html>
<head>
</head>
<body>
<%
		String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	String pw_rs = "";

	Connection conn = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	try {
		Class.forName("com.sql.jdbc.Driver");
		String jdbcurl = "jdbc:mysql://localhost:3306/teamproject?serverTimeZone=UTC";
		conn = DriverManager.getConnection(jdbcurl, "root", "ohj1018");
	} catch (Exception e) {
		System.out.println("DB 연동 오류입니다 : " + e.getMessage());
	}

	String sql = "select pw from members where id = ?";
	try {
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, id);
		rs = pstmt.executeQuery();
		if (rs.next()) {
			if (rs.getString(1).contentEquals(pw)) {
		out.println("<script>");
		out.println("location.href = 'main.html'");
		out.println("alert('로그인되었습니다. 환영합니다 ! ')");
		out.println("</script>");
			} else
		out.println("<script>");
			out.println("location.href = 'login.jsp'");
			out.println("alert('아이디나 비밀번호를 다시 확인해주세요 ! ')");
			out.println("</script>");
		}
	} catch (Exception e) {
		e.printStackTrace();
	}
%>
</body>
</html>
