<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
    <script>
        $(document).submit()
    </script>
</head>
<body>
<header>
    <jsp:include page="../inc/top.jsp"/>
</header>
<form action="<%=request.getContextPath() %>/pro/proEstimatePro" method="get">
<input type="hidden" name="estimates_id" value="${estimateDTO.estimates_id}">
<input type="hidden" name="pro_id" value="${estimateDTO.pro_id }">
<input type="hidden" name="account_id" value="${estimateDTO.account_id }">
<input type="text" readonly="readonly" style="font-weight: bold;" value=" ${proDTO.name }"><br>
<input type="text" readonly="readonly" value="${proDTO.service_name }"><br>
<input type="text" readonly="readonly" value="${proDTO.city_name }  ${proDTO.district_name } ${proDTO.addistrict_name }"><br>
<textarea rows="10" cols="10" name="content" style="height:70px;width: 200px"></textarea><br>
<a href="${pageContext.request.contextPath}/pro/info/mail=${sessionScope.email }" >상세보기</a>
<input type="submit" value="견적서 보내기">
</form>
<footer>
    <jsp:include page="../inc/bottom.jsp"/>
</footer>
</body>
</html>