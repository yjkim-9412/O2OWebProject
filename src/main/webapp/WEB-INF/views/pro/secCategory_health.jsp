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
		if($("input:radio[name='selcat_num']:checked").length==0){
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
<form action="<%=request.getContextPath()%>/pro/healthPro" method="get" name="fr" id="next">
<!-- value값을 담을 배열 자바에서 선언, 배열을 읽어와서 선택값 비교할수있게 -->
<input type="radio" name="selcat_num" value="3">반찬/도시락 배달<br>
<input type="radio" name="selcat_num" value="4">운동<br>
<div id="seldiv"></div>
<input type="button" name="" value="이전" onclick="history.back()" > <!-- history.back -->
<input type="submit" name="" value="다음" id="next"> <!-- 선택값 가지고 이동  -->
</form>
</body>
</html>