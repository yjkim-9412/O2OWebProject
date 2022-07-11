<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<style type="text/css">
legend{
width:400px;
border: 1px solid black;
margin-right: 10px;
margin-bottom: 10px;
}
#listid{
	text-align: center;
}
#wrapdiv{
	float: left;
	margin: 10px;
}
#page{
	text-align: center;
	margin-top: 10px;
}
</style>
<title>jsp5/list.jsp</title>
</head>
<body>
<jsp:include page="../inc/top.jsp"></jsp:include>
<h1 id="listid">견적서 리스트</h1>
<c:forEach var="hashmap" items="${hashmap }" varStatus="status">
<div id="wrapdiv" style="display: inline;float: left;">
<c:set var="hash" value="${hashmap.key}"></c:set>
<legend>
<div style="text-align: center;font-size: x-large;font-weight: bolder;">요청 회원 : ${hashmap.value }</div>
<c:forEach var="estimateDTO" items="${estimateDTO}" varStatus="statusest">
<c:if test="${estimateDTO.estimates_id eq hash}">
<div style="font-size: large; font-weight: bold;">질문내용 : ${estimateDTO.question_cont }</div>
<div>답변내용 : ${estimateDTO.answer_cont }</div>
</c:if>
</c:forEach>
<input type="button" value="견적보내기" onclick="location.href='<%=request.getContextPath() %>/pro/proEstimateForm?num=${hashmap.key}&name=${hashmap.value }'">
</legend>
</div>
</c:forEach>


<div id="page" style="clear: left;">
<c:if test="${pageDTO.startPage > pageDTO.pageBlock }">
<a href="${pageContext.request.contextPath}/pro/estimates?pageNum=${pageDTO.startPage-pageDTO.pageBlock }">Prev</a>
</c:if>

<c:forEach var="i" begin="${pageDTO.startPage }" end="${pageDTO.endPage }" step="1">
	<a href="${pageContext.request.contextPath}/pro/estimates?pageNum=${i }">${i }</a>
</c:forEach>

<c:if test="${pageDTO.endPage < pageDTO.pageCount }">
<a href="${pageContext.request.contextPath}/pro/estimates?pageNum=${pageDTO.startPage+pageDTO.pageBlock }">Next</a>
</c:if>
</div>
<jsp:include page="../inc/bottom.jsp"></jsp:include>
</body>
</html>
