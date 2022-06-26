<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
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
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body onload="fun()">
<form action="<%=request.getContextPath()%>/pro/address">
<!-- value값을 담을 배열 자바에서 선언, 배열을 읽어와서 선택값 비교할수있게 -->
<!-- 여기서는 목적을 넣기 -->
<label for="music_sel" style="display: none;" id="music_sel">
<input type="checkbox" name="sel" value="0">취미<br>
<input type="checkbox" name="sel" value="1">오디션<br>
<input type="checkbox" name="sel" value="2">입시<br>
</label>

<label for="lang_sel" style="display: none;" id="lang_sel">
<input type="checkbox" name="sel" value="10">자기개발<br>
<input type="checkbox" name="sel" value="11">시험/면접준비<br>
<input type="checkbox" name="sel" value="12">실무 능력 향상<br>
<input type="checkbox" name="sel" value="13">여행/이민 준비<br>
</label>

<label for="dan_sel" style="display: none;" id="dan_sel">
<input type="checkbox" name="sel" value="20">취미/다이어트<br>
<input type="checkbox" name="sel" value="21">공연/장기자랑<br>
<input type="checkbox" name="sel" value="22">오디션 준비<br>
<input type="checkbox" name="sel" value="23">입시<br>
</label>
<input type="button" name="" value="이전" onclick="fun()"> <!-- history.back -->
<input type="submit" name="" value="다음"> <!-- 선택값 가지고 이동  -->
</form>
</body>
</html>
