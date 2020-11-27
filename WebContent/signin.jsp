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

.find_s {
   width: 100px;
   border-width: 0px;
   border-radius: 10px;
   font-size: 13px;
   font-style: bold;
   padding: 7px;
}

.check {
   width: 70px;
   margin-left: 10px;
   border-width: 0px;
   border-radius: 5px;
   font-size: 12px;
   padding: 5px;
}
</style>
<script src="https://code.jquery.com/jQuery-3.5.1.js"></script>
<script>
$(document).ready(function(){
   $(document).on('click', '#idcheck', function(){
      if($("#id").val() == ""){
            alert("아이디를 입력해주세요");
            return;
       }
      
      id = $('#id').val();
      url = "confirmId.jsp?id="+ id;
      open(url, "아이디 중복 확인", "toolbar=no, location=no, status=no, menubar=no, scrollbars=no, resizable=no, width=300, height=200");
      
   });
   

   $(document).on('click', '#all', function(){
      if($('#all').is(":checked")){
         $(".chk").prop("checked", true);
      }else{
         $(".chk").prop("checked", false);
      }
   });
   
   $(document).on('click','.chk', function(){
      if($("input[name='chk']:checked").length == 3){
         $("#all").prop("checked", true);
      }else{
         $("#all").prop("checked", false);
      }
   });
   
   $(document).on('submit','#signin_form', function(){
      var getMail = RegExp(/^[A-Za-z0-9_\.\-]+@[A-Za-z0-9\-]+\.[A-Za-z0-9\-]+/); 
       var getCheck= RegExp(/^[a-zA-Z0-9]{4,12}$/);
       // var fmt = RegExp(/^\d{6}[1234]\d{6}$/); //형식 설정 
  
         //이름 공백 검사 
         if($("#name").val() == ""){
            alert("이름을 입력해주세요");
            $("#name").focus(); 
            return false; 
         } 
         
         //생년월일 공백 검사 
         if($("#birth").val() == ""){
            alert("생년월일을 입력해주세요");
            $("#birth").focus(); 
            return false; 
         } 
         //생년월일 유효성 
         if($("#birth").val().length != 8){
            alert("생년월일 8자리를 입력해주세요") 
            $("#birth").val(""); 
            $("#birth").focus(); 
            return false; 
         } 
         
         //아이디 공백 확인 
         if($("#id").val() == ""){
            alert("아이디를 입력해주세요"); 
            $("#id").focus(); 
            return false; 
         }
         //아이디 유효성검사 
         if(!getCheck.test($("#id").val())){
            alert("아이디를 형식에 맞게 입력해주세요"); 
            $("#id").val("");
            $("#id").focus(); 
            return false; 
         } 
                  
         //비밀번호 공백 확인 
         if($("#pw").val() == ""){
            alert("패스워드를 입력해주세요"); 
            $("#pw").focus(); 
            return false; 
         } 
         //비밀번호 유효성검사 
         if(!getCheck.test($("#pw").val())){
            alert("패스워드를 형식에 맞게 입력해주세요");
            $("#pw").val("");
            $("#pw").focus();
            return false; 
         }                
         //비밀번호 확인란 공백 확인 
         if($("#pw2").val() == ""){
            alert("패스워드 확인란을 입력해주세요"); 
            $("#pw2").focus(); 
            return false; 
         } 
         //비밀번호 서로확인 
         if($("#pw").val() != $("#pw2").val()){
            alert("비밀번호가 일치하지 않습니다"); 
            $("#password").val(""); 
            $("#password_check").val(""); 
            $("#password").focus(); 
            return false; 
         } 
                  
         //이메일 공백 확인 
         if($("#email").val() == ""){
            alert("이메일을 입력해주세요"); 
            $("#email").focus(); 
            return false;
         }
         //이메일 유효성 검사 
         if(!getMail.test($("#email").val())){
            alert("이메일 형식에 맞게 입력해주세요"); 
            $("#email").val(""); 
            $("#email").focus(); 
            return false; 
         }
         
         // 필수항목 체크 검사
        if(!$('#service').is(":checked")){
           alert("필수항목을 모두 체크해주세요");
           return false; 
        } 
        if(!$('#personal').is(":checked")){
           alert("필수항목을 모두 체크해주세요");
           return false; 
        } 
   });
});

</script>
</head>
<body>
<<<<<<< HEAD
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
   <br>
   <div id="box_s">
      <div id="title_s">&nbsp;&nbsp;회 원 가 입</div>
      <form id="signin_form" method="post" action="signin-db.jsp">
      <h3><b>1. 회원정보 입력</b></h3>
      <h5>회원정보를 입력해주세요.</h5>
      <div>
         <table id="body1_s">
            <tr>
               <th>이름</th>
               <td><input type="text" name="name" id="name" placeholder="이름"></td>            
            </tr>
            <tr>
               <th>생년월일</th>
               <td><input type="text" name="birth" id="birth" placeholder="생년월일 8자리"></td>
            </tr>
            <tr>
               <th>아이디</th>
               <td><input type="text" name="id" id="id" placeholder="4~12자의 영문,숫자 조합 "> &emsp;
                  <input type="button"  id="idcheck" class="check" value="중복확인" style="width: 70px;"></td>
            </tr>
            <tr>
               <th>비밀번호</th>
               <td><input type="password" name="pw" id="pw" placeholder="4~12자의 영문,숫자 조합">
            </tr>
            <tr>
               <th>비밀번호 확인</th>
               <td><input type="password" name="pw2" id="pw2" placeholder="4~12자의 영문,숫자 조합">
            </tr>
            <tr>
               <th>이메일 주소</th>
               <td><input type="text" name="email" id="email" placeholder="이메일 주소를 입력해주세요. ">
            </tr>
         </table>
         <br><br>
      </div>
      
      <h3><b>2. 약관동의 및 정보활용동의</b></h3>
      <h5>
         충무로영화관 서비스 이용을 위한 약관을   동의해주세요.&emsp;
         <input type="button" class="check" onClick="window.open('more.jsp')" value=" 자세히 보기 " style="width: 100px;"/><br> 
      </h5>
      <br>
      <div id="checks">
            <input type="checkbox" id="all"> 필수항목 전체동의 <br>
            <input type="checkbox" class="chk" name="agrees" id="service"> 서비스 이용약관동의(필수)<br>
            <input type="checkbox" class="chk" name="agrees" id="personal"> 개인정보 수집 및 이용동의(필수)<br> 
            <input type="checkbox" class="chk" name="agrees" id="marketing" value="marketing"> 마케팅 활용을 위한 개인정보 수집 이용<br>
      </div>
      <br><br>
      &emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;
      &emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;
      <input type="submit" class="find_s" value="회원가입">&emsp;
      <input type="reset" class="find_s" value="취소">
   </form>
   </div>
=======
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
	<br>
	<div id="box_s">
		<div id="title_s">&nbsp;&nbsp;회 원 가 입</div>
		<form id="signin_form" method="post" action="signin-db.jsp">
		<h3><b>1. 회원정보 입력</b></h3>
		<h5>회원정보를 입력해주세요.</h5>
		<div>
			<table id="body1_s">
				<tr>
					<th>이름</th>
					<td><input type="text" name="name" id="name" placeholder="이름"></td>				
				</tr>
				<tr>
					<th>생년월일</th>
					<td><input type="text" name="birth" id="birth" placeholder="생년월일 8자리"></td>
				</tr>
				<tr>
					<th>아이디</th>
					<td><input type="text" name="id" id="id" placeholder="4~12자의 영문,숫자 조합 "> &emsp;
						<input type="button"  id="idcheck" class="check" value="중복확인" style="width: 70px;"></td>
				</tr>
				<tr>
					<th>비밀번호</th>
					<td><input type="password" name="pw" id="pw" placeholder="4~12자의 영문,숫자 조합">
				</tr>
				<tr>
					<th>비밀번호 확인</th>
					<td><input type="password" name="pw2" id="pw2" placeholder="4~12자의 영문,숫자 조합">
				</tr>
				<tr>
					<th>이메일 주소</th>
					<td><input type="text" name="email" id="email" placeholder="이메일 주소를 입력해주세요. ">
				</tr>
			</table>
			<br><br>
		</div>
		
		<h3><b>2. 약관동의 및 정보활용동의</b></h3>
		<h5>
			충무로영화관 서비스 이용을 위한 약관을	동의해주세요.&emsp;
			<input type="button" class="check" onClick="window.open('more.jsp')" value=" 자세히 보기 " style="width: 100px;"/><br> 
		</h5>
		<br>
		<div id="checks">
				<input type="checkbox" id="all"> 필수항목 전체동의 <br>
				<input type="checkbox" class="chk" name="agrees" id="service"> 서비스 이용약관동의(필수)<br>
				<input type="checkbox" class="chk" name="agrees" id="personal"> 개인정보 수집 및 이용동의(필수)<br> 
				<input type="checkbox" class="chk" name="agrees" id="marketing" value="marketing"> 마케팅 활용을 위한 개인정보 수집 이용<br>
		</div>
		<br><br>
		&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;
		&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;
		<input type="submit" class="find_s" value="회원가입">&emsp;
		<input type="reset" class="find_s" value="취소">
	</form>
	</div>
>>>>>>> branch 'maiin' of https://github.com/choieunii/webproject.git
</body>
</html>