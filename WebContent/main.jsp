<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<meta name="viewport"
	content="user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, width=device-width">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>영화관 사이트_메인</title>

<!-- CSS -->
<link rel="stylesheet" href="assets/css/reset13.css">
<link rel="stylesheet" href="assets/css/style13.css">
<link rel="stylesheet" href="assets/css/swiper.css">
<link rel="stylesheet" href="assets/css/font-awesome.css">


<!-- 웹 폰트 -->
<link
	href="https://fonts.googleapis.com/css?family=Noto+Sans+KR:100,300,400,500,700,900&amp;subset=korean"
	rel="stylesheet">

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
			<div class="swiper-container">
				<div class="swiper-wrapper">
					<div class="swiper-slide ss1">
						<div class="container">
							<div class="row">
								<h2>
									도굴 <em>***</em>
								</h2>
								<p>영화소개</p>
							</div>
						</div>
					</div>
					<div class="swiper-slide ss2">
						<div class="container">
							<div class="row">
								<h2>
									삼진그룹 영어 토익반 <em>***</em>
								</h2>
								<p>영화소개</p>
							</div>
						</div>
					</div>
					<div class="swiper-slide ss3">
						<div class="container">
							<div class="row">
								<h2>
									담보 <em>***</em>
								</h2>
								<p>영화소개</p>
							</div>
						</div>
					</div>
				</div>
				<div class="swiper-pagination"></div>
				<div class="swiper-button-prev"></div>
				<div class="swiper-button-next"></div>
			</div>
		</div>
	</section>
	<!-- //banner -->

	<section id="movie">
		<div class="container">
			<div class="row">
				<div class="movie">
					<h2 class="ir_so">영화 예매</h2>
					<div class="movie_title">
						<ul>
							<li class="active" style="width: 100%"><a href="#">박스
									오피스</a></li>
						</ul>
					</div>
					<!-- 첫번째 줄 -->
					<div class="movie_chart">
						<div class="swiper-container2">
							<div class="chart_cont1 swiper-wrapper">
								<div>
									<div class="poster">
										<figure>
											<img src="assets/img/m1.jpg"
												srcset="assets/img/poster01@2.jpg 2x" alt="도굴">
										</figure>
										<div class="rank">
											<strong>1</strong>
										</div>

										<div class="mx">
											<span class="icon m ir_pm">MX</span> <span
												class="icon b ir_pm">Boutique</span>

										</div>

									</div>
									<div class="infor">
										<h3>
											<span class="icon a15 ir_pm">12세</span> <strong>도굴<br>
												<br></strong>
										</h3>
										<div style="font-size: 100px;"></div>
									</div>
								</div>
								<div>
									<div class="poster">
										<figure>
											<img src="assets/img/m2.jpg"
												srcset="assets/img/poster02@2.jpg 2x" alt="삼진">
										</figure>
										<div class="rank">
											<strong>2</strong>
										</div>

										<div class="mx">
											<span class="icon m ir_pm">MX</span> <span
												class="icon b ir_pm">Boutique</span>
										</div>
									</div>
									<div class="infor">
										<h3>
											<span class="icon a15 ir_pm">12세</span> <strong>삼진그룹
												영어 토익반</strong>
										</h3>
									</div>
								</div>
								<div>
									<div class="poster">
										<figure>
											<img src="assets/img/m3.jpg"
												srcset="assets/img/poster03@2.jpg 2x" alt="담보">
										</figure>
										<div class="rank">
											<strong>3</strong>
										</div>
										<div class="mx">
											<span class="icon m ir_pm">MX</span> <span
												class="icon b ir_pm">Boutique</span>
										</div>
									</div>
									<div class="infor">
										<h3>
											<span class="icon a15 ir_pm">12세</span> <strong>담보<br>
												<br></strong>
										</h3>
									</div>
								</div>
								<div>
									<div class="poster">
										<figure>
											<img src="assets/img/m4.jpg"
												srcset="assets/img/poster03@2.jpg 2x" alt="노트북">
										</figure>
										<div class="rank">
											<strong>4</strong>
										</div>
										<div class="mx">
											<span class="icon m ir_pm">MX</span> <span
												class="icon b ir_pm">Boutique</span>
										</div>
									</div>
									<div class="infor">
										<h3>
											<span class="icon a19 ir_pm">15세</span> <strong>노트북<br>
												<br></strong>
										</h3>
									</div>
								</div>

							</div>

						</div>
						<!-- 두번째 줄 -->
						<div class="swiper-container2" style="margin-top: 60px;">
							<div class="chart_cont1 swiper-wrapper">
								<div>
									<div class="poster">
										<figure>
											<img src="assets/img/m5.jpg"
												srcset="assets/img/poster01@2.jpg 2x" alt="도굴">
										</figure>
										<div class="rank">
											<strong>5</strong>
										</div>

										<div class="mx">
											<span class="icon m ir_pm">MX</span> <span
												class="icon b ir_pm">Boutique</span>

										</div>

									</div>
									<div class="infor">
										<h3>
											<span class="icon a15 ir_pm">12세</span> <strong>위플래쉬<br>
												<br></strong>
										</h3>
										<div style="font-size: 100px;"></div>
									</div>
								</div>
								<div>
									<div class="poster">
										<figure>
											<img src="assets/img/m6.jpg"
												srcset="assets/img/poster02@2.jpg 2x" alt="삼진">
										</figure>
										<div class="rank">
											<strong>6</strong>
										</div>

										<div class="mx">
											<span class="icon m ir_pm">MX</span> <span
												class="icon b ir_pm">Boutique</span>
										</div>
									</div>
									<div class="infor">
										<h3>
											<span class="icon a15 ir_pm">12세</span> <strong>다만
												악에서 구하소서 파이널컷</strong>
										</h3>
										<div class="infor_btn"></div>
									</div>
								</div>
								<div>
									<div class="poster">
										<figure>
											<img src="assets/img/m7.jpg"
												srcset="assets/img/poster03@2.jpg 2x" alt="담보">
										</figure>
										<div class="rank">
											<strong>7</strong>
										</div>
										<div class="mx">
											<span class="icon m ir_pm">MX</span> <span
												class="icon b ir_pm">Boutique</span>
										</div>
									</div>
									<div class="infor">
										<h3>
											<span class="icon a15 ir_pm">12세</span> <strong>미스터트롯:더무비<br>
											</strong>
										</h3>
										<div class="infor_btn"></div>
									</div>
								</div>
								<div>
									<div class="poster">
										<figure>
											<img src="assets/img/m8.jpg"
												srcset="assets/img/poster03@2.jpg 2x" alt="노트북">
										</figure>
										<div class="rank">
											<strong>8</strong>
										</div>
										<div class="mx">
											<span class="icon m ir_pm">MX</span> <span
												class="icon b ir_pm">Boutique</span>
										</div>
									</div>
									<div class="infor">
										<h3>
											<span class="icon a19 ir_pm">15세</span> <strong>테넷<br>
												<br></strong>
										</h3>
										<div class="infor_btn"></div>
									</div>
								</div>

							</div>
						</div>

						<!-- 세번째 줄 -->
						<div class="swiper-container2" style="margin-top: 60px;">
							<div class="chart_cont1 swiper-wrapper">
								<div>
									<div class="poster">
										<figure>
											<img src="assets/img/m9.jpg"
												srcset="assets/img/poster01@2.jpg 2x" alt="도굴">
										</figure>
										<div class="rank">
											<strong>9</strong>
										</div>

										<div class="mx">
											<span class="icon m ir_pm">MX</span> <span
												class="icon b ir_pm">Boutique</span>

										</div>

									</div>
									<div class="infor">
										<h3>
											<span class="icon a15 ir_pm">12세</span> <strong>페이트
												스테이 나이트 헤븐즈필 제3장 스프링 송 </strong>
										</h3>
										<div style="font-size: 100px;"></div>
									</div>
								</div>
								<div>
									<div class="poster">
										<figure>
											<img src="assets/img/m10.jpg"
												srcset="assets/img/poster02@2.jpg 2x" alt="삼진">
										</figure>
										<div class="rank">
											<strong>10</strong>
										</div>

										<div class="mx">
											<span class="icon m ir_pm">MX</span> <span
												class="icon b ir_pm">Boutique</span>
										</div>
									</div>
									<div class="infor">
										<h3>
											<span class="icon a15 ir_pm">12세</span> <strong>다만
												21 브릿지: 테러 셧다운<br>
											<br>
											</strong>
										</h3>
										<div class="infor_btn"></div>
									</div>
								</div>
								<div>
									<div class="poster">
										<figure>
											<img src="assets/img/m11.jpg"
												srcset="assets/img/poster03@2.jpg 2x" alt="HER">
										</figure>
										<div class="rank">
											<strong>11</strong>
										</div>
										<div class="mx">
											<span class="icon m ir_pm">MX</span> <span
												class="icon b ir_pm">Boutique</span>
										</div>
									</div>
									<div class="infor">
										<h3>
											<span class="icon a15 ir_pm">12세</span> <strong>HER<br>
											<br>
											</strong>
										</h3>
										<div class="infor_btn"></div>
									</div>
								</div>
								<div>
									<div class="poster">
										<figure>
											<img src="assets/img/m12.jpg"
												srcset="assets/img/poster03@2.jpg 2x" alt="GETOUT">
										</figure>
										<div class="rank">
											<strong>12</strong>
										</div>
										<div class="mx">
											<span class="icon m ir_pm">MX</span> <span
												class="icon b ir_pm">Boutique</span>
										</div>
									</div>
									<div class="infor">
										<h3>
											<span class="icon a19 ir_pm">15세</span> <strong>GET
												OUT<br> <br>
											</strong>
										</h3>
										<div class="infor_btn"></div>
									</div>
								</div>

							</div>
						</div>
					</div>
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
		//배너 이미지 슬라이드
		var mySwiper = new Swiper('.swiper-container', {
			navigation : {
				nextEl : '.swiper-button-next',
				prevEl : '.swiper-button-prev',
			},
			pagination : {
				el : '.swiper-pagination',
				type : 'bullets',
			},
			autoplay : {
				delay : 5000,
			},
		});

		//영화차트 이미지 슬라이드
		var mySwiper = new Swiper('.swiper-container2', {
			slidesPerView : 4,
			spaceBetween : 24,
			keyboard : {
				enabled : true,
				onlyInViewport : false,
			},
			breakpoints : {
				600 : {
					slidesPerView : 1.4,
					spaceBetween : 24
				},
				768 : {
					slidesPerView : 2,
					spaceBetween : 24
				},
				960 : {
					slidesPerView : 3,
					spaceBetween : 24
				}
			}
		});
	</script>
</body>
</html>







