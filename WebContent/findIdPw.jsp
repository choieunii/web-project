<!DOCTYPE html>
<html>

<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width">
	<title>아이디/비밀번호 찾기</title>

	<link rel="stylesheet" href="assets/css/reset19.css">
	<link rel="stylesheet" href="assets/css/style19.css">
	<link rel="stylesheet" href="assets/css/swiper.css">

	<style>
		body {
			background-color: #f8f9fa;
			margin: 100px 170px 100px 170px;
			position: relative;
		}

		h3 {
			margin-top: 30px;
			margin-left: 50px;
		}

		h5 {
			margin-top: 0px;
			margin-left: 60px;
		}

		#box {
			background-color: white;
			margin: auto;
			height: 390px;
			width: 650px;
			border-width: 1px;
			border-style: solid;
			border-color: rgb(190, 190, 190);
			height: 390px;
		}

		#title {
			height: 21px;
			padding: 16px;
			font-style: bold;
			font-size: 15px;
			color: white;
			background: #3a0e6a;
		}

		#check {
			width: 70px;
			margin-left: 10px;
			border-width: 0px;
			border-radius: 5px;
			font-size: 12px;
			padding: 5px;
		}

		#find {
			border-color: rgb(190, 190, 190);
		}

		#findIdPw {
			border: 1px solid grey;
			border-collapse: collapse;
			margin: auto;
			margin-top: 40px;
			font-size: 13px;
		}

		#findIdPw input {
			height: 20px;
			padding: 3px;
			border-width: 0px;
		}

		.find_f {
			margin: 14px;
			width: 140px;
			border-width: 0px;
			border-radius: 5px;
			font-size: 13px;
			padding: 10px;
			text-align: center;
		}

		th,
		td {
			padding: 7px;
		}

		th {
			background: rgb(224, 224, 224);
			border: 1px solid grey;
		}

		td {
			background: white;
			border: 1px solid grey;
		}
	</style>


	<script src="https://code.jquery.com/jQuery-3.5.1.js"></script>
	<script>

	</script>
</head>

<body>
	<header id="header">
		<div class="container">
			<div class="row">
				<div class="header clearfix">
					<h1>
						<a href="#"> <em><img src="assets/img/teamlogo_made.png" alt="teamlogo"
									onclick="location.href='mega292_13.html'"></em><br>
						</a>
					</h1>
				</div>
			</div>
		</div>
	</header>
	<br>
	<div id="box">
		<div id="title">
			아이디 찾기/비밀번호 찾기 <small>(간편찾기)</small>
		</div>
		<table id="findIdPw">
			<tr>
				<th>이름</th>
				<td><input type="text" name="name" placeholder="이름"></td>
			</tr>
			<tr>
				<th>생년월일</th>
				<td><input type="text" name="birth" placeholder="생년월일 8자리"></td>
			</tr>
			<tr>
				<th>휴대폰번호</th>
				<td><input type="text" name="number" placeholder=" - 없이 입력">
					&emsp;<button id="check">인증요청</button></td>
			</tr>
			<tr>
				<th>인증번호</th>
				<td><input type="text" name="name">
					&emsp;<button id="check">인증확인</button></td>
			</tr>
		</table>
		<br>
		<div align="center">
			<button class="find_f">아이디 찾기</button>
			<button class="find_f">비밀번호 찾기</button>
		</div>
	</div>
</body>

</html>