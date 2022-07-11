<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<style type="text/css">
html{
/* border: 1px black solid; */
box-shadow: 1.25rem 0 1.25rem 0 rgb(0 0 0 / 30%);
background-color: rgb(211,211,211);
}
li{
list-style-type: none;
margin-top: 10px;
font-size: 1.5em;
}
label{
	display: block;
}
#footer{
height: auto;
position: fixed;
bottom: 10px;
right: 10px;
}
#divhead{
margin: 10px 0;
height: auto;
text-align: center;
border-bottom: 1px black hidden;
}
#divbody{
height:auto; 
margin-bottom: 5px;
background-color: white; border: 1px solid #222; border-radius: 5px;
	padding: 20px; margin: 30px auto; width: 400px;
}
.rounded {
  border-radius: 10px;
}
.btn {
  position: relative;
  border: 0;
  padding: 15px 25px;
  display: inline-block;
  text-align: center;
  color: green;
}
.btn:active {
  top: 4px; 
}
.btn-two {
  color: green; 
  padding: 15px 25px;
  display: inline-block;
  border: 1px solid rgba(0,0,0,0.21);
  border-bottom-color: rgba(0,0,0,0.34);
  text-shadow:0 1px 0 rgba(0,0,0,0.15);
  box-shadow: 0 1px 0 rgba(255,255,255,0.34) inset, 
              0 2px 0 -1px rgba(0,0,0,0.13), 
              0 3px 0 -1px rgba(0,0,0,0.08), 
              0 3px 13px -1px rgba(0,0,0,0.21);
}
.btn-two:active {
  top: 1px;
  border-color: rgba(0,0,0,0.34) rgba(0,0,0,0.21) rgba(0,0,0,0.21);
  box-shadow: 0 1px 0 rgba(255,255,255,0.89),0 1px rgba(0,0,0,0.05) inset;
  position: relative;
}
.submit{
	background-color: #9abf7f;
	color: white;
}
.sel:nth-child(odd) {
	background-color: rgb(234,234,234);
}
.sel:nth-child(even) {
	background-color: rgb(189,189,189);
}
.ipty{
	width:50%;
    border: 1px solid #bbb;
    border-radius: 8px;
    padding: 10px 12px;
    font-size: 12px;
    margin-right: 8px;
}
.btna{
	width: 146px;
	height: 40px;
	color: black;
	padding: 0px;
}
.lab{
	margin-left: 7px;
	font-size: 1.2em;
	font-weight: bold;
}
</style>
<script type="text/javascript" src="<%=request.getContextPath() %>/resources/js/jquery-3.5.1.min.js"></script>
<script type="text/javascript">
var code = "";

$(document).ready(function(){
		$('#join').submit(function(){
			if($('#email').val()==""){
				$('#emaildiv').html("이메일을 입력해주세요.");
				$('#emaildiv').css("color","red");
				$('#email').focus();
				return false;
			} else  {
				$('#emaildiv').html("");
			}

			if($('#password').val()==""){
				$('#passworddiv').html("비밀번호를 입력해주세요.");
				$('#passworddiv').css("color","red");
				$('#password').focus();
				return false;
			} else  {
				$('#passworddiv').html("");
			}
			if($('#name').val()==""){
				$('#namediv').html("이름을 입력해주세요.");
				$('#namediv').css("color","red");
				$('#name').focus();
				return false;
			} else  {
				$('#namediv').html("");
			}
			if($('#phone').val()==""){
				$('#phonediv').html("전화번호를 입력해주세요.");
				$('#phonediv').css("color","red");
				$('#phone').focus();
				return false;
			} else  {
				$('#phonediv').html("");
			}

			if(document.fr.gender_id[0].checked==false && document.fr.gender_id[1].checked==false){
				$('#genderdiv').html("성별을 선택해주세요.");
				$('#genderdiv').css("color","red");
				$('#gender').focus();
				return false;
			} else  {
				$('#genderdiv').html("");
			}
			
			if($('#mail-check-input').val()!=code){
				$('#mail-check-warn').focus();
				return false;
			}
			document.fr.target="_parent";
			document.fr.submit();
		});
	});
	
$(document).ready(function(){
	$('#dup').click(function(){
		$.ajax({
			url:'${pageContext.request.contextPath}/pro/dupcheck',
			data:{'email':$('#email').val()},
			success:function(rdata){
				if(rdata=="emaildup"){
					rdata="이메일 중복 사용불가능";
				}else{
					rdata="이메일 사용가능";
				}
				$('#dupdiv').html(rdata);
			}
		});
	});
});

$(document).ready(function(){
	$('#mail-Check-Btn').click(function(){
	    
	    var email = $('#email').val();        // 입력한 이메일
	    var cehckBox = $('#mail-check-input'); 
	    $.ajax({
	        type:'GET',
	        url:'${pageContext.request.contextPath}/pro/mailCheck?email=' + email,
			success:function(data){
				cehckBox.attr("disabled",false);
				code = data;
	        }     
    	});
	});
	$('#mail-check-input').blur(function(){
	    
	    var inputCode = $('#mail-check-input').val();        // 입력코드    
	    
	    if(inputCode == code){                            // 일치할 경우
	    	$('#mail-check-warn').html("인증번호가 일치합니다.");
	    } else {                                            // 일치하지 않을 경우
	    	$('#mail-check-warn').html("인증번호를 다시 확인해주세요.");
	    }  
	        
	});
});
</script>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form action="<%=request.getContextPath() %>/pro/ok" method="post" name="fr" id="join">
<input type="hidden" value="${services_id}" name="services_id">

<label class="lab">이메일</label><br>
<input class="ipty" type="email" name="email" id="email"><input class="btn-two rounded btna" type="button" id="dup" value="중복체크"><br>
<div id="emaildiv"></div><div id="dupdiv"></div>
<input class="ipty" type="text" id="mail-check-input" placeholder="인증번호 6자리를 입력해주세요!" disabled="disabled" maxlength="6"><input class="btna btn-two rounded" type="button" id="mail-Check-Btn" value="인증번호보내기"><br>
<div id="mail-check-warn"></div><br>

<label class="lab">비밀번호</label><br>
<input class="ipty" type="password" name="password" id="password"><br>
<div id="passworddiv"></div><br>

<label class="lab">이름</label><br>
<input class="ipty" type="text" name="name" id="name"><br>
<div id="namediv"></div><br>

<label class="lab">연락처</label><br>
<input class="ipty" type="tel" name="phone" id="phone"><br>
<div id="phonediv"></div><br>

<label class="lab">성별</label><br>
<input type="radio" name="gender_id" value="1" id="gender_id">남자
<input type="radio" name="gender_id" value="2" id="gender_id">여자<br>
<div id="genderdiv"></div><br>

<div id="footer">
<input class="btn-two rounded" type="button" name="" value="이전" onclick="history.back()" >
<input class="btn-two rounded submit" type="submit" name="" value="회원가입" id="join">
</div>
</form>
</body>
</html>