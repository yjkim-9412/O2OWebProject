<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<script type="text/javascript">
// function ok() {
// 	document.fr.target="_parent";
// 	document.fr.submit();
// }
</script>
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

이메일<br>
<input type="email" name="email" id="email"><input type="button" id="dup" value="중복체크"><input type="button" id="mail-Check-Btn" value="인증번호보내기"><br>
<input type="text" id="mail-check-input" placeholder="인증번호 6자리를 입력해주세요!" disabled="disabled" maxlength="6">
<div id="emaildiv"></div><div id="dupdiv"></div><div id="mail-check-warn"></div><br>
비밀번호<br>
<input type="password" name="password" id="password"><br>
<div id="passworddiv"></div><br>
이름<br>
<input type="text" name="name" id="name"><br>
<div id="namediv"></div><br>
연락처<br>
<input type="tel" name="phone" id="phone"><br>
<div id="phonediv"></div><br>
성별<br>
<input type="radio" name="gender_id" value="1" id="gender_id">남자
<input type="radio" name="gender_id" value="2" id="gender_id">여자<br>
<div id="genderdiv"></div><br>
<input type="button" value="이전" onclick="history.back()">
<input type="submit" value="회원가입" id="join">
</form>
</body>
</html>