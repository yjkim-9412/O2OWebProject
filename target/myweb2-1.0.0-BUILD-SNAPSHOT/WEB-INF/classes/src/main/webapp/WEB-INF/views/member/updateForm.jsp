<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>member/updateForm.jsp</title>
</head>
<body>

<form action="<%=request.getContextPath() %>/member/updatePro" method="post">
아이디 : <input type="text" name="id" value="${memberDTO.id }" readonly><br>
비밀번호 : <input type="password" name="pass"><br>
이름 : <input type="text" name="name" value="${memberDTO.name }"><br>
<input type="submit" value="회원정보수정">
</form>	
	
<a href="<%=request.getContextPath() %>/member/main">메인으로</a>
</body>
</html>