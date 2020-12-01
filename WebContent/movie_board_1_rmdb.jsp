<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>BOARD REMOVE ACTION</title>
</head>
<body>
<%
if(request.getParameter("boardNo") == null || request.getParameter("boardPw") == null) {
    response.sendRedirect(request.getContextPath()+"/movie_board_1_list.jsp");
} else {
    int boardNo = Integer.parseInt(request.getParameter("boardNo"));
    System.out.println("boardNo :"+boardNo);
    String boardPw = request.getParameter("boardPw");
    System.out.println("boardPw :"+boardPw);
    String dbUrl = "jdbc:mysql://localhost:3306/web?serverTimezone=UTC&useUnicode=true&characterEncoding=euckr";
    String dbUser = "root";
    String dbPw = "0000";
    Connection connection = null;
    PreparedStatement statement = null;
    try {
        Class.forName("com.mysql.jdbc.Driver");
        connection = DriverManager.getConnection(dbUrl, dbUser, dbPw);
        String sql = "DELETE FROM board WHERE board_no=? AND board_pw=?";
        statement = connection.prepareStatement(sql);
        statement.setInt(1, boardNo);
        statement.setString(2, boardPw);
        if(statement.executeUpdate()==1){
            response.sendRedirect(request.getContextPath()+"/movie_board_1_list.jsp");
            sql = "alter table board auto_increment=1";
            statement = connection.prepareStatement(sql);
            statement.executeUpdate();
            sql = "set @count=0";
            statement = connection.prepareStatement(sql);
            statement.executeUpdate();
            sql = "update board set board.board_no = @count:=@count+1";
            statement = connection.prepareStatement(sql);
            statement.executeUpdate();
        } else {
        	
            response.sendRedirect(request.getContextPath()+"/movie_board_1_rm.jsp?boardNo="+boardNo);
        }
    } catch(Exception e) {
        e.printStackTrace();
        out.print("BOARD REMOVE ERROR!");
    } finally {
        try {statement.close();} catch(Exception e){}
        try {connection.close();} catch(Exception e){}
    }
}
%>
</body>
</html>
