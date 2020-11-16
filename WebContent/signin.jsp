<!DOCTYPE html>
<html>

<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width">
	<title>회원가입</title>

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

		#box_s {
			margin: auto;
			height: 1000px;
			width: 750px;
			border-width: 1px;
			border-style: solid;
			border-color: rgb(190, 190, 190);
			background-color: white;
		}

		#title_s {
			text-align: center;
			height: 30px;
			padding: 20px;
			font-style: bold;
			font-size: 19px;
			color: white;
			background: #3a0e6a;
		}

		#body1_s {
			border: 1px solid rgb(190, 190, 190);
			margin: auto;
			margin-top: 40px;
			border-collapse: collapse;
			border-width: 0.1em;
			border-spacing: 0px;
			height: 200px;
			width: 500px;
			font-size: 13px;
		}

		th,
		td {
			padding: 7px;
		}

		th {
			background: rgb(224, 224, 224);
			border: 1px solid rgb(190, 190, 190);
		}

		td {
			background: white;
			border: 1px solid rgb(190, 190, 190);
		}

		#body1_s input {
			height: 25px;
			width: 250px;
			border-width: 0px;
		}

		#checks {
			width: 500px;
			border: 1px solid rgb(190, 190, 190);
			position: relative;
			left: 140px;
			padding: 10px;
			line-height: 3;
			font-size: 14px;
		}

		#find_s {
			margin-top: 20px;
			margin-left: 315px;
			width: 150px;
			border-width: 0px;
			border-radius: 5px;
			font-size: 15px;
			font-style: bold;
			padding: 10px;
		}

		#check {
			width: 70px;
			margin-left: 10px;
			border-width: 0px;
			border-radius: 5px;
			font-size: 12px;
			padding: 5px;
		}
	</style>

	<script>
		// 아이디 중복확인
		// 확인 클릭 시 검토
		function confirm_info() {
			
        }
		// pass = "확인 되었습니다." fail= " --- 를 다시 확인해주세요 "
		// 		비밀번호, 비밀번호 확인 일치 여부
		// 		이메일주소 형식
		// 		생년월일 8자리
		// 필수항목 전체 동의 기능
		// 회원가입 시, 이미 위에서 정보는 확인했으니까
		// 필수항목 체크여부만 확인
		// 회원가입 - db에 정보 추가
	</script>
</head>

<body>
	<header id="header">
		<div class="container">
			<div class="row">
				<div class="header clearfix">
					<h1>
						<a href="#">
							<em><img src="assets/img/teamlogo_made.png" alt="teamlogo"
									onclick="location.href='mega292_13.html'"></em><br>
						</a>
					</h1>
				</div>
			</div>
		</div>
	</header>
	<br>
	<div id="box_s">
		<div id="title_s">&nbsp;&nbsp;회 원 가 입</div>
		<h3>1. 회원정보 입력</h3>
		<h5>회원정보를 입력해주세요.</h5>
		<div>
			<table id="body1_s">
				<tr>
					<th>이름</th>
					<td><input type="text" name="name" placeholder="이름"></td>
				</tr>
				<tr>
					<th>생년월일</th>
					<td><input type="text" name="birth" placeholder="생년월일 8자리"></td>
				</tr>
				<tr>
					<th>아이디</th>
					<td><input type="text" name="id" placeholder="영문, 숫자 조합 (8-12자) "> &emsp;
						<button id="check">중복확인</button></td>
				</tr>
				<tr>
					<th>비밀번호</th>
					<td><input type="password" name="pw" placeholder="영문, 숫자, 특수기호 중 2가지 이상 조합">
				</tr>
				<tr>
					<th>비밀번호 확인</th>
					<td><input type="password" name="pw_ch" placeholder="영문, 숫자, 특수기호 중 2가지 이상 조합">
				</tr>
				<tr>
					<th>이메일 주소</th>
					<td><input type="text" name="pw_ch" placeholder="이메일 주소를 입력해주세요. ">
				</tr>
			</table>
			<br>
			<input type="submit" id="find_s" value="확인">
		</div>
		<h3>2. 약관동의 및 정보활용동의</h3>
		<h5>충무로영화관 서비스 이용을 위한 약관을 동의해주세요.</h5>
		<br>
		<div id="checks">
		<form action="more.html" method="POST">
			<input type="checkbox" id="all"> 필수항목 전체동의 <br>
			<input type="checkbox" id="service"> 서비스 이용약관 동의(필수)
			&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&nbsp;
			<input id="check" type="button" value="자세히보기" onClick="window.open('more.jsp')"> <br>
			<input type="checkbox" id="personal"> 개인정보 수집 및 이용동의(필수)
			&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;
			<input id="check" type="button" value="자세히보기" onClick="window.open('more.jsp')"> <br>
			<input type="checkbox" id="marketing"> 마케팅 활용을 위한 개인정보 수집 이용
			&emsp;&emsp;&emsp;
			<input id="check" type="button" value="자세히보기" onClick="window.open('more.jsp')"> <br>
		</div>
	</form>
		<br><br>
		<input type="submit" id="find_s" value="회원가입">

	</div>

</body>

</html>