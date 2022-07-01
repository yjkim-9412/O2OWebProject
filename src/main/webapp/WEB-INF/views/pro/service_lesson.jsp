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
<script type="text/javascript">
// alert($("[type=radio]").length);
// for(int i=0;i<$(input:radio[name='sel']).length;i++)
$(document).ready(function(){
	var count=0;
	$('#next').submit(function(){
		$('[type=radio]').each(function(index){
			if((document.fr.sel[index]).checked==true){
				count++;
			}
		});
		if(count==0){
			$('#seldiv').html("선택해주세요.");
			$('#seldiv').css("color","red");
		}else{
			$('#seldiv').html("");
		}
	});
});


// $(document).ready(function(){
// 	$('#next').submit(function(){
// 		if(document.fr.selcat_num[0].checked==false && document.fr.selcat_num[1].checked==false&&document.fr.selcat_num[2].checked==false){
// 			$('#seldiv').html("선택해주세요.");
// 			$('#seldiv').css("color","red");
// 			$('#selcat_num').focus();
// 			return false;
// 		} else  {
// 			$('#seldiv').html("");
// 		}
// 	});
// });
</script>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body onload="fun()">
<form action="<%=request.getContextPath()%>/pro/address" name="fr">
<input type="hidden" name="serviceId" value="${serviceId}">
<!-- value값을 담을 배열 자바에서 선언, 배열을 읽어와서 선택값 비교할수있게 -->
<!-- 여기서는 목적을 넣기 -->
<label for="music_sel" style="display: none;" id="music_sel">
<input type="radio" name="sel" value="7">보컬<br>
<input type="radio" name="sel" value="8">피아노<br>
<input type="radio" name="sel" value="9">드럼<br>
<input type="radio" name="sel" value="10">베이스<br>
<input type="radio" name="sel" value="11">어쿠스틱기타<br>
<input type="radio" name="sel" value="12">일렉기타<br>
</label>

<label for="lang_sel" style="display: none;" id="lang_sel">
<input type="radio" name="sel" value="20">한국어<br>
<input type="radio" name="sel" value="21">일본어<br>
<input type="radio" name="sel" value="22">중국어<br>
<input type="radio" name="sel" value="23">영어<br>
</label>

<label for="dan_sel" style="display: none;" id="dan_sel">
<input type="radio" name="sel" value="1">웨이트트레이닝<br>
<input type="radio" name="sel" value="2">필라테스<br>
<input type="radio" name="sel" value="3">요가<br>
</label>
<div id="seldiv"></div>
<!-- <label for="music_sel" style="display: none;" id="music_sel"> -->
<!-- <input type="checkbox" name="sel" value="0">보컬<br> -->
<!-- <input type="checkbox" name="sel" value="1">피아노<br> -->
<!-- <input type="checkbox" name="sel" value="2">드럼<br> -->
<!-- <input type="checkbox" name="sel" value="2">베이스<br> -->
<!-- <input type="checkbox" name="sel" value="2">어쿠스틱기타<br> -->
<!-- <input type="checkbox" name="sel" value="2">일렉기타<br> -->
<!-- </label> -->

<!-- <label for="lang_sel" style="display: none;" id="lang_sel"> -->
<!-- <input type="checkbox" name="sel" value="10">한국어<br> -->
<!-- <input type="checkbox" name="sel" value="11">일본어<br> -->
<!-- <input type="checkbox" name="sel" value="12">중국어<br> -->
<!-- <input type="checkbox" name="sel" value="13">영어<br> -->
<!-- </label> -->

<!-- <label for="dan_sel" style="display: none;" id="dan_sel"> -->
<!-- <input type="checkbox" name="sel" value="20">웨이트트레이닝<br> -->
<!-- <input type="checkbox" name="sel" value="21">필라테스<br> -->
<!-- <input type="checkbox" name="sel" value="22">요가<br> -->
<!-- </label> -->
<input type="button" name="" value="이전" onclick="fun()"> <!-- history.back -->
<input type="submit" name="" value="다음" id="next"> <!-- 선택값 가지고 이동  -->
</form>
</body>
</html>
