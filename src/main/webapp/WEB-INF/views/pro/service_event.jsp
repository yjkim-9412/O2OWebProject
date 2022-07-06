<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<script type="text/javascript" src="<%=request.getContextPath() %>/resources/js/jquery-3.5.1.min.js"></script>
<script type="text/javascript">
function fun() {
	if(${party}==1){
		document.getElementById("party_sel").setAttribute("style","display:block");
	}
	if(${mc}==1){
		document.getElementById("mc_sel").setAttribute("style","display:block");
	}
	if(${vidio}==1){
		document.getElementById("vidio_sel").setAttribute("style","display:block");
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

<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body onload="fun()">
<form action="<%=request.getContextPath()%>/pro/address" name="fr" id="next">
<input type="hidden" name="services_id" value="${services_id}">
<label for="music_sel" style="display: none;" id="party_sel">
<input type="radio" name="sel" value="45">개인 행사<br>
<input type="radio" name="sel" value="46">기업 행사<br>
<input type="radio" name="sel" value="47">지역 행사<br>
<input type="radio" name="sel" value="48">홍보 행사<br>
<input type="radio" name="sel" value="49">강연/간담회<br>
</label>

<label for="lang_sel" style="display: none;" id="mc_sel">
<input type="radio" name="sel" value="39">돌잔치<br>
<input type="radio" name="sel" value="40">환갑/칠순잔치<br>
<input type="radio" name="sel" value="41">동창회<br>
<input type="radio" name="sel" value="42">야유회/워크샵<br>
<input type="radio" name="sel" value="43">송년회/신년<br>
</label>

<label for="dan_sel" style="display: none;" id="vidio_sel">
<input type="radio" name="sel" value="53">개인 영상<br>
<input type="radio" name="sel" value="54">상업 영상<br>
<input type="radio" name="sel" value="55">기업 영상<br>
</label>
<div id="seldiv"></div>
<input type="button" name="" value="이전" onclick="history.back()">
<input type="submit" name="" value="다음"> 
</form>
</body>
</html>
