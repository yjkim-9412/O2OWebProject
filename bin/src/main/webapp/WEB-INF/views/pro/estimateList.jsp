<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<c:forEach var="estimateDTO" items="${estimateDTO }" varStatus="status">
<table border="1">
<tr><td>${estimateDTO.question_cont }</td><td>${estimateDTO.answer_cont }</td><td>${estimateDTO.account_name }</td></tr>
</table>
</c:forEach>
</body>
</html>