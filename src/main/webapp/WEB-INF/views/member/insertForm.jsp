<%@page import="javax.swing.text.Document"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html>
<head>

  <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

<meta charset="UTF-8">

<title>member/insertForm.jsp</title>

<style type="text/css">


body#insertForm{  background-repeat:no-repeat; background-position:center; background-size:cover; padding:10px;}

.form-heading { color:#fff; font-size:23px;}
.panel h2{ color:#444444; font-size:18px; margin:0 0 8px 0;}
.panel p { color:#777777; font-size:14px; margin-bottom:30px; line-height:24px;}
.insert-form .form-control {
  background: #f7f7f7 none repeat scroll 0 0;
  border: 1px solid #d4d4d4;
  border-radius: 4px;
  font-size: 14px;
  height: 50px;
  line-height: 50px;
}

#img1 {
  position : absolute;
  width: 17px;
  top: 10px;
  
  margin: 0;
}


.main-div {
  background: #ffffff none repeat scroll 0 0;
  border-radius: 2px;
  margin: 10px auto 30px;
  max-width: 38%;
  padding: 50px 70px 70px 71px;
}

.insert-form .form-group {
  margin-bottom:10px;
}
.login-form{ text-align:center;}
.forgot a {
  color: #777777;
  font-size: 14px;
  text-decoration: underline;
}
.insert-form  .btn.btn-primary  {
  background: #f0ad4e none repeat scroll 0 0;
  border-color: #f0ad4e;
  color: #ffffff;
  font-size: 14px;
  width: 100%;
  height: 50px;
  line-height: 50px;
  padding: 0;
}


.botto-text {
  color: #ffffff;
  font-size: 14px;
  margin: auto;
}
.insert-form .btn.btn-primary.reset  {
  background: #ff9900 none repeat scroll 0 0;
}
.back { text-align: left; margin-top:10px;}
.back a {color: #444444; font-size: 13px;text-decoration: none;}

.kaimg {

 width: 100%;
  height: 50px;
  
  padding: 0px 0px 0px 0px;
font-size: 14px;

	
}



</style>
    
</head>

<body id="insertForm">


<div class="container">

<div class="insert-form">
<div class="main-div">
    <div class="panel">
    <h1>마루 가입하기</h2>
    





<script type="text/javascript" src="<%=request.getContextPath() %>/resources/js/jquery-3.5.1.min.js"></script>
<script type="text/javascript">



$(document).ready(function(){
	
	$('#insert').submit(function() {
	
		
		
		
		if($('#id').val()==""){
			$('#iddiv').html("아이디를 입력해주세요.");
			$('#iddiv').css("color","red");
			$('#id').focus();
			return false;
		} else  {
			$('#iddiv').html("");
		}
		
		if($('#email').val()==""){
			
			$('#emaildiv').html("이메일을 입력해주세요.");
			$('#emaildiv').css("color","red");
			$('#email').focus();
			return false;
		} else {
			$('#emaildiv').html("");
		}
		

	
		
		
		
		
		if($('#password').val()==""){
			$('#passworddiv').html("비밀번호를 입력해주세요.");
			$('#passworddiv').css("color","red");
			$('#password').focus();
			return false;
		}  else {
			$('#passworddiv').html("");
		}
			
		
		
		if($('#name').val()==""){
			$('#namediv').html("이름을 입력해주세요.");
			$('#namediv').css("color","red");
			$('#name').focus();
			return false;
		} else {
			$('#namediv').html("");
		}
		

		
	});
});
</script>

<form action="<%=request.getContextPath() %>/member/insertPro" id="insert" method="post">
<div class="insert-group">

<div class="form-group">
<label> 아이디 </label> <br>
 <input type="text" name="id" id="id" class="form-control" placeholder=""><br>
 <div id="iddiv"> </div>
 </div>
 
 <div class="form-group">
<label> 이메일  </label> <br>
<input type="email" name="email" id="email" class="form-control" placeholder="이메일을 입력해주세요."> <br>
<div id="emaildiv"> </div>
</div>

<div class="form-group">
<label> 비밀번호 </label> <br>
 <input type="password" name="password" id="password" class="form-control" placeholder="비밀번호를 입력해주세요."><br>
 <div id="passworddiv"> </div>
 </div>
 
 <div class="form-group">
<label> 이름 </label> <br>
<input type="text" name="name" id="name" class="form-control" placeholder="이름(실명)을 입력해주세요."><br>
<div id="namediv"> </div>
</div>

<input type="submit" class="btn btn-primary " value="회원가입"> <br>
	<br>
	
	
		<!-- 카카오 로그인 -->
	<a href="https://kauth.kakao.com/oauth/authorize?client_id=b28c257d1c3a9f7b60f4ede210556e5a&redirect_uri=http://localhost:8080/myweb2/member/main&response_type=code">	
		<img src="<%=request.getContextPath() %>/resources/img/kakao_login.png" id="kaimg" class="kaimg">
	</a>
	

</form>
</div>
</div>
</div>
</div>

</body>
</html>