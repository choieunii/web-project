<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
	height: 900px;
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
#body1_s input{
	border: 0px;
	width: 60%;
}

th, td {
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
	width: 100px;
	margin-left: 20px;
	border-width: 0px;
	border-radius: 5px;
	font-size: 13px;
	font-style: bold;
	padding: 7px;
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
<script type="text/javascript">
function checkid(){
	/*아이디 중복 확인*/
}
function login() {
    const form = document.getElementById("signin_form");

    if (getElementById("name") == "") {
        alert("이름을 입력해주세요.");
    }
    
    if (getElementById("birth") == "") {
        alert("생년월일을 입력해주세요.");
    }
    else if (getElementById("birth").length() != 8) {
        alert("생년월일 8자리를 입력해주세요.");
    }
    
	const exptext = /^[A-Za-z0-9_\.\-]+@[A-Za-z0-9\-]+\.[A-Za-z0-9\-]+/;
	
    if (getElementById("email") == "") {
        alert("이메일을 입력해주세요.");
    }
    else if (exptext.test(getElementById("email") != "") == false) {
        alert("이메일 형식을 지켜주세요.");
    }
    
    const pw = getElementById("pw");
    // String.prototype.search() :: 검색된 문자열 중에 첫 번째로 매치되는 것의 인덱스를 반환한다. 찾지 못하면 -1 을 반환한다.
    // number
    const num = pw.search(/[0-9]/g);
    // alphabet
    const eng = pw.search(/[a-z]/ig);
    // special characters
    const spe = pw.search(/[`~!@@#$%^&*|₩₩₩'₩";:₩/?]/gi);
    
    if (getElementById("pw") == ""){
    	alert("비밀번호를 입력해주세요.");
    }else if (pw.length < 8) {
        // 최소 6문자.
        alert("비밀번호를 최소 8자리 입력해주세요.");
    } else if (pw.search(/\s/) != -1) {
        // 공백 제거.
        alert("비밀번호를 공백 없이 입력해주세요.");
    } else if (num < 0 && eng < 0 && spe < 0) {
        // 한글과 같은 문자열 입력 방지.
        alert("비밀번호를 다시 입력해주세요.");
    }

    
    if (getElementById("pw2") == ""){
    	alert("비밀번호 확인을 입력해주세요.");
    }
    else if (getElementById("pw") !== getElementById("pw"2)) {
    	alert("비밀번호가 일치하지 않습니다.");
    }
    
}
function checkAll(){
	if(document.getElementById("all").checked){
		document.getElementById("service").checked = true;
		document.getElementById("personal").checked = true;
		document.getElementById("marketing").checked = true;
	}
	else if (!document.getElementById("service").checked){
		document.getElementById("service").checked = false;
		document.getElementById("personal").checked = false;
		document.getElementById("marketing").checked = false;
	}
	
}
</script>
</head>
<body>
	<header id="header">
		<div class="container">
			<div class="row">
				<div class="header clearfix">
					<h1>
						<a href="#"> <em><img src="assets/img/teamlogo_made.png"
								alt="teamlogo" onclick="location.href='mega292_13.html'"></em><br>
						</a>
					</h1>
				</div>
			</div>
		</div>
	</header>
	<br>
	<div id="box_s">
		<div id="title_s">&nbsp;&nbsp;회 원 가 입</div>
		<form id="signin_form" method="post" action="signin-db.jsp">
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
						<button id="check" onclick="checkid()">중복확인</button></td>
				</tr>
				<tr>
					<th>비밀번호</th>
					<td><input type="password" name="pw" placeholder="영문, 숫자, 특수기호 중 2가지 이상 조합">
				</tr>
				<tr>
					<th>비밀번호 확인</th>
					<td><input type="password" name="pw2" placeholder="영문, 숫자, 특수기호 중 2가지 이상 조합">
				</tr>
				<tr>
					<th>이메일 주소</th>
					<td><input type="text" name="email" placeholder="이메일 주소를 입력해주세요. ">
				</tr>
			</table>
			<br> 
		</div>
		
		<h3>2. 약관동의 및 정보활용동의</h3>
		<h5>
			충무로영화관 서비스 이용을 위한 약관을	동의해주세요.&emsp;
			<button id="check" onClick="window.open('more.jsp')">자세히보기</button><br> 
		</h5>
		<br>
		<div id="checks">
				<input type="checkbox" id="all" onclick="checkAll()"> 필수항목 전체동의 <br>
				<input type="checkbox" id="service"> 서비스 이용약관동의(필수)<br>
				<input type="checkbox" id="personal"> 개인정보 수집 및 이용동의(필수)<br> 
				<input type="checkbox" id="marketing"> 마케팅 활용을 위한 개인정보 수집 이용<br>
		</div>
		<br><br>
		&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;
		&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;
		<input type="submit" id="find_s" value="회원가입">
		<input type="reset" id="find_s" value="취소">
	</form>
	</div>
</body>
</html>