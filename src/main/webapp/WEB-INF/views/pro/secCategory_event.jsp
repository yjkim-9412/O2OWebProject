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
<form action="<%=request.getContextPath()%>/pro/eventPro" method="get" name="fr" id="next">
<input type="radio" name="selcat_num" value="12">파티,행사계획<br>
<input type="radio" name="selcat_num" value="13">행사MC<br>
<input type="radio" name="selcat_num" value="14">영상편집<br>
<div id="seldiv"></div>
<input type="button" name="" value="이전" onclick="history.back()" >
<input type="submit" name="" value="다음" id="next">
</form>
</body>
</html>