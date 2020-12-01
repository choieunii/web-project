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
						<a href="#"> <em><img src="assets/img/teamlogo_made.png"
								alt="teamlogo" onclick="location.href='main.jsp'"></em><br>
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
<div style="width:700px; font-size:12pt;"><center>
<%
if(request.getParameter("boardNo") == null) {
    response.sendRedirect(request.getContextPath()+"/movie_board_1_list.jsp");
} else {
    int boardNo = Integer.parseInt(request.getParameter("boardNo"));
    System.out.println("boardNo :"+boardNo);
    String dbUrl = "jdbc:mysql://localhost:3306/web?serverTimezone=UTC&useUnicode=true&characterEncoding=euckr";
    String dbUser = "root";
    String dbPw = "0000";
    Connection connection = null;
    PreparedStatement statement = null;
    ResultSet resultSet = null;
    try {
        Class.forName("com.mysql.jdbc.Driver");
        connection = DriverManager.getConnection(dbUrl, dbUser, dbPw);
        String sql = "SELECT board_title, board_content, board_user, board_date FROM board WHERE board_no=?";
        statement = connection.prepareStatement(sql);
        statement.setInt(1, boardNo);
        resultSet = statement.executeQuery();
        if(resultSet.next()) {
%>
            <div style="background-color:white">글번호 :</div>
            <div style="background-color:lightgray"><%=boardNo%></div><br>
            <div style="background-color:white">글 제목 :</div>
            <div style="background-color:lightgray"><%=resultSet.getString("board_title")%></div><br>
            <div style="background-color:white">글 내용 :</div>
            <div style="background-color:lightgray"><%=resultSet.getString("board_content")%></div><br>
            <div style="background-color:white">작성자 :</div>
            <div style="background-color:lightgray"><%=resultSet.getString("board_user")%></div><br>
            <div style="background-color:white">작성 날짜 :</div>
            <div style="background-color:lightgray"><%=resultSet.getString("board_date")%></div><br>
<div>
    <a href="<%=request.getContextPath()%>/movie_board_1_md.jsp?boardNo=<%=boardNo%>">수정</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <a href="<%=request.getContextPath()%>/movie_board_1_rm.jsp?boardNo=<%=boardNo%>">삭제</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <a href="<%=request.getContextPath()%>/movie_board_1_list.jsp?boardNo=<%=boardNo%>">목록</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</div>

<%
        }
    } catch(Exception e) {
        e.printStackTrace();
        out.println("BOARD VIEW ERROR!");
    } finally {
        try {resultSet.close();} catch(Exception e){}
        try {statement.close();} catch(Exception e){}
        try {connection.close();} catch(Exception e){}
    }
}
%>
</center>   </div>                 
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
