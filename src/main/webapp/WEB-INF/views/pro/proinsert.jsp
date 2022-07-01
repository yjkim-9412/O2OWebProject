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
			if($('#pass').val()==""){
				$('#passworddiv').html("비밀번호를 입력해주세요.");
				$('#passworddiv').css("color","red");
				$('#pass').focus();
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
			if(document.fr.gender[0].checked==false && document.fr.gender[1].checked==false){
				$('#genderdiv').html("성별을 선택해주세요.");
				$('#genderdiv').css("color","red");
				$('#gender').focus();
				return false;
			} else  {
				$('#genderdiv').html("");
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
</script>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form action="<%=request.getContextPath() %>/pro/ok" method="post" name="fr" id="join">
<input type="hidden" value="${serviceId}" name="serviceId">

이메일<br>
<input type="email" name="email" id="email"><input type="button" id="dup" value="중복체크"><br>
<div id="emaildiv"></div><div id="dupdiv"></div><br>
비밀번호<br>
<input type="password" name="pass" id="pass"><br>
<div id="passworddiv"></div><br>
이름<br>
<input type="text" name="name" id="name"><br>
<div id="namediv"></div><br>
연락처<br>
<input type="tel" name="phone" id="phone"><br>
<div id="phonediv"></div><br>
성별<br>
<input type="radio" name="gender" value="1" id="gender">남자
<input type="radio" name="gender" value="2" id="gender">여자<br>
<div id="genderdiv"></div><br>
<input type="submit" value="회원가입" id="join">
</form>
</body>
</html>