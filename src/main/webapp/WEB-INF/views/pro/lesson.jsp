<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form action="<%=request.getContextPath()%>/pro/lessonPro" method="get">
<!-- value값을 담을 배열 자바에서 선언, 배열을 읽어와서 선택값 비교할수있게 -->
<input type="checkbox" name="selcat_num" value="0">음악레슨<br>
<input type="checkbox" name="selcat_num" value="1">언어<br>
<input type="checkbox" name="selcat_num" value="2">댄스<br>
<input type="button" name="" value="이전"> <!-- history.back -->
<input type="submit" name="" value="다음"> <!-- 선택값 가지고 이동  -->
</form>
</body>
</html>