<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>jsp5/list.jsp</title>
</head>
<body>
<!-- model.addAttribute("boardList", boardList); -->
<!-- model.addAttribute("pageDTO", pageDTO); -->
<h1>글목록</h1>
<%-- <c:forEach var="estimateDTO" items="${estimateDTO }" varStatus="status"> --%>
<!-- <table border="1"> -->
<!-- <tr><td>프로아이디</td><td>회원아이디</td><td>주소아이디</td><td>설문지번호</td><td>질문번호</td><td>답변번호</td><td>서비스번호</td><td>질문내용</td><td>답변내용</td></tr> -->
<%-- <tr><td>${estimateDTO.pro_id }</td><td>${estimateDTO.account_id }</td><td>${estimateDTO.address_id }</td> --%>
<%-- 	<td>${estimateDTO.estimates_id }</td><td>${estimateDTO.question_id }</td> --%>
<%--     <td>${estimateDTO.answer_id }</td><td>${estimateDTO.services_id }</td> --%>
<%--     <td>${estimateDTO.question_cont }</td><td>${estimateDTO.answer_cont }</td></tr> --%>
<!-- </table> -->
<%-- </c:forEach> --%>

<c:forEach var="hashmap" items="${hashmap }" varStatus="status">
<table border="1">
<tr><td>설문지번호</td><td>회원아이디</td></tr>
<tr onclick="location.href='<%=request.getContextPath() %>/pro/estimateList?estimates_id?=${hashmap.key }'"><td>${hashmap.key }</td><td>${hashmap.value }</td></tr>

</table>
</c:forEach>

<%-- </c:forEach> --%>

<!-- <table border="1"> -->
<!-- <tr><td>프로아이디</td><td>회원아이디</td><td>주소아이디</td><td>설문지번호</td><td>질문번호</td><td>답변번호</td><td>서비스번호</td><td>질문내용</td><td>답변내용</td></tr> -->
<%-- <c:forEach var="estimateDTO" items="${estimateDTO }"> --%>
<%-- <tr><td>${estimateDTO.pro_id }</td><td>${estimateDTO.account_id }</td><td>${estimateDTO.address_id }</td> --%>
<%-- 	<td>${estimateDTO.estimates_id }</td><td>${estimateDTO.question_id }</td> --%>
<%--     <td>${estimateDTO.answer_id }</td><td>${estimateDTO.services_id }</td> --%>
<%--     <td>${estimateDTO.question_cont }</td><td>${estimateDTO.answer_cont }</td></tr> --%>
<%-- </c:forEach> --%>
<!-- </table> -->

<%-- <c:if test="${pageDTO.startPage > pageDTO.pageBlock }"> --%>
<%-- <a href="${pageContext.request.contextPath}/board/list?pageNum=${pageDTO.startPage-pageDTO.pageBlock }">Prev</a> --%>
<%-- </c:if> --%>

<%-- <c:forEach var="i" begin="${pageDTO.startPage }" end="${pageDTO.endPage }" step="1"> --%>
<%-- 	<a href="${pageContext.request.contextPath}/board/list?pageNum=${i }">${i }</a> --%>
<%-- </c:forEach> --%>

<%-- <c:if test="${pageDTO.endPage < pageDTO.pageCount }"> --%>
<%-- <a href="${pageContext.request.contextPath}/board/list?pageNum=${pageDTO.startPage+pageDTO.pageBlock }">Next</a> --%>
<%-- </c:if> --%>

</body>
</html>
