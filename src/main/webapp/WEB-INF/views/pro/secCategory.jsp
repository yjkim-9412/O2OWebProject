<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="<%=request.getContextPath() %>/resources/js/jquery-3.5.1.min.js"></script>
<script type="text/javascript">
$(document).ready(function(){
	$('#next').submit(function(){
<<<<<<< HEAD
		if($("input:radio[name='selcat_num']:checked").length==0){
			$('#seldiv').html("옵션을 선택해주세요.");
=======
		if(document.fr.selcat_num[0].checked==false && document.fr.selcat_num[1].checked==false&&document.fr.selcat_num[2].checked==false){
			$('#seldiv').html("선택해주세요.");
>>>>>>> cf2224b3a454540a38e5855afa6f83490cc97ff4
			$('#seldiv').css("color","red");
			$('#selcat_num').focus();
			return false;
		} else  {
			$('#seldiv').html("");
		}
	});
});
</script>
<<<<<<< HEAD
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
label{
	cursor: pointer;
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
</style>
</head>
<body>
<form action="<%=request.getContextPath()%>/pro/lessonPro" method="get" name="fr" id="next">
<div id="divhead"><h1>어떤 서비스를 제공할 수 있나요?</h1></div>
<div id="divbody">
<ul>
<div class="sel"><label for="selcat_num1"><li><input type="radio" id="selcat_num1" name="selcat_num" value="5">음악레슨<br></li></label></div>
<div class="sel"><label for="selcat_num2"><li><input type="radio" id="selcat_num2" name="selcat_num" value="2">언어<br></li></label></div>
<div class="sel"><label for="selcat_num3"><li><input type="radio" id="selcat_num3" name="selcat_num" value="1">개인PT<br></li></label></div>
</ul>
<div id="seldiv"></div>
</div>
<div id="footer">
<input class="btn-two rounded" type="button" name="" value="이전" onclick="history.back()" >
<input class="btn-two rounded submit" type="submit" name="" value="다음" id="next">
</div>
=======
</head>
<body>
<form action="<%=request.getContextPath()%>/pro/lessonPro" method="get" name="fr" id="next">
<!-- value값을 담을 배열 자바에서 선언, 배열을 읽어와서 선택값 비교할수있게 -->
<input type="radio" name="selcat_num" value="5">음악레슨<br>
<input type="radio" name="selcat_num" value="2">언어<br>
<input type="radio" name="selcat_num" value="1">개인PT<br>
<div id="seldiv"></div>
<!-- <input type="checkbox" name="selcat_num" value="5">음악레슨<br> -->
<!-- <input type="checkbox" name="selcat_num" value="2">언어<br> -->
<!-- <input type="checkbox" name="selcat_num" value="1">개인PT<br> -->
<input type="button" name="" value="이전"> <!-- history.back -->
<input type="submit" name="" value="다음" id="next"> <!-- 선택값 가지고 이동  -->
>>>>>>> cf2224b3a454540a38e5855afa6f83490cc97ff4
</form>
</body>
</html>