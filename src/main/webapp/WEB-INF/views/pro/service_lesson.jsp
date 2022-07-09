<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<script type="text/javascript" src="<%=request.getContextPath() %>/resources/js/jquery-3.5.1.min.js"></script>
<script type="text/javascript">
function fun() {
	if(${music}==1){
		document.getElementById("music_sel").setAttribute("style","display:block");
	}
	if(${lang}==1){
		document.getElementById("lang_sel").setAttribute("style","display:block");
	}
	if(${dan}==1){
		document.getElementById("dan_sel").setAttribute("style","display:block");
	}
}
</script>
<script type="text/javascript">
$(document).ready(function(){
	$('#next').submit(function(){
		if($("input:radio[name='sel']:checked").length==0){
			$('#seldiv').html("선택해주세요.");
			$('#seldiv').css("color","red");
			return false;
		}
	});
});
</script>
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
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body onload="fun()">
<form action="<%=request.getContextPath()%>/pro/address" name="fr" id="next">
<input type="hidden" name="services_id" value="${services_id}">
<div id="divhead"><h1>구체적으로 무슨 서비스를 제공할 수 있나요?</h1></div>
<div id="divbody">
<label style="display: none;" id="music_sel">
<ul>
<div class="sel"><label for="selcat_num1"><li><input type="radio" id="selcat_num1" name="sel" value="7">보컬<br></li></label></div>
<div class="sel"><label for="selcat_num2"><li><input type="radio" id="selcat_num2" name="sel" value="8">피아노<br></li></label></div>
<div class="sel"><label for="selcat_num3"><li><input type="radio" id="selcat_num3" name="sel" value="9">드럼<br></li></label></div>
<div class="sel"><label for="selcat_num4"><li><input type="radio" id="selcat_num4" name="sel" value="10">베이스<br></li></label></div>
<div class="sel"><label for="selcat_num5"><li><input type="radio" id="selcat_num5" name="sel" value="11">어쿠스틱기타<br></li></label></div>
<div class="sel"><label for="selcat_num6"><li><input type="radio" id="selcat_num6" name="sel" value="12">일렉기타<br></li></label></div>
</ul>
</label>

<label style="display: none;" id="lang_sel">
<ul>
<div class="sel"><label for="selcat_num7"><li><input type="radio" id="selcat_num7" name="sel" value="20">한국어<br></li></label></div>
<div class="sel"><label for="selcat_num8"><li><input type="radio" id="selcat_num8" name="sel" value="21">일본어<br></li></label></div>
<div class="sel"><label for="selcat_num9"><li><input type="radio" id="selcat_num9" name="sel" value="22">중국어<br></li></label></div>
<div class="sel"><label for="selcat_num10"><li><input type="radio" id="selcat_num10" name="sel" value="23">영어<br></li></label></div>
</ul>
</label>

<label style="display: none;" id="dan_sel">
<ul>
<div class="sel"><label for="selcat_num11"><li><input type="radio" id="selcat_num11" name="sel" value="1">웨이트트레이닝<br></li></label></div>
<div class="sel"><label for="selcat_num12"><li><input type="radio" id="selcat_num12" name="sel" value="2">필라테스<br></li></label></div>
<div class="sel"><label for="selcat_num13"><li><input type="radio" id="selcat_num13" name="sel" value="3">요가<br></li></label></div>
</ul>
</label>

<div id="seldiv"></div>
</div>
<div id="footer">
<input class="btn-two rounded" type="button" name="" value="이전" onclick="history.back()" >
<input class="btn-two rounded submit" type="submit" name="" value="다음" id="next">
</div>
</form>
</body>
</html>
