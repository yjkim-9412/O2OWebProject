<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<script type="text/javascript" src="<%=request.getContextPath() %>/resources/js/jquery-3.5.1.min.js"></script>
<script type="text/javascript">
function fun() {
	if(${air}==1){
		document.getElementById("air_sel").setAttribute("style","display:block");
	}
	if(${mold}==1){
		document.getElementById("mold_sel").setAttribute("style","display:block");
	}
	if(${move}==1){
		document.getElementById("move_sel").setAttribute("style","display:block");
	}
	if(${bed}==1){
		document.getElementById("bed_sel").setAttribute("style","display:block");
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
<label for="music_sel" style="display: none;" id="air_sel">
<input type="radio" name="sel" value="71">가정용<br>
<input type="radio" name="sel" value="72">업소용<br>
</label>

<label for="lang_sel" style="display: none;" id="mold_sel">
<input type="radio" name="sel" value="73">방<br>
<input type="radio" name="sel" value="74">거실<br>
<input type="radio" name="sel" value="75">베란다/다용도실<br>
<input type="radio" name="sel" value="76">화장실/욕실<br>
<input type="radio" name="sel" value="77">가구(침대/옷장/소파 등)<br>
<input type="radio" name="sel" value="78">의류(이불/매트리스 등)<br>
</label>

<label for="dan_sel" style="display: none;" id="move_sel">
<input type="radio" name="sel" value="79">이상청소<br>
<input type="radio" name="sel" value="80">입주청소<br>
<input type="radio" name="sel" value="81">리모델링 후 청소<br>
</label>

<label for="dan_sel" style="display: none;" id="bed_sel">
<input type="radio" name="sel" value="87">건식 클리닝<br>
<input type="radio" name="sel" value="88">습식 클리닝<br>
</label>
<div id="seldiv"></div>
<input type="button" name="" value="이전" onclick="history.back()"> <!-- history.back -->
<input type="submit" name="" value="다음"> <!-- 선택값 가지고 이동  -->
</form>
</body>
</html>
