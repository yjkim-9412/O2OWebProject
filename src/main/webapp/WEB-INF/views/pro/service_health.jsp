<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<script type="text/javascript" src="<%=request.getContextPath() %>/resources/js/jquery-3.5.1.min.js"></script>
<script type="text/javascript">
function fun() {
	if(${deliv}==1){
		document.getElementById("deliv_sel").setAttribute("style","display:block");
	}
	if(${health}==1){
		document.getElementById("health_sel").setAttribute("style","display:block");
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
<!-- value값을 담을 배열 자바에서 선언, 배열을 읽어와서 선택값 비교할수있게 -->
<!-- 여기서는 목적을 넣기 -->
<label for="music_sel" style="display: none;" id="deliv_sel">
<input type="radio" name="sel" value="56">반찬 배달<br>
<input type="radio" name="sel" value="57">도시락 배달<br>
</label>

<label for="lang_sel" style="display: none;" id="health_sel">
<input type="radio" name="sel" value="6">PT<br>
<input type="radio" name="sel" value="16">헬스<br>
<input type="radio" name="sel" value="17">크로스핏<br>
<input type="radio" name="sel" value="18">요가<br>
<input type="radio" name="sel" value="19">필라테스<br>
</label>
<div id="seldiv"></div>
<input type="button" name="" value="이전" onclick="history.back()"> <!-- history.back -->
<input type="submit" name="" value="다음"> <!-- 선택값 가지고 이동  -->
</form>
</body>
</html>
