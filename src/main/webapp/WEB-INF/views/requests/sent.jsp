<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>내가 받은 견적</h1>
<c:forEach var="estimates_id" items="${estimatesList }">
	<a>요청서 아이디 : ${estimates_id.id }</a><br>
</c:forEach>
</body>
</html>