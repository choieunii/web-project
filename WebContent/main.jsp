<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<meta name="viewport"
	content="user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, width=device-width">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>��ȭ�� ����Ʈ_����</title>

<!-- CSS -->
<link rel="stylesheet" href="assets/css/reset13.css">
<link rel="stylesheet" href="assets/css/style13.css">
<link rel="stylesheet" href="assets/css/swiper.css">
<link rel="stylesheet" href="assets/css/font-awesome.css">


<!-- �� ��Ʈ -->
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
		<h2 class="ir_so">�ֽ� ��ȭ �ҽ�</h2>
		<div class="slider">
		<div class="banner_menu">
			<div class="container">
				<div class="row">
					<div class="bm_right">
						<ul>
							<%
                          	if(session.getAttribute("id") != null){
                           	%>
                                <li class="purple"><a href="./logout.jsp">�α׾ƿ� </a></li>
                           	<%
                           	}
                            else{
                            %>
                            	<li class="purple"><a href="./login.jsp">�α��� </a></li>
                            <% 
                            } 
                            %>
							<li class="purple"><a href="#" onclick="location.href='movie_board_main.jsp'">��ȭ �Խ���</a></li>
                            <li class="purple"><a href="#" onclick="location.href='movieChoice.jsp'">��ȭ ����</a></li>
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
									���� <em>***</em>
								</h2>
								<p>��ȭ�Ұ�</p>
							</div>
						</div>
					</div>
					<div class="swiper-slide ss2">
						<div class="container">
							<div class="row">
								<h2>
									�����׷� ���� ���͹� <em>***</em>
								</h2>
								<p>��ȭ�Ұ�</p>
							</div>
						</div>
					</div>
					<div class="swiper-slide ss3">
						<div class="container">
							<div class="row">
								<h2>
									�㺸 <em>***</em>
								</h2>
								<p>��ȭ�Ұ�</p>
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
					<h2 class="ir_so">��ȭ ����</h2>
					<div class="movie_title">
						<ul>
							<li class="active" style="width: 100%"><a href="#">�ڽ�
									���ǽ�</a></li>
						</ul>
					</div>
					<!-- ù��° �� -->
					<div class="movie_chart">
						<div class="swiper-container2">
							<div class="chart_cont1 swiper-wrapper">
								<div>
									<div class="poster">
										<figure>
											<img src="assets/img/m1.jpg"
												srcset="assets/img/poster01@2.jpg 2x" alt="����">
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
											<span class="icon a15 ir_pm">12��</span> <strong>����<br>
												<br></strong>
										</h3>
										<div style="font-size: 100px;"></div>
									</div>
								</div>
								<div>
									<div class="poster">
										<figure>
											<img src="assets/img/m2.jpg"
												srcset="assets/img/poster02@2.jpg 2x" alt="����">
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
											<span class="icon a15 ir_pm">12��</span> <strong>�����׷�
												���� ���͹�</strong>
										</h3>
									</div>
								</div>
								<div>
									<div class="poster">
										<figure>
											<img src="assets/img/m3.jpg"
												srcset="assets/img/poster03@2.jpg 2x" alt="�㺸">
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
											<span class="icon a15 ir_pm">12��</span> <strong>�㺸<br>
												<br></strong>
										</h3>
									</div>
								</div>
								<div>
									<div class="poster">
										<figure>
											<img src="assets/img/m4.jpg"
												srcset="assets/img/poster03@2.jpg 2x" alt="��Ʈ��">
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
											<span class="icon a19 ir_pm">15��</span> <strong>��Ʈ��<br>
												<br></strong>
										</h3>
									</div>
								</div>

							</div>

						</div>
						<!-- �ι�° �� -->
						<div class="swiper-container2" style="margin-top: 60px;">
							<div class="chart_cont1 swiper-wrapper">
								<div>
									<div class="poster">
										<figure>
											<img src="assets/img/m5.jpg"
												srcset="assets/img/poster01@2.jpg 2x" alt="����">
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
											<span class="icon a15 ir_pm">12��</span> <strong>���÷���<br>
												<br></strong>
										</h3>
										<div style="font-size: 100px;"></div>
									</div>
								</div>
								<div>
									<div class="poster">
										<figure>
											<img src="assets/img/m6.jpg"
												srcset="assets/img/poster02@2.jpg 2x" alt="����">
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
											<span class="icon a15 ir_pm">12��</span> <strong>�ٸ�
												�ǿ��� ���ϼҼ� ���̳���</strong>
										</h3>
										<div class="infor_btn"></div>
									</div>
								</div>
								<div>
									<div class="poster">
										<figure>
											<img src="assets/img/m7.jpg"
												srcset="assets/img/poster03@2.jpg 2x" alt="�㺸">
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
											<span class="icon a15 ir_pm">12��</span> <strong>�̽���Ʈ��:������<br>
											</strong>
										</h3>
										<div class="infor_btn"></div>
									</div>
								</div>
								<div>
									<div class="poster">
										<figure>
											<img src="assets/img/m8.jpg"
												srcset="assets/img/poster03@2.jpg 2x" alt="��Ʈ��">
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
											<span class="icon a19 ir_pm">15��</span> <strong>�׳�<br>
												<br></strong>
										</h3>
										<div class="infor_btn"></div>
									</div>
								</div>

							</div>
						</div>

						<!-- ����° �� -->
						<div class="swiper-container2" style="margin-top: 60px;">
							<div class="chart_cont1 swiper-wrapper">
								<div>
									<div class="poster">
										<figure>
											<img src="assets/img/m9.jpg"
												srcset="assets/img/poster01@2.jpg 2x" alt="����">
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
											<span class="icon a15 ir_pm">12��</span> <strong>����Ʈ
												������ ����Ʈ ������� ��3�� ������ �� </strong>
										</h3>
										<div style="font-size: 100px;"></div>
									</div>
								</div>
								<div>
									<div class="poster">
										<figure>
											<img src="assets/img/m10.jpg"
												srcset="assets/img/poster02@2.jpg 2x" alt="����">
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
											<span class="icon a15 ir_pm">12��</span> <strong>�ٸ�
												21 �긴��: �׷� �˴ٿ�<br>
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
											<span class="icon a15 ir_pm">12��</span> <strong>HER<br>
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
											<span class="icon a19 ir_pm">15��</span> <strong>GET
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



	<!-- �ڹٽ�ũ��Ʈ ���̺귯�� -->
	<script src="assets/js/jquery.min_1.12.4.js"></script>
	<script src="assets/js/modernizr-custom.js"></script>
	<script src="assets/js/ie-checker.js"></script>
	<script src="assets/js/swiper.min.js"></script>
	<script>
		//��� �̹��� �����̵�
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

		//��ȭ��Ʈ �̹��� �����̵�
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







