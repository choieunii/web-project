<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, width=device-width">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>영화관 사이트 게시판 메인</title>
    
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
                            <li class="active" style="width:100%"><a href="#">영화 게시판</a></li>
                        </ul>
                    </div>
                    <form action="<%=request.getContextPath()%>/movie_board_main_ht.jsp" method="post">                   
                     
                    <div class="movie_chart">
                        <div class="swiper-container2">
                            <div class="chart_cont1 swiper-wrapper">
                               	<div>
                               	
                                    <div class="poster">
                                        <figure>
                                           <img src="<%=request.getContextPath()%>/assets/img/m1.jpg" srcset="<%=request.getContextPath()%>/assets/img/poster01@2.jpg 2x"  alt="도굴" style="width:300px">
                                        </figure>
                                        <div class="rank" ><strong>1</strong></div>                                                                            
                                        
                                        &emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;
                                        <input type="button" style="color:red" value="♥" onclick="javascript:this.form.mv1.value++;test1(this.form.mv1.value);">
                                        <input type=text id="mv1" name="mv1" value=0 style="width:30px">
										                                     
                                        <div class="rank"><strong>1</strong></div>
                                        <!-- rank2 <div class="rank1"><strong>1</strong></div>-->
                                        <div class="mx">
                                            <span class="icon m ir_pm">MX</span>
                                            <span class="icon b ir_pm">Boutique</span>
                                        </div>
                                    </div>
                                    <div class="infor">
                                        <h3><span class="icon a15 ir_pm">12세</span> <strong>도굴<br><br></strong></h3>
                                        <div class="infor_btn">
                                            <a href="movie_board_1.jsp">상세보기</a>
                                            <a href="movieChoice.jsp">예매하기</a>
                                        </div>
                                    </div>
                                   </div> 
                                	<div>
                                    <div class="poster">
                                        <figure>
                                            <img src="<%=request.getContextPath()%>/assets/img/m2.jpg" srcset="<%=request.getContextPath()%>/assets/img/poster02@2.jpg 2x"  alt="삼진" style="width:300px">
                                        </figure>
                                        <div class="rank"><strong>2</strong></div>
                                       
                                        &emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;
                                        <input type="button" style="color:red" value="♥" onclick="javascript:this.form.mv2.value++;test2(this.form.mv2.value);">
                                        <input type=text id="mv2" name="mv2" value=0 style="width:30px">
										                                    
                                        <div class="rank"><strong>2</strong></div>
                                        <div class="mx">
                                            <span class="icon m ir_pm">MX</span>
                                            <span class="icon b ir_pm">Boutique</span>
                                        </div>
                                    </div>
                                    <div class="infor">
                                        <h3><span class="icon a15 ir_pm">12세</span> <strong>삼진그룹 영어 토익반</strong></h3>
                                        <div class="infor_btn">
                                            <a href="movie_board_1.jsp">상세보기</a>
                                            <a href="movieChoice.jsp">예매하기</a>
                                        </div>
                                    </div>
                               	</div>
                                
                                <div>
                                    <div class="poster">
                                        <figure>
                                            <img src="<%=request.getContextPath()%>/assets/img/m3.jpg" srcset="<%=request.getContextPath()%>/assets/img/poster03@2.jpg 2x"  alt="담보" style="width:300px">
                                        </figure>
                                        
                                        &emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;
                                        <input type="button" style="color:red" value="♥" onclick="javascript:this.form.mv3.value++;test3(this.form.mv3.value);">
                                        <input type=text id="mv3" name="mv3" value=0 style="width:30px">
										                                     
                                        <div class="rank"><strong>3</strong></div>
                                        <div class="mx">
                                            <span class="icon m ir_pm">MX</span>
                                            <span class="icon b ir_pm">Boutique</span>
                                        </div>
                                    </div>
                                    <div class="infor">
                                        <h3><span class="icon a15 ir_pm">12세</span> <strong>담보<br><br></strong></h3>
                                        <div class="infor_btn">
                                            <a href="movie_board_1.jsp">상세보기</a>
                                            <a href="movieChoice.jsp">예매하기</a>
                                        </div>
                                    </div>
                                </div>
                                <!--  일단 test-->
                                <div>
                                    <div class="poster">
                                        <figure>
                                            <img src="<%=request.getContextPath()%>/assets/img/m4.jpg" srcset="<%=request.getContextPath()%>/assets/img/poster03@2.jpg 2x"  alt="노트북" style="width:300px">
                                        </figure>
                                        
                                        
                                        &emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;
                                        <input type="button" style="color:red" value="♥" onclick="javascript:this.form.mv4.value++;test4(this.form.mv4.value);">
                                        <input type=text id="mv4" name="mv4" value=0 style="width:30px">                                        
										                                     
                                        <div class="rank"><strong>4</strong></div>
                                        <div class="mx">
                                            <span class="icon m ir_pm">MX</span>
                                            <span class="icon b ir_pm">Boutique</span>
                                        </div>
                                    </div>
                                    <div class="infor">
                                        <h3><span class="icon a19 ir_pm">15세</span> <strong>노트북<br><br></strong></h3>
                                        <div class="infor_btn">
                                            <a href="movie_board_1.jsp">상세보기</a>
                                            <a href="movieChoice.jsp">예매하기</a>
                                        </div>
                                    </div>
                               </div>    
                                <!-- </div> -->
                                   
                            </div>
                        </div>
                                  <br><center><input type="submit" value="좋아요 확인" style="width:130px; height: 40px; border:none; margin-top:10px; font-size: 15px; background-color: #3a0e6a; color:white;"></center>
          							
                        <!-- //chart_cont1-->
                    </div> </form>                   
                </div>                    
            </div>
        </div>
    </section>
    <!-- //movie -->
    

    
    <!-- 자바스크립트 라이브러리 -->
    <script src="assets/js/jquery.min_1.12.4.js"></script>
    <script src="assets/js/modernizr-custom.js"></script>
    <script src="assets/js/ie-checker.js"></script>
    <script src="assets/js/swiper.min.js"></script>
    <script>
    

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
