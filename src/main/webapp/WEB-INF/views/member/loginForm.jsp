<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
 <script src="https://developers.kakao.com/sdk/js/kakao.js"></script>
    <script>
        Kakao.init('JAVASCRIPT_KEY');
        Kakao.isInitialized();
        console.log(Kakao.isInitialized());

    </script>
<meta charset="UTF-8">
<title>member/loginForm.jsp</title>
</head>
<body>
<form action="<%=request.getContextPath() %>/member/loginPro" method="post">
아이디 : <input type="text" name="id"><br>
비밀번호 : <input type="password" name="password"><br>
<input type="submit" value="로그인">
</form>
</body>
</html>