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
                    <div class="movie_chart" >
                        
                            
<center>
                                       
<%
if(Integer.parseInt(request.getParameter("mv1"))==0&&Integer.parseInt(request.getParameter("mv2"))==0&&Integer.parseInt(request.getParameter("mv3"))==0&&Integer.parseInt(request.getParameter("mv4"))==0){
	response.sendRedirect(request.getContextPath()+"/movie_board_main.jsp");
}else{
	request.setCharacterEncoding("utf-8");
	int mv1 = Integer.parseInt(request.getParameter("mv1"));
	int mv2 = Integer.parseInt(request.getParameter("mv2"));
	int mv3 = Integer.parseInt(request.getParameter("mv3"));
	int mv4 = Integer.parseInt(request.getParameter("mv4"));
	
    if(mv1>mv2&&mv1>mv3&&mv1>mv4){
    	%><img style="width:400px" src='<%=request.getContextPath()%>/assets/img/m1.jpg'><br>
    	<b><font style="color:purple; font-size:30pt;">도굴 1위
    	<%out.print(request.getParameter("mv1")+"개");%></font></b><br><br><%
    	out.println("삼진그룹 영어 토익반 : "+request.getParameter("mv2")+"개<br>"); 
    	out.println("담보 : "+request.getParameter("mv3")+"개<br>"); 
    	out.println("노트북  : "+request.getParameter("mv4")+"개<br>"); 
    	
    }else if(mv2>mv1&&mv2>mv3&&mv2>mv4){
    	%><img style="width:400px" src='<%=request.getContextPath()%>/assets/img/m2.jpg'><br>
    	<b><font style="color:purple; font-size:30pt;">삼진그룹 영어 토익반 1위
    	<%out.print(request.getParameter("mv2")+"개");%></font></b><br><br><%
    	out.println("도굴 : "+request.getParameter("mv1")+"개<br>"); 
    	out.println("담보 : "+request.getParameter("mv3")+"개<br>"); 
    	out.println("노트북  : "+request.getParameter("mv4")+"개<br>"); 
    	
    }else if(mv3>mv1&&mv3>mv2&&mv3>mv4){
    	%><img style="width:400px" src='<%=request.getContextPath()%>/assets/img/m3.jpg'><br>
    	<b><font style="color:purple; font-size:30pt;">담보 1위
    	<%out.print(request.getParameter("mv3")+"개");%></font></b><br><br><%
    	out.println("도굴 : "+request.getParameter("mv1")+"개<br>"); 
    	out.println("삼진그룹 영어 토익반 : "+request.getParameter("mv2")+"개<br>"); 
    	out.println("노트북  : "+request.getParameter("mv4")+"개<br>"); 
    	
    }else if(mv4>mv1&&mv4>mv2&&mv4>mv3){
    	%><img style="width:400px" src='<%=request.getContextPath()%>/assets/img/m4.jpg'><br>
    	<b><font style="color:purple; font-size:30pt;">노트북 1위
    	<%out.print(request.getParameter("mv4")+"개");%></font></b><br><br><%
    	out.println("도굴 : "+request.getParameter("mv1")+"개<br>"); 
    	out.println("삼진그룹 영어 토익반 : "+request.getParameter("mv2")+"개<br>"); 
    	out.println("담보  : "+request.getParameter("mv3")+"개<br>"); 
    }
    
    String dbUrl = "jdbc:mysql://localhost:3306/web?serverTimezone=UTC&useUnicode=true&characterEncoding=euckr";
    String dbUser = "root";
    String dbPw = "0000";
    Connection connection = null;
    PreparedStatement statement = null;
    try {
        Class.forName("com.mysql.jdbc.Driver");
        connection = DriverManager.getConnection(dbUrl, dbUser, dbPw);
        String selectSql = "INSERT INTO heart(mv1, mv2, mv3, mv4) values(?,?,?,?)";
        statement = connection.prepareStatement(selectSql);
        statement.setInt(1, mv1);
        statement.setInt(2, mv2);
        statement.setInt(3, mv3);
        statement.setInt(4, mv4);
        statement.executeUpdate();  

   
    } catch(Exception e) {
        e.printStackTrace();
        out.print("BOARD MODIFY ERROR!" + e.getMessage());
    } finally {
        try {statement.close();} catch(Exception e){}
        try {connection.close();} catch(Exception e){}
        
    }
}

%>
<br>
<div style="width:130px; height: 40px; border:none; margin-top:10px; font-size: 15px; background-color: #3a0e6a; line-height: 40px;">
    <a href="<%=request.getContextPath()%>/movie_board_main.jsp" style="color:white;">다시하기</a>
    </div>
</center>
</div>
</div></div></div></section></section>
</body>
</html>
