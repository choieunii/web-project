<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, width=device-width">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>영화관 사이트 게시판 영화1</title>
    
    <!-- CSS -->
    <link rel="stylesheet" href="<%=request.getContextPath()%>/assets/css/reset13.css">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/assets/css/style13.css">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/assets/css/swiper.css">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/assets/css/font-awesome.css">
    
    <!-- 웹 폰트 -->
    <link href="https://fonts.googleapis.com/css?family=Noto+Sans+KR:100,300,400,500,700,900&amp;subset=korean" rel="stylesheet">
    
</head>
<body>
    
    <header id="header">
        <div class="container">
            <div class="row">
                <div class="header clearfix">
                    <h1>
                        <a href="#">                        	
                            <em><img src="<%=request.getContextPath()%>/assets/img/teamlogo.png" alt="teamlogo" onclick="location.href='../main.html'"></em><br>
                            <strong><img src="<%=request.getContextPath()%>/assets/img/logo-sub.png" alt="LIFE THEATER"></strong>
                        </a>
                    </h1>
                    
                </div>
            </div>
        </div>
    </header>
    <!-- //header -->
    
    
    <section id="banner">
        <h2 class="ir_so">최신 영화 소식</h2>
        <div class="banner_menu">
            <div class="container">
                <div class="row">

                    <div class="bm_right">
                        <ul>
                            <li class="purple"><a href="#" onclick="location.href='login.jsp'">로그인 </a></li>
                            <li class="purple"><a href="#" onclick="location.href='movie_board_main.jsp'">영화 게시판</a></li>
                            <li class="purple"><a href="#"  onclick="location.href='movieChoice.jsp'">영화 예매</a></li>                                                  
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    
    
    
    <section id="movie">
        <div class="container">
            <div class="row">
                <div class="movie">
                    <h2 class="ir_so">영화 예매</h2>
                    <div class="movie_title">
                        <ul>
                            <li class="active" style="width:100%"><a href="#">영화 게시판 - 도굴</a></li>
                        </ul>
                    </div>
                    <div class="movie_chart">
                        <div class="swiper-container2">
                            <div class="chart_cont1 swiper-wrapper">
                                <div>                                
                                    <div class="poster">
                                        <figure>
                                            <img src="<%=request.getContextPath()%>/assets/img/m1.jpg" srcset="<%=request.getContextPath()%>/assets/img/poster01@2.jpg 2x"  alt="도굴">
                                        </figure>
                                        <div class="rank"><strong>1</strong></div>                                                                            
                                        
                                        <div class="mx">
                                            <span class="icon m ir_pm">MX</span>
                                            <span class="icon b ir_pm">Boutique</span>
                                        </div>
                                    </div>
                                    <div class="infor">
                                        <h3><span class="icon a15 ir_pm">12세</span> <strong>도굴<br><br></strong></h3>                                        
                                    </div>                                    
                                </div>
                                
                       	

     	                        <!-- 게시판 -->  
<center>
<%
int currentPage = 1;
if(request.getParameter("currentPage") != null) {
    currentPage = Integer.parseInt(request.getParameter("currentPage"));
}
 
int totalRowCount = 0;
 
String dbUrl = "jdbc:mysql://localhost:3306/wptest?serverTimezone=UTC&useUnicode=true&characterEncoding=euckr";
String dbUser = "root";
String dbPw = "0000";
Connection connection = null;
PreparedStatement totalStatement = null;
PreparedStatement listStatement = null;
ResultSet totalResultSet = null;
ResultSet listResultSet = null;
try {
    Class.forName("com.mysql.jdbc.Driver");
    connection = DriverManager.getConnection(dbUrl, dbUser, dbPw);
    
    String totalSql = "SELECT COUNT(*) FROM board";
    totalStatement = connection.prepareStatement(totalSql);
    totalResultSet = totalStatement.executeQuery();
    if(totalResultSet.next()) {
        totalRowCount = totalResultSet.getInt(1);
    }
%>
    전체 게시글 수 : <%=totalRowCount%><br><br>
<%    
    int pagePerRow = 10;
    String listSql = "SELECT board_no, board_title, board_user, board_date FROM board ORDER BY board_date DESC LIMIT ?, ?";
    listStatement = connection.prepareStatement(listSql);
    listStatement.setInt(1, (currentPage-1)*pagePerRow); 
    listStatement.setInt(2, pagePerRow); 
    listResultSet = listStatement.executeQuery();
%>
    <table border="1" style="background-color:white">
        <thead>
            <tr>
            	<th style="width:100px">글 번호</th>
                <th style="width:300px">글 제목</th>
                <th style="width:200px">작성자</th>
                <th style="width:150px">작성 날짜</th>
            </tr>
        </thead>
        <tbody>
<%
            while(listResultSet.next()) {
%>
<tr>
	<td><%=listResultSet.getString("board_no")%></td>
    <td>
        <a href="<%=request.getContextPath()%>/board/movie_board_1_view.jsp?boardNo=<%=listResultSet.getInt("board_no")%>">
            <%=listResultSet.getString("board_title")%>
        </a>
    </td>
    <td><%=listResultSet.getString("board_user")%></td>
    <td><%=listResultSet.getString("board_date")%></td>
</tr>

<%        
            }
%>
        </tbody>
    </table>
    <br><br>
    <input type="button" onclick="location.href='<%=request.getContextPath()%>/board/movie_board_1.jsp'" value=" 게시글 입력 ">
     
    
<%
    int lastPage = totalRowCount/pagePerRow;
    if(totalRowCount%pagePerRow != 0) {
        lastPage++;
    }
%>
    <div>
<%
        if(currentPage>1) {
%>
            <a href="<%=request.getContextPath()%>/board/movie_board_1_list.jsp?currentPage=<%=currentPage-1%>">이전</a>
<%
        }
        if(currentPage < lastPage) {
%>
 
            <a href="<%=request.getContextPath()%>/board/movie_board_1_list.jsp?currentPage=<%=currentPage+1%>">다음</a>
<%
        }
%>
    </div>
<%
} catch(Exception e) {
    e.printStackTrace();
    out.print("데이터 가져오기 에러!");
} finally {
    try {totalResultSet.close();} catch(Exception e){}
    try {listResultSet.close();} catch(Exception e){}
    try {totalStatement.close();} catch(Exception e){}
    try {listStatement.close();} catch(Exception e){}
    try {connection.close();} catch(Exception e){}
}
%>
</center>                    
  <!-- 게시판 -->       
                            </div>
                            
                        </div>
                    </div>
                </div>
                
            </div>
        </div>
    </section>
  
    
    <!-- 자바스크립트 라이브러리 -->
    <script src="assets/js/jquery.min_1.12.4.js"></script>
    <script src="assets/js/modernizr-custom.js"></script>
    <script src="assets/js/ie-checker.js"></script>
    <script src="assets/js/swiper.min.js"></script>
    <script>
    
	    function plus(obj)
	    {
	    obj.value = parseInt(obj.value) + 1;
	    }

        //영화차트 이미지 슬라이드
        var mySwiper = new Swiper('.swiper-container2', {
            slidesPerView: 4,
            spaceBetween: 24,
            keyboard: {
                enabled: true,
                onlyInViewport: false,
            },
            breakpoints: {
                600: {
                    slidesPerView: 1.4,
                    spaceBetween: 24
                },
                768: {
                    slidesPerView: 2,
                    spaceBetween: 24
                },
                960: {
                    slidesPerView: 3,
                    spaceBetween: 24
                }
            }
        });
        
    </script>
</body>
</html>
