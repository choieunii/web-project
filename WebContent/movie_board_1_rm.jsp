<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %>
<%@ page import="javax.*" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>BOARD REMOVE FORM</title>
</head>
<body>
<%
if(request.getParameter("boardNo") == null) {
    response.sendRedirect(request.getContextPath()+"/movie_board_1_list.jsp");
} else {
%>

<center>
    <form action="<%=request.getContextPath()%>/movie_board_1_rmdb.jsp" method="post">
        <input name="boardNo" value="<%=request.getParameter("boardNo")%>" type="hidden"/>
        <div>비밀번호확인 :</div>
        <div><input name="boardPw" type="password"></div><br>
        <div>
            <input type="submit" value=" 삭제 "/>
            <input type="reset" value=" 초기화 "/>
        </div>
    </form>
    </center>
<%    
}
%>
</body>
</html>
