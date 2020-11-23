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
 function send(){
    if(document.box_s.f.body1_s.name.value == ""){
        alert("이름을 입력하세요");
        document.box_s.f.body1_s.name.focus();
        return;
    }
   
    if(document.box_s.f.body1_s.birth.value == ""){
        alert("생년월일을 입력하세요");
        document.box_s.f.body1_s.birth.focus();
        return;
    }else if(document.box_s.f.body1_s.birth.value.length() != 8){
        alert("생년월일 8자리를 입력하세요");
        document.box_s.f.body1_s.birth.focus();
        return;
    }
    
    if(document.box_s.f.body1_s.id.value == ""){
        alert("아이디를 입력하세요");
        document.box_s.f.body1_s.id.focus();
        return;
    }
    /*else if (document.f.body1_s.id.value 영문숫자조합이 아닐 때){
	    alert("아이디 형식이 맞지 않습니다.");
	}*/
    if(document.box_s.f.body1_s.pw.value == ""){
        alert("패스워드를 입력하세요");
        document.box_s.f.body1_s.pw.focus();
        return;
    } else if (document.box_s.f.body1_s.pw.value != document.box_s.f..body1_s.pw_ch.value){
        alert("암호가 일치하지 않습니다. 다시 입력하세요");
        document.box_s.f.body1_s.pw.value = "";
        document.box_s.f.body1_s.pw_ch.value = "";
        document.box_s.f.body1_s.pw_ch.focus();
        return;
    }
    /*else if (document.f.body1_s.ㅔㅈ.value 영문숫자특수기호조합이 아닐 때){
    	alert("비밀번호 형식이 맞지 않습니다.");
	}*/
    
    if(document.box_s.f.body1_s.email.value == ""){
        alert("이메일을 입력하세요");
        document.box_s.f.body1_s.email.focus();
        return;
    } 
    /*else if (document.f.body1_s.email.value == ""){
        alert("이메일 형식이 맞지 않습니다.");
        document.f.body1_s.email.value == ""
        document.f.body1_s.email.focus();
        return;
    }*/

    //요청 URL
    document.box_s.f.action = "signin-db.jsp";

    //서버쪽에 보내기
    document.box_s.f.submit();
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
	<form id="f" method="post">
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
						<button id="check" onclick="checkid()">중복확인</button></td>
				</tr>
				<tr>
					<th>비밀번호</th>
					<td><input type="password" name="pw"
						placeholder="영문, 숫자, 특수기호 중 2가지 이상 조합">
				</tr>
				<tr>
					<th>비밀번호 확인</th>
					<td><input type="password" name="pw_ch"
						placeholder="영문, 숫자, 특수기호 중 2가지 이상 조합">
				</tr>
				<tr>
					<th>이메일 주소</th>
					<td><input type="text" name="email"
						placeholder="이메일 주소를 입력해주세요. ">
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
				<input type="checkbox" id="all"> 필수항목 전체동의 <br>
				<input type="checkbox" id="service"> 서비스 이용약관동의(필수)<br>
				<input type="checkbox" id="personal"> 개인정보 수집 및 이용동의(필수)<br> 
				<input type="checkbox" id="marketing"> 마케팅 활용을 위한 개인정보 수집 이용<br>
		</div>
		<br><br>
		&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;
		&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;
		<input type="submit" id="find_s" value="회원가입" onclick="send()">
		<input type="reset" id="find_s" value="취소">
	</form>
	</div>

</body>
</html>