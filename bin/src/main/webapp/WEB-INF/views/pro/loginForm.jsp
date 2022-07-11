<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>pro/loginForm.jsp</title>
</head>
<body>
<form action="<%=request.getContextPath() %>/pro/loginPro" method="post">
이메일  <input type="email" name="email"> <br>
비밀번호 : <input type="password" name="password"><br>
<input type="submit" value="로그인">
</form>
</body>
</html>