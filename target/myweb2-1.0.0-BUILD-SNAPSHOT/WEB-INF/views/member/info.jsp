<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>member/info.jsp</title>
</head>
<body>
<!-- 표현언어 EL 연산자 , 출력, 내장객체-->
<!-- model.addAttribute("memberDTO", memberDTO); -->
<img src="<%=request.getContextPath() %>/resources/img/1.jpg" style="width: 100px; height: 100px;"><br>

아이디 : ${memberDTO.id} <br>
비밀번호 : ${memberDTO.password}<br>
이름 : ${memberDTO.name}<br>
가입날짜 : ${memberDTO.date }<br>

	
<a href="<%=request.getContextPath()%>/member/main">메인으로</a>
</body>
</html>