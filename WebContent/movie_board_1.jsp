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
		<div class="slider">
		<div class="banner_menu">
			<div class="container">
				<div class="row">
					<div class="bm_right">
						<ul>
							<%
                          	if(session.getAttribute("id") != null){
                           	%>
                                <li class="purple"><a href="./logout.jsp">로그아웃 </a></li>
                           	<%
                           	}
                            else{
                            %>
                            	<li class="purple"><a href="./login.jsp">로그인 </a></li>
                            <% 
                            } 
                            %>
							<li class="purple"><a href="#" onclick="location.href='movie_board_main.jsp'">영화 게시판</a></li>
                            <li class="purple"><a href="#" onclick="location.href='movieChoice.jsp'">영화 예매</a></li>
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
                            <li class="active" style="width:100%"><a href="#">영화 게시판 </a></li>
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
 <div>                                
	<div class="container">
		<div class="row">
	<form id="insertFrm" name="insertFrm" action="<%=request.getContextPath()%>/movie_board_1_wtdb.jsp" method="post">
    <div>글제목 : </div>
    <div><input name="boardTitle" id="boardTitle" type="text" style="width : 690px; height: 25px;"/></div>
     <div>작성자 : </div>
    <div><input name="boardUser" id="boardUser" type="text" style="width : 690px; height: 25px;"/></div>
    <div>글내용 : </div>
    <div><textarea name="boardContent" id="boardContent" rows="5" cols="50" style="width : 690px; height: 300px;"></textarea></div>
      <div>비밀번호 : </div>
    <div><input name="boardPw" id="boardPw" type="password" style="height:25px;"/></div>
    
    <div><br>
        <input type="button" value=" 글 입력 " onclick="javascript:Insert();"  style="width:90px; height: 40px; border:none; margin-top:10px; font-size: 15px; background-color: #3a0e6a; color:white;"/>&nbsp;&nbsp;&nbsp;
        <input type="reset" value=" 초기화 "  style="width:90px; height: 40px; border:none; margin-top:10px; font-size: 15px; background-color: #3a0e6a; color:white;"/>&nbsp;&nbsp;&nbsp;
        <input type="button" id="insertFrm" onclick="location.href='<%=request.getContextPath()%>/movie_board_1_list.jsp'" value=" 글 목록 "  style="width:90px; height: 40px; border:none; margin-top:10px; font-size: 15px; background-color: #3a0e6a; color:white;">
       </div>
</form>
		</div>
	</div>
           	<!-- 게시판 -->
</div>

                               	

     	                        
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
        
        function Insert()
        {
        var insertFrm = document.insertFrm;
        if( !insertFrm.boardTitle.value ){
          alert( "글제목을 적어주세요" );
          insertFrmtitle.focus();
          return;
         }
        
        if( !insertFrm.boardContent.value ){
            alert( "글내용을 적어주세요" );
            insertFrm.content.focus();
            return;
           }
        
        if(insertFrm.boardTitle.value&&insertFrm.boardContent.value){
        	insertFrm.submit();
        }        
      }
        
         
    </script>
</body>
</html>
