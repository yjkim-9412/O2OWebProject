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
		if(document.fr.selcat_num[0].checked==false && document.fr.selcat_num[1].checked==false&&document.fr.selcat_num[2].checked==false){
			$('#seldiv').html("선택해주세요.");
			$('#seldiv').css("color","red");
			$('#selcat_num').focus();
			return false;
		} else  {
			$('#seldiv').html("");
		}
	});
});
</script>
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
</form>
</body>
</html>