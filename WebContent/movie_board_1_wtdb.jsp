<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title></title>
</head>
<body>
	<%
		request.setCharacterEncoding("utf-8");
	String boardPw = request.getParameter("boardPw");
	System.out.println("param boardPw:" + boardPw);
	String boardTitle = request.getParameter("boardTitle");
	System.out.println("param boardTitle:" + boardTitle);
	String boardContent = request.getParameter("boardContent");
	System.out.println("param boardContent:" + boardContent);
	String boardUser = request.getParameter("boardUser");
	System.out.println("param boardUser:" + boardUser);
	Statement stmt = null;
	ResultSet rs = null;
	int cnt, new_id = 0;
	String dbUrl = "jdbc:mysql://localhost:3306/web?serverTimezone=UTC&useUnicode=true&characterEncoding=euckr";
	String dbUser = "root";
	String dbPw = "0000";
	Connection connection = null;
	PreparedStatement statement = null;
	try {
		Class.forName("com.mysql.jdbc.Driver");
		connection = DriverManager.getConnection(dbUrl, dbUser, dbPw);
		stmt = connection.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_UPDATABLE);
		String sql_select = "SELECT count(*) as cnt, max(board_no) as max_id from board";
		rs = stmt.executeQuery(sql_select);
		if (rs != null) {
			while (rs.next()) {
		cnt = Integer.parseInt(rs.getString("cnt"));
		if (cnt != 0)
			new_id = Integer.parseInt(rs.getString("max_id"));
			}
		}
		new_id++;
		String sql = "INSERT INTO board(board_no, board_pw, board_title, board_content, board_user, board_date) values(?,?,?,?,?,now())";
		statement = connection.prepareStatement(sql);
		statement.setInt(1, new_id);
		statement.setString(2, boardPw);
		statement.setString(3, boardTitle);
		statement.setString(4, boardContent);
		statement.setString(5, boardUser);
		statement.executeUpdate();
		response.sendRedirect(request.getContextPath() + "/movie_board_1_list.jsp");
	} catch (Exception e) {
		e.printStackTrace();
		out.print("입력 예외 발생" + e.getMessage());
	} finally {
		try {
			statement.close();
		} catch (Exception e) {
		}
		try {
			connection.close();
		} catch (Exception e) {
		}
	}
	%>
</body>
</html>

