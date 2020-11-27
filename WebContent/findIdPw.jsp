<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
	height: 340px;
	width: 650px;
	border-width: 1px;
	border-style: solid;
	border-color: rgb(190, 190, 190);
	height: 420px;
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
	margin-top: 60px;
	font-size: 13px;
	width: 350px;
}

#findIdPw input {
	height: 20px;
	padding: 3px;
	border-width: 0px;
}

.search {
	margin: 14px;
	width: 200px;
	border-width: 0px;
	border-radius: 5px;
	font-size: 13px;
	padding: 10px;
	text-align: center;
}

th, td {
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
$(document).ready(function(){
	$(document).on('submit','#find_form', function(){
	      //이름 공백 검사 
	      if($("#name").val() == ""){
	         alert("이름을 입력해주세요");
	         $("#name").focus(); 
	         return false; 
	      } 
	      
	      if($("#birth").val() == ""){
		         alert("생년월일을 입력해주세요");
		         $("#birth").focus(); 
		         return false; 
		  } 
	      
	      if($("#email").val() == ""){
		         alert("이메일을 입력해주세요");
		         $("#email").focus(); 
		         return false; 
		  } 
	});
});
</script>
</head>

<body>
	<header id="header">
		<div class="container">
			<div class="row">
				<div class="header clearfix">
					<h1>
						<a href="#"> <em><img src="assets/img/teamlogo_made.png" alt="teamlogo"></em><br>
						</a>
					</h1>
				</div>
			</div>
		</div>
	</header>
	<br>
	<div id="box">
		<div id="title">아이디 찾기/비밀번호 찾기 <small>(간편찾기)</small></div>
		<form id="find_form" action="find-db.jsp" method="post">
		<table id="findIdPw">
			<tr>
				<th>이름</th>
				<td><input type="text" name="name" id="name" placeholder="이름"></td>
			</tr>
			<tr>
				<th>생년월일</th>
				<td><input type="text" name="birth" id="birth" placeholder="생년월일 8자리"></td>
			</tr>
			<tr>
				<th>이메일</th>
				<td><input type="text" name="email" id="email" placeholder="이메일">
			</tr>
		</table>
		<br>
		<div align="center">
			<input type="submit" class="search" value="아이디/비밀번호 찾기">
		</div>
		</form>
	</div>
</body>

</html>