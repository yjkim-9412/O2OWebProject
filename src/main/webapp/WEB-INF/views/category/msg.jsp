<%--
  Created by IntelliJ IDEA.
  User: itwill
  Date: 2022-07-14
  Time: 오후 12:09
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
</head>
<body>
<script type="text/javascript">
    alert("로그인이 필요한 서비스입니다.");
    location.href = "<%=request.getContextPath() %>/member/login";
</script>
</body>
</html>
