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
<form action="<%=request.getContextPath()%>/pro/cleanPro" method="get" name="fr" id="next">
<input type="radio" name="selcat_num" value="7">에어컨<br>
<input type="radio" name="selcat_num" value="8">곰팡이<br>
<input type="radio" name="selcat_num" value="9">이사/입주<br>
<input type="radio" name="selcat_num" value="10">침대/매트리스<br>
<div id="seldiv"></div>
<input type="button" name="" value="이전" onclick="history.back()" >
<input type="submit" name="" value="다음" id="next"> 
</form>
</body>
</html>